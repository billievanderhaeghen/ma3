<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT . 'dao' . DS . 'EventDAO.php';

class EventsController extends Controller {

  private $eventDAO;

  function __construct() {
    $this->eventDAO = new EventDAO();
  }

  public function index() {
    $events = $this->eventDAO->selectHomeEvents();
    $this->set('events', $events);
  }

  public function agenda() {

    $tags = $this->eventDAO->selectAllTags();
    $this->set('tags', $tags);

    $events = $this->_searchEvents();

    if (strtolower($_SERVER['HTTP_ACCEPT']) == 'application/json') {
      header('Content-Type: application/json');
      echo json_encode($events);
      exit();
    }

    $this->set('events', $events);

    // $day = $this->eventDAO->selectDayById(2);
    // $this->set('day', $day);

  }

  public function _searchEvents() {
    $conditions = array();

    if( !empty( $_GET["query"]) ){
      // example: search on title
      $conditions[] = array(
        'field' => 'title',
        'comparator' => 'like',
        'value' => $_GET["query"]
      );
    }

    if( !empty( $_GET["postcode"]) ){
      // example: search on title
      $conditions[] = array(
        'field' => 'postal',
        'comparator' => 'like',
        'value' => $_GET["postcode"]
      );
    }

    if( !empty( $_GET["tag"]) ){
      // example: search on title
      $conditions[] = array(
        'field' => 'tag',
        'comparator' => 'like',
        'value' => $_GET["tag"]
      );
    }

    $events = $this->eventDAO->search($conditions);
    return $events;

  }

  public function detail() {
    $conditions = array();

    //example: search on title
    // $conditions[] = array(
    //   'field' => 'title',
    //   'comparator' => 'like',
    //   'value' => 'leie'
    // );

    //example: search on organiser_id
    // $conditions[] = array(
    //   'field' => 'organiser_id',
    //   'comparator' => '=',
    //   'value' => 8
    // );

    //example: search on organiser name
    // $conditions[] = array(
    //   'field' => 'organiser',
    //   'comparator' => 'like',
    //   'value' => 'brussel'
    // );

    //example: search on tag name
    // $conditions[] = array(
    //   'field' => 'tag',
    //   'comparator' => '=',
    //   'value' => 'e-bike'
    // );

    //example: 1-day events on september 17
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '>=',
    //   'value' => '2018-09-17 00:00:00'
    // );
    // $conditions[] = array(
    //   'field' => 'end',
    //   'comparator' => '<=',
    //   'value' => '2018-09-17 23:59:59'
    // );

    //example: events on september 17 (includes multi-day events)
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '<=',
    //   'value' => '2018-09-17 23:59:59'
    // );
    // $conditions[] = array(
    //   'field' => 'end',
    //   'comparator' => '>=',
    //   'value' => '2018-09-17 00:00:00'
    // );

    //example: search on organiser, with certain end date + time
    $conditions[] = array(
      'field' => 'organiser',
      'comparator' => 'like',
      'value' => 'brussel'
    );
    $conditions[] = array(
      'field' => 'end',
      'comparator' => '=',
      'value' => '2018-09-16 18:00:00'
    );

    $events = $this->eventDAO->search($conditions);
    $this->set('events', $events);
  }

}
