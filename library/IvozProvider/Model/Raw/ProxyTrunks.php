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
 * [entity]
 *
 * @package IvozProvider\Model
 * @subpackage Model
 * @author Luis Felipe Garcia
 */

namespace IvozProvider\Model\Raw;
class ProxyTrunks extends ModelAbstract
{


    /**
     * Database var type int
     *
     * @var int
     */
    protected $_id;

    /**
     * Database var type varchar
     *
     * @var string
     */
    protected $_name;

    /**
     * Database var type varchar
     *
     * @var string
     */
    protected $_ip;



    /**
     * Dependent relation ast_ps_aors_ibfk_2
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\AstPsAors[]
     */
    protected $_AstPsAors;

    /**
     * Dependent relation ast_ps_endpoints_ibfk_2
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\AstPsEndpoints[]
     */
    protected $_AstPsEndpoints;

    /**
     * Dependent relation ast_ps_identify_ibfk_1
     * Type: One-to-Many relationship
     *
     * @var \IvozProvider\Model\Raw\AstPsIdentify[]
     */
    protected $_AstPsIdentify;

    protected $_columnsList = array(
        'id'=>'id',
        'name'=>'name',
        'ip'=>'ip',
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
        ));

        $this->setDependentList(array(
            'AstPsAorsIbfk2' => array(
                    'property' => 'AstPsAors',
                    'table_name' => 'ast_ps_aors',
                ),
            'AstPsEndpointsIbfk2' => array(
                    'property' => 'AstPsEndpoints',
                    'table_name' => 'ast_ps_endpoints',
                ),
            'AstPsIdentifyIbfk1' => array(
                    'property' => 'AstPsIdentify',
                    'table_name' => 'ast_ps_identify',
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
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setId($data)
    {

        if ($this->_id != $data) {
            $this->_logChange('id');
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
     * @param string $data
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setName($data)
    {

        if ($this->_name != $data) {
            $this->_logChange('name');
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
     * Sets column Stored in ISO 8601 format.     *
     * @param string $data
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setIp($data)
    {

        if (is_null($data)) {
            throw new \InvalidArgumentException(_('Required values cannot be null'));
        }
        if ($this->_ip != $data) {
            $this->_logChange('ip');
        }

        if ($data instanceof \Zend_Db_Expr) {
            $this->_ip = $data;

        } else if (!is_null($data)) {
            $this->_ip = (string) $data;

        } else {
            $this->_ip = $data;
        }
        return $this;
    }

    /**
     * Gets column ip
     *
     * @return string
     */
    public function getIp()
    {
        return $this->_ip;
    }

    /**
     * Sets dependent relations ast_ps_aors_ibfk_2
     *
     * @param array $data An array of \IvozProvider\Model\Raw\AstPsAors
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setAstPsAors(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_AstPsAors === null) {

                $this->getAstPsAors();
            }

            $oldRelations = $this->_AstPsAors;

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

        $this->_AstPsAors = array();

        foreach ($data as $object) {
            $this->addAstPsAors($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations ast_ps_aors_ibfk_2
     *
     * @param \IvozProvider\Model\Raw\AstPsAors $data
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function addAstPsAors(\IvozProvider\Model\Raw\AstPsAors $data)
    {
        $this->_AstPsAors[] = $data;
        $this->_setLoaded('AstPsAorsIbfk2');
        return $this;
    }

    /**
     * Gets dependent ast_ps_aors_ibfk_2
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\AstPsAors
     */
    public function getAstPsAors($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'AstPsAorsIbfk2';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_AstPsAors = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_AstPsAors;
    }

    /**
     * Sets dependent relations ast_ps_endpoints_ibfk_2
     *
     * @param array $data An array of \IvozProvider\Model\Raw\AstPsEndpoints
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setAstPsEndpoints(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_AstPsEndpoints === null) {

                $this->getAstPsEndpoints();
            }

            $oldRelations = $this->_AstPsEndpoints;

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

        $this->_AstPsEndpoints = array();

        foreach ($data as $object) {
            $this->addAstPsEndpoints($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations ast_ps_endpoints_ibfk_2
     *
     * @param \IvozProvider\Model\Raw\AstPsEndpoints $data
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function addAstPsEndpoints(\IvozProvider\Model\Raw\AstPsEndpoints $data)
    {
        $this->_AstPsEndpoints[] = $data;
        $this->_setLoaded('AstPsEndpointsIbfk2');
        return $this;
    }

    /**
     * Gets dependent ast_ps_endpoints_ibfk_2
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\AstPsEndpoints
     */
    public function getAstPsEndpoints($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'AstPsEndpointsIbfk2';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_AstPsEndpoints = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_AstPsEndpoints;
    }

    /**
     * Sets dependent relations ast_ps_identify_ibfk_1
     *
     * @param array $data An array of \IvozProvider\Model\Raw\AstPsIdentify
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function setAstPsIdentify(array $data, $deleteOrphans = false)
    {
        if ($deleteOrphans === true) {

            if ($this->_AstPsIdentify === null) {

                $this->getAstPsIdentify();
            }

            $oldRelations = $this->_AstPsIdentify;

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

        $this->_AstPsIdentify = array();

        foreach ($data as $object) {
            $this->addAstPsIdentify($object);
        }

        return $this;
    }

    /**
     * Sets dependent relations ast_ps_identify_ibfk_1
     *
     * @param \IvozProvider\Model\Raw\AstPsIdentify $data
     * @return \IvozProvider\Model\Raw\ProxyTrunks
     */
    public function addAstPsIdentify(\IvozProvider\Model\Raw\AstPsIdentify $data)
    {
        $this->_AstPsIdentify[] = $data;
        $this->_setLoaded('AstPsIdentifyIbfk1');
        return $this;
    }

    /**
     * Gets dependent ast_ps_identify_ibfk_1
     *
     * @param string or array $where
     * @param string or array $orderBy
     * @param boolean $avoidLoading skip data loading if it is not already
     * @return array The array of \IvozProvider\Model\Raw\AstPsIdentify
     */
    public function getAstPsIdentify($where = null, $orderBy = null, $avoidLoading = false)
    {
        $fkName = 'AstPsIdentifyIbfk1';

        $usingDefaultArguments = is_null($where) && is_null($orderBy);
        if (!$usingDefaultArguments) {
            $this->setNotLoaded($fkName);
        }

        $dontSkipLoading = !($avoidLoading);
        $notLoadedYet = !($this->_isLoaded($fkName));

        if ($dontSkipLoading && $notLoadedYet) {
            $related = $this->getMapper()->loadRelated('dependent', $fkName, $this, $where, $orderBy);
            $this->_AstPsIdentify = $related;
            $this->_setLoaded($fkName);
        }

        return $this->_AstPsIdentify;
    }

    /**
     * Returns the mapper class for this model
     *
     * @return IvozProvider\Mapper\Sql\ProxyTrunks
     */
    public function getMapper()
    {
        if ($this->_mapper === null) {

            \Zend_Loader_Autoloader::getInstance()->suppressNotFoundWarnings(true);

            if (class_exists('\IvozProvider\Mapper\Sql\ProxyTrunks')) {

                $this->setMapper(new \IvozProvider\Mapper\Sql\ProxyTrunks);

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
     * @return null | \IvozProvider\Model\Validator\ProxyTrunks
     */
    public function getValidator()
    {
        if ($this->_validator === null) {

            if (class_exists('\IvozProvider\\Validator\ProxyTrunks')) {

                $this->setValidator(new \IvozProvider\Validator\ProxyTrunks);
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
     * @see \Mapper\Sql\ProxyTrunks::delete
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