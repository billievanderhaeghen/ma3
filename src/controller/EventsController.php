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

    $days = $this->eventDAO->selectAllDays();
    $this->set('days', $days);

    $events = $this->_searchEvents();

    if ($this->isAjax) {
      header('Content-Type: application/json');
      echo json_encode($events);
      exit();
    }

    $this->set('events', $events);

  }

  public function agendaAjax() {

    header('Content-Type: application/json');

    if ($this->isAjax) {
      $events = $this->_searchEvents();

      echo json_encode( $events );
      exit();

    }


  }

  public function _searchEvents() {
    $conditions = array();

    if( !empty( $_GET["query"]) ){
      $conditions[] = array(
        'field' => 'title',
        'comparator' => 'like',
        'value' => $_GET["query"]
      );
    }

    if( !empty( $_GET["postcode"]) ){
      $conditions[] = array(
        'field' => 'postal',
        'comparator' => 'like',
        'value' => $_GET["postcode"]
      );
    }

    if( !empty( $_GET["tag"]) ){
      $conditions[] = array(
        'field' => 'tag',
        'comparator' => 'like',
        'value' => $_GET["tag"]
      );

    }

    if( !empty( $_GET["day"]) ){
      $conditions[] = array(
        'field' => 'day',
        'comparator' => 'like',
        'value' => $_GET["day"]
      );

    }

    $events = $this->eventDAO->search($conditions);
    return $events;

  }

  public function detail() {

    $id = $_GET["id"];
    $event = $this->eventDAO->selectById($id);
    $this->set('event', $event);
    $dayId = $event['day'];
    $day = $this->eventDAO->selectDayById($dayId);
    $this->set('day', $day);

    $tags = $this->eventDAO->selectTagsByEventId($id);
    $this->set('tags', $tags);

    $relatedEvents = $this->eventDAO->selectEventsBySameDay($id);
    $this->set('relatedEvents', $relatedEvents);

    if( empty($event) ){
      $_SESSION["error"] = ['Deze pagina bestaat niet'];
      $this->redirect('index.php?page=notfound');
    }

  }

  public function notfound() {

  }

}
