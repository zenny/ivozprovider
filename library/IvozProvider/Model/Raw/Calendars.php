<?php

/**
 * Application Model
 *
 * @package IvozProvider\Model\Raw
 * @subpackage Model
 * @author Luis Felipe Garcia
 * @copyright ZF model generator
 * @license http://framework.zend.com/license/new-bsd     New BSD License
 */

/**
 * [entity][rest]
 *
 * @package IvozProvider\Model
 * @subpackage Model
 * @author Luis Felipe Garcia
 */

namespace IvozProvider\Model\Raw;
class Calendars extends ModelAbstract
{


    /**
     * Database var type int
     *
     * @var int
     */
    protected $_id;

    /**
     * Database var type int
     *
     * @var int
     */
    protected $_companyId;

    /**
     * Database var type varchar
     *
     * @var string
     */
    protected $_name;


    /**
     * Parent relation Calendars_ibfk_1
     *
     * @var \IvozProvider\Model\Raw\Companies
     */
    protected $_Company;


    /**
     * Dependent relation ConditionalRoutesConditionsRelCalendars_ibfk_2
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\ConditionalRoutesConditionsRelCalendars[]
     */
    protected $_ConditionalRoutesConditionsRelCalendars;

    /**
     * Dependent relation ExternalCallFilterRelCalendars_ibfk_2
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\ExternalCallFilterRelCalendars[]
     */
    protected $_ExternalCallFilterRelCalendars;

    /**
     * Dependent relation HolidayDates_ibfk_1
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\HolidayDates[]
     */
    protected $_HolidayDates;

    protected $_columnsList = array(
        'id'=>'id',
        'companyId'=>'companyId',
        'name'=>'name',
    );

    /**
     * Sets up column and relationship lists
     */
    public function __construct()
    {
        $this->setColumnsMeta(array(
        ));

        $this->setMultiLangColumnsList(array(
        ));

        $this->setAvailableLangs(array('es', 'en'));

        $this->setParentList(array(
            'CalendarsIbfk1'=> array(
                    'property' => 'Company',
                    'table_name' => 'Companies',
                ),
        ));

        $this->setDependentList(array(
            'ConditionalRoutesConditionsRelCalendarsIbfk2' => array(
                    'property' => 'ConditionalRoutesConditionsRelCalendars',
                    'table_name' => 'ConditionalRoutesConditionsRelCalendars',
                ),
            'ExternalCallFilterRelCalendarsIbfk2' => array(
                    'property' => 'ExternalCallFilterRelCalendars',
                    'table_name' => 'ExternalCallFilterRelCalendars',
                ),
            'HolidayDatesIbfk1' => array(
                    'property' => 'HolidayDates',
                    'table_name' => 'HolidayDates',
                ),
        ));




        $this->_defaultValues = array(
        );

        $this->_initFileObjects();
        parent::__construct();
    }

    /**
     * This method is called just after parent's constructor
     */
    public function init()
    {
    }
    /**************************************************************************
    ************************** File System Object (FSO)************************
    ***************************************************************************/

    protected function _initFileObjects()
    {

        return $this;
    }

    public function getFileObjects()
    {

        return array();
    }


    /**************************************************************************
    *********************************** /FSO ***********************************
    ***************************************************************************/

    /**
     * Sets column Stored in ISO 8601 format.     *
     * @param int $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setId($data)
    {

        if ($this->_id != $data) {
            $this->_logChange('id', $this->_id, $data);
        }

        if ($data instanceof \Zend_Db_Expr) {
            $this->_id = $data;

        } else if (!is_null($data)) {
            $this->_id = (int) $data;

        } else {
            $this->_id = $data;
        }
        return $this;
    }

    /**
     * Gets column id
     *
     * @return int
     */
    public function getId()
    {
        return $this->_id;
    }

    /**
     * Sets column Stored in ISO 8601 format.     *
     * @param int $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setCompanyId($data)
    {

        if (is_null($data)) {
            throw new \InvalidArgumentException(_('Required values cannot be null'));
        }
        if ($this->_companyId != $data) {
            $this->_logChange('companyId', $this->_companyId, $data);
        }

        if ($data instanceof \Zend_Db_Expr) {
            $this->_companyId = $data;

        } else if (!is_null($data)) {
            $this->_companyId = (int) $data;

        } else {
            $this->_companyId = $data;
        }
        return $this;
    }

    /**
     * Gets column companyId
     *
     * @return int
     */
    public function getCompanyId()
    {
        return $this->_companyId;
    }

