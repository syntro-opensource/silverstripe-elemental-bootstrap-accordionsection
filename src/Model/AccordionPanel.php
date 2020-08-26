<?php
namespace Syntro\SilverStripeElementalBootstrapAccordionSection\Model;

use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Syntro\SilverStripeElementalBaseitems\Model\BaseItem;
use Syntro\SilverStripeElementalBootstrapAccordionSection\Elements\AccordionSection;

/**
 * AccordionPanel
 *
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class AccordionPanel extends BaseItem
{
    /**
     * @var string
     */
    private static $table_name = 'ElementalBootstrapAccordionPanel';

    /**
     * @var array
     */
    private static $db = [
        'Sort' => 'Int',
        'Content' => 'HTMLText',

    ];

    private static $default_sort = ['Sort' => 'ASC'];

    /**
     * @var array
     */
    private static $has_one = [
        'Section' => AccordionSection::class,
        'Image' => Image::class,
    ];

    /**
     * @var array
     */
    private static $owns = [
        'Image'
    ];

    private static $defaults = [
        'ShowTitle' => true
    ];

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function ($fields) {
            /** @var FieldList $fields */
            $fields->removeByName([
                'Sort',
                'SectionID',
            ]);

            // Add Image Upload Field
            $fields->addFieldToTab(
                'Root.Main',
                $imageField = UploadField::create(
                    'Image',
                    'Image'
                )
            );
            $imageField->setFolderName('Uploads/AccordionPanels');

            // Add content field
            // $fields->addFieldToTab(
            //     'Root.Main',
            //     TextareaField::create(
            //         'Content',
            //         'Content'
            //     ),
            //     'CTALink'
            // );
        });

        return parent::getCMSFields();
    }
}