    /**
     * Sets column Stored in ISO 8601 format.     *
     * @param string $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setName($data)
    {

        if (is_null($data)) {
            throw new \InvalidArgumentException(_('Required values cannot be null'));
        }
        if ($this->_name != $data) {
            $this->_logChange('name', $this->_name, $data);
        }

        if ($data instanceof \Zend_Db_Expr) {
            $this->_name = $data;

        } else if (!is_null($data)) {
            $this->_name = (string) $data;

        } else {
            $this->_name = $data;
        }
        return $this;
    }

    /**
     * Gets column name
     *
     * @return string
     */
    public function getName()
    {
        return $this->_name;
    }

    /**
     * Sets parent relation Company
     *
     * @param \IvozProvider\Model\Raw\Companies $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setCompany(\IvozProvider\Model\Raw\Companies $data)
    {
        $this->_Company = $data;

        $primaryKey = $data->getPrimaryKey();
        if (is_array($primaryKey)) {
            $primaryKey = $primaryKey['id'];
        }

        if (!is_null($primaryKey)) {
            $this->setCompanyId($primaryKey);
        }

        $this->_setLoaded('CalendarsIbfk1');
        return $this;
    }

    /**
     * Gets parent Company
     * TODO: Mejorar esto para los casos en que la relación no exista. Ahora mismo siempre se pediría el padre
     * @return \IvozProvider\Model\Raw\Companies
     */
    public function getCompany($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'CalendarsIbfk1';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('parent', $fkName, $this, $where, $orderBy);
            $this->_Company = array_shift($related);
            if ($usingDefaultArguments) {
                $this->_setLoaded($fkName);
            }
        }

        return $this->_Company;
    }

    /**
     * Sets dependent relations ConditionalRoutesConditionsRelCalendars_ibfk_2
     *
     * @param array $data An array of \IvozProvider\Model\Raw\ConditionalRoutesConditionsRelCalendars
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setConditionalRoutesConditionsRelCalendars(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_ConditionalRoutesConditionsRelCalendars === null) {

                $this->getConditionalRoutesConditionsRelCalendars();
            }

            $oldRelations = $this->_ConditionalRoutesConditionsRelCalendars;

            if (is_array($oldRelations)) {

                $dataPKs = array();

                foreach ($data as $newItem) {

                    $pk = $newItem->getPrimaryKey();
                    if (!empty($pk)) {
                        $dataPKs[] = $pk;
                    }
                }

                foreach ($oldRelations as $oldItem) {

                    if (!in_array($oldItem->getPrimaryKey(), $dataPKs)) {

                        $this->_orphans[] = $oldItem;
                    }
                }
            }
        }

        $this->_ConditionalRoutesConditionsRelCalendars = array();

        foreach ($data as $object) {
            $this->addConditionalRoutesConditionsRelCalendars($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations ConditionalRoutesConditionsRelCalendars_ibfk_2
     *
     * @param \IvozProvider\Model\Raw\ConditionalRoutesConditionsRelCalendars $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function addConditionalRoutesConditionsRelCalendars(\IvozProvider\Model\Raw\ConditionalRoutesConditionsRelCalendars $data)
    {
        $this->_ConditionalRoutesConditionsRelCalendars[] = $data;
        $this->_setLoaded('ConditionalRoutesConditionsRelCalendarsIbfk2');
        return $this;
    }

    /**
     * Gets dependent ConditionalRoutesConditionsRelCalendars_ibfk_2
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\ConditionalRoutesConditionsRelCalendars
     */
    public function getConditionalRoutesConditionsRelCalendars($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'ConditionalRoutesConditionsRelCalendarsIbfk2';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_ConditionalRoutesConditionsRelCalendars = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_ConditionalRoutesConditionsRelCalendars;
    }

    /**
     * Sets dependent relations ExternalCallFilterRelCalendars_ibfk_2
     *
     * @param array $data An array of \IvozProvider\Model\Raw\ExternalCallFilterRelCalendars
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setExternalCallFilterRelCalendars(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_ExternalCallFilterRelCalendars === null) {

                $this->getExternalCallFilterRelCalendars();
            }

            $oldRelations = $this->_ExternalCallFilterRelCalendars;

            if (is_array($oldRelations)) {

                $dataPKs = array();

                foreach ($data as $newItem) {

                    $pk = $newItem->getPrimaryKey();
                    if (!empty($pk)) {
                        $dataPKs[] = $pk;
                    }
                }

                foreach ($oldRelations as $oldItem) {

                    if (!in_array($oldItem->getPrimaryKey(), $dataPKs)) {

                        $this->_orphans[] = $oldItem;
                    }
                }
            }
        }

        $this->_ExternalCallFilterRelCalendars = array();

        foreach ($data as $object) {
            $this->addExternalCallFilterRelCalendars($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations ExternalCallFilterRelCalendars_ibfk_2
     *
     * @param \IvozProvider\Model\Raw\ExternalCallFilterRelCalendars $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function addExternalCallFilterRelCalendars(\IvozProvider\Model\Raw\ExternalCallFilterRelCalendars $data)
    {
        $this->_ExternalCallFilterRelCalendars[] = $data;
        $this->_setLoaded('ExternalCallFilterRelCalendarsIbfk2');
        return $this;
    }

    /**
     * Gets dependent ExternalCallFilterRelCalendars_ibfk_2
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\ExternalCallFilterRelCalendars
     */
    public function getExternalCallFilterRelCalendars($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'ExternalCallFilterRelCalendarsIbfk2';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_ExternalCallFilterRelCalendars = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_ExternalCallFilterRelCalendars;
    }

    /**
     * Sets dependent relations HolidayDates_ibfk_1
     *
     * @param array $data An array of \IvozProvider\Model\Raw\HolidayDates
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function setHolidayDates(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_HolidayDates === null) {

                $this->getHolidayDates();
            }

            $oldRelations = $this->_HolidayDates;

            if (is_array($oldRelations)) {

                $dataPKs = array();

                foreach ($data as $newItem) {

                    $pk = $newItem->getPrimaryKey();
                    if (!empty($pk)) {
                        $dataPKs[] = $pk;
                    }
                }

                foreach ($oldRelations as $oldItem) {

                    if (!in_array($oldItem->getPrimaryKey(), $dataPKs)) {

                        $this->_orphans[] = $oldItem;
                    }
                }
            }
        }

        $this->_HolidayDates = array();

        foreach ($data as $object) {
            $this->addHolidayDates($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations HolidayDates_ibfk_1
     *
     * @param \IvozProvider\Model\Raw\HolidayDates $data
     * @return \IvozProvider\Model\Raw\Calendars
     */
    public function addHolidayDates(\IvozProvider\Model\Raw\HolidayDates $data)
    {
        $this->_HolidayDates[] = $data;
        $this->_setLoaded('HolidayDatesIbfk1');
        return $this;
    }

    /**
     * Gets dependent HolidayDates_ibfk_1
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\HolidayDates
     */
    public function getHolidayDates($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'HolidayDatesIbfk1';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_HolidayDates = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_HolidayDates;
    }

    /**
     * Returns the mapper class for this model
     *
     * @return IvozProvider\Mapper\Sql\Calendars
     */
    public function getMapper()
    {
        if ($this->_mapper === null) {

            \Zend_Loader_Autoloader::getInstance()->suppressNotFoundWarnings(true);

            if (class_exists('\IvozProvider\Mapper\Sql\Calendars')) {

                $this->setMapper(new \IvozProvider\Mapper\Sql\Calendars);

            } else {

                 new \Exception("Not a valid mapper class found");
            }

            \Zend_Loader_Autoloader::getInstance()->suppressNotFoundWarnings(false);
        }

        return $this->_mapper;
    }

    /**
     * Returns the validator class for this model
     *
     * @return null | \IvozProvider\Model\Validator\Calendars
     */
    public function getValidator()
    {
        if ($this->_validator === null) {

            if (class_exists('\IvozProvider\\Validator\Calendars')) {

                $this->setValidator(new \IvozProvider\Validator\Calendars);
            }
        }

        return $this->_validator;
    }

    public function setFromArray($data)
    {
        return $this->getMapper()->loadModel($data, $this);
    }

    /**
     * Deletes current row by deleting the row that matches the primary key
     *
     * @see \Mapper\Sql\Calendars::delete
     * @return int|boolean Number of rows deleted or boolean if doing soft delete
     */
    public function deleteRowByPrimaryKey()
    {
        if ($this->getId() === null) {
            $this->_logger->log('The value for Id cannot be null in deleteRowByPrimaryKey for ' . get_class($this), \Zend_Log::ERR);
            throw new \Exception('Primary Key does not contain a value');
        }

        return $this->getMapper()->getDbTable()->delete(
            'id = ' .
             $this->getMapper()->getDbTable()->getAdapter()->quote($this->getId())
        );
    }

    public function mustUpdateEtag()
    {
        return true;
    }

}