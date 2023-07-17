<?php

// @formatter:off
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Addon
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $unique_identifier
 * @property string|null $version
 * @property int $activated
 * @property string|null $image
 * @property string|null $purchase_code
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Addon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Addon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Addon query()
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereActivated($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon wherePurchaseCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereUniqueIdentifier($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Addon whereVersion($value)
 */
	class Addon extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Address
 *
 * @property int $id
 * @property int $user_id
 * @property string|null $address
 * @property \App\Models\Country|null $country
 * @property int|null $country_id
 * @property \App\Models\State|null $state
 * @property int|null $state_id
 * @property \App\Models\City|null $city
 * @property int|null $city_id
 * @property string|null $postal_code
 * @property string|null $phone
 * @property int $default_shipping
 * @property int $default_billing
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Address newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Address newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Address query()
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereCityId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereCountryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereDefaultBilling($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereDefaultShipping($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address wherePostalCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereState($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereStateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Address whereUserId($value)
 */
	class Address extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Attribute
 *
 * @property int $id
 * @property string|null $name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\AttributeTranslation> $attribute_translations
 * @property-read int|null $attribute_translations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\AttributeValue> $attribute_values
 * @property-read int|null $attribute_values_count
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute query()
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attribute whereUpdatedAt($value)
 */
	class Attribute extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AttributeCategory
 *
 * @property int $id
 * @property int $category_id
 * @property int $attribute_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeCategory whereUpdatedAt($value)
 */
	class AttributeCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AttributeTranslation
 *
 * @property int $id
 * @property int $attribute_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Attribute|null $attribute
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeTranslation whereUpdatedAt($value)
 */
	class AttributeTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AttributeValue
 *
 * @property int $id
 * @property int $attribute_id
 * @property string $name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\Attribute|null $attribute
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\AttributeValueTranslation> $attribute_value_translations
 * @property-read int|null $attribute_value_translations_count
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue query()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValue whereUpdatedAt($value)
 */
	class AttributeValue extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AttributeValueTranslation
 *
 * @property int $id
 * @property int $attribute_value_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\AttributeValue|null $attribute_value
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereAttributeValueId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|AttributeValueTranslation whereUpdatedAt($value)
 */
	class AttributeValueTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Blog
 *
 * @property int $id
 * @property int $category_id
 * @property string $title
 * @property string $slug
 * @property string|null $short_description
 * @property string|null $description
 * @property int|null $banner
 * @property string|null $meta_title
 * @property int|null $meta_img
 * @property string|null $meta_description
 * @property string|null $meta_keywords
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\BlogTranslation> $blog_translations
 * @property-read int|null $blog_translations_count
 * @property-read \App\Models\BlogCategory|null $category
 * @method static \Illuminate\Database\Eloquent\Builder|Blog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Blog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Blog query()
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereBanner($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereMetaImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereMetaKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereShortDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Blog whereUpdatedAt($value)
 */
	class Blog extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BlogCategory
 *
 * @property int $id
 * @property string $name
 * @property string $slug
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\BlogCategoryTranslation> $blog_category_translations
 * @property-read int|null $blog_category_translations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Blog> $blogs
 * @property-read int|null $blogs_count
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategory whereUpdatedAt($value)
 */
	class BlogCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BlogCategoryTranslation
 *
 * @property int $id
 * @property int $blog_category_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\BlogCategory|null $blog_category
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereBlogCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogCategoryTranslation whereUpdatedAt($value)
 */
	class BlogCategoryTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BlogTranslation
 *
 * @property int $id
 * @property int $blog_id
 * @property string $title
 * @property string|null $short_description
 * @property string|null $description
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Blog|null $blog
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereBlogId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereShortDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BlogTranslation whereUpdatedAt($value)
 */
	class BlogTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Brand
 *
 * @property int $id
 * @property string $name
 * @property string|null $logo
 * @property string|null $slug
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property float $sales_amount
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\BrandTranslation> $brand_translations
 * @property-read int|null $brand_translations_count
 * @method static \Illuminate\Database\Eloquent\Builder|Brand newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Brand newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Brand query()
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereSalesAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Brand whereUpdatedAt($value)
 */
	class Brand extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BrandTranslation
 *
 * @property int $id
 * @property int $brand_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Brand|null $brand
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereBrandId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BrandTranslation whereUpdatedAt($value)
 */
	class BrandTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Cart
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $temp_user_id
 * @property int|null $product_id
 * @property int|null $product_variation_id
 * @property int $quantity
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Product|null $product
 * @property-read \App\Models\ProductVariation|null $variation
 * @method static \Illuminate\Database\Eloquent\Builder|Cart newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cart newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cart query()
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereProductVariationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereTempUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cart whereUserId($value)
 */
	class Cart extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Category
 *
 * @property int $id
 * @property int|null $parent_id
 * @property int $level
 * @property string $name
 * @property int $order_level
 * @property int|null $banner
 * @property int|null $icon
 * @property int $featured
 * @property int $top
 * @property string|null $slug
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property int|null $meta_image
 * @property float $sales_amount
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Attribute> $attributes
 * @property-read int|null $attributes_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Category> $categories
 * @property-read int|null $categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\CategoryTranslation> $category_translations
 * @property-read int|null $category_translations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Category> $childrenCategories
 * @property-read int|null $children_categories_count
 * @property-read Category|null $parentCategory
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductCategory> $product_categories
 * @property-read int|null $product_categories_count
 * @method static \Illuminate\Database\Eloquent\Builder|Category newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Category newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Category query()
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereBanner($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereFeatured($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereLevel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereMetaImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereOrderLevel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereParentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereSalesAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereTop($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Category whereUpdatedAt($value)
 */
	class Category extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CategoryTranslation
 *
 * @property int $id
 * @property int $category_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Category|null $category
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CategoryTranslation whereUpdatedAt($value)
 */
	class CategoryTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Chat
 *
 * @property int $id
 * @property int $chat_thread_id
 * @property int $user_id
 * @property string|null $message
 * @property string|null $attachment
 * @property int $seen_by_customer
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\ChatThread|null $chat_thread
 * @property-read \App\Models\User|null $sender
 * @method static \Illuminate\Database\Eloquent\Builder|Chat newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Chat newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Chat query()
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereAttachment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereChatThreadId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereSeenByCustomer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chat whereUserId($value)
 */
	class Chat extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ChatThread
 *
 * @property int $id
 * @property int $user_id
 * @property string $last_message_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Chat> $chats
 * @property-read int|null $chats_count
 * @property-read \App\Models\User|null $customer
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereLastMessageAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatThread whereUserId($value)
 */
	class ChatThread extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\City
 *
 * @property int $id
 * @property string $name
 * @property int $state_id
 * @property int|null $zone_id
 * @property int $status
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\State|null $state
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\CityTranslation> $state_translations
 * @property-read int|null $state_translations_count
 * @property-read \App\Models\Zone|null $zone
 * @method static \Illuminate\Database\Eloquent\Builder|City newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|City newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|City query()
 * @method static \Illuminate\Database\Eloquent\Builder|City status()
 * @method static \Illuminate\Database\Eloquent\Builder|City whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereStateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|City whereZoneId($value)
 */
	class City extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CityTranslation
 *
 * @property-read \App\Models\City|null $city
 * @method static \Illuminate\Database\Eloquent\Builder|CityTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CityTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CityTranslation query()
 */
	class CityTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ClubPoint
 *
 * @property int $id
 * @property int $user_id
 * @property float $points
 * @property int $combined_order_id
 * @property int $convert_status
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\CombinedOrder|null $combined_order
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint query()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereCombinedOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereConvertStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint wherePoints($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPoint whereUserId($value)
 */
	class ClubPoint extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ClubPointDetail
 *
 * @property int $id
 * @property int $club_point_id
 * @property int $product_id
 * @property int $product_qty
 * @property float $point
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\ClubPoint|null $club_point
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereClubPointId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail wherePoint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereProductQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ClubPointDetail whereUpdatedAt($value)
 */
	class ClubPointDetail extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CombinedOrder
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $guest_id
 * @property string|null $code
 * @property string|null $shipping_address
 * @property string|null $billing_address
 * @property float $grand_total
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Order> $orders
 * @property-read int|null $orders_count
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder query()
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereBillingAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereGrandTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereGuestId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereShippingAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CombinedOrder whereUserId($value)
 */
	class CombinedOrder extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CommissionHistory
 *
 * @property int $id
 * @property int|null $order_id
 * @property int $shop_id
 * @property float $admin_commission
 * @property float $seller_earning
 * @property string $type Added/Deducted
 * @property string|null $details
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Order|null $order
 * @property-read \App\Models\Shop|null $shop
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory query()
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereAdminCommission($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereSellerEarning($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CommissionHistory whereUpdatedAt($value)
 */
	class CommissionHistory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Conversation
 *
 * @property int $id
 * @property int $sender_id
 * @property int $receiver_id
 * @property string|null $title
 * @property int $sender_viewed
 * @property int $receiver_viewed
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Message> $messages
 * @property-read int|null $messages_count
 * @property-read \App\Models\User|null $receiver
 * @property-read \App\Models\User|null $sender
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation query()
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereReceiverId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereReceiverViewed($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereSenderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereSenderViewed($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Conversation whereUpdatedAt($value)
 */
	class Conversation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Country
 *
 * @property int $id
 * @property string $code
 * @property string $name
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\CountryTranslation> $country_translations
 * @property-read int|null $country_translations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\State> $states
 * @property-read int|null $states_count
 * @method static \Illuminate\Database\Eloquent\Builder|Country newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Country newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Country query()
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Country whereUpdatedAt($value)
 */
	class Country extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CountryTranslation
 *
 * @property int $id
 * @property int $country_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Country|null $country
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereCountryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CountryTranslation whereUpdatedAt($value)
 */
	class CountryTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Coupon
 *
 * @property int $id
 * @property int|null $shop_id
 * @property string $type
 * @property string $code
 * @property int|null $banner
 * @property string $details
 * @property float $discount
 * @property string $discount_type
 * @property int $start_date
 * @property int $end_date
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon query()
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereBanner($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereDiscount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereDiscountType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereEndDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereStartDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Coupon whereUpdatedAt($value)
 */
	class Coupon extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CouponUsage
 *
 * @property int $id
 * @property int $user_id
 * @property int $coupon_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage query()
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereCouponId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CouponUsage whereUserId($value)
 */
	class CouponUsage extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Currency
 *
 * @property int $id
 * @property string $name
 * @property string $symbol
 * @property float $exchange_rate
 * @property int $status
 * @property string|null $code
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Currency newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Currency newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Currency query()
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereExchangeRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereSymbol($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Currency whereUpdatedAt($value)
 */
	class Currency extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Language
 *
 * @property int $id
 * @property string $name
 * @property string|null $flag
 * @property string $code
 * @property int $rtl
 * @property int $status
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Language newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Language newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Language query()
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereFlag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereRtl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Language whereUpdatedAt($value)
 */
	class Language extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ManualPaymentMethod
 *
 * @property int $id
 * @property string|null $type
 * @property string|null $heading
 * @property string|null $description
 * @property string|null $bank_info
 * @property string|null $photo
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod query()
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereBankInfo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereHeading($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod wherePhoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ManualPaymentMethod whereUpdatedAt($value)
 */
	class ManualPaymentMethod extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Message
 *
 * @property int $id
 * @property int $conversation_id
 * @property int $user_id
 * @property string|null $message
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Conversation|null $conversation
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Message newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Message newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Message query()
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereConversationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Message whereUserId($value)
 */
	class Message extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Offer
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $start_date
 * @property int|null $end_date
 * @property int $status
 * @property string|null $banner
 * @property string|null $slug
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OfferProduct> $offer_products
 * @property-read int|null $offer_products_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Product> $products
 * @property-read int|null $products_count
 * @method static \Illuminate\Database\Eloquent\Builder|Offer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Offer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Offer query()
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereBanner($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereEndDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereStartDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Offer whereUpdatedAt($value)
 */
	class Offer extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\OfferProduct
 *
 * @property int $id
 * @property int $offer_id
 * @property int $product_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct query()
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct whereOfferId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OfferProduct whereUpdatedAt($value)
 */
	class OfferProduct extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Order
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $shop_id
 * @property int|null $combined_order_id
 * @property string|null $code
 * @property string|null $shipping_address
 * @property string|null $billing_address
 * @property float $shipping_cost
 * @property string|null $delivery_type
 * @property string|null $delivery_status
 * @property string|null $payment_type
 * @property int $manual_payment
 * @property string|null $manual_payment_data
 * @property string|null $payment_status
 * @property string|null $payment_details
 * @property float|null $grand_total
 * @property float $admin_commission
 * @property float $seller_earning
 * @property float|null $commission_percentage
 * @property string|null $coupon_code
 * @property float $coupon_discount
 * @property int $commission_calculated
 * @property string|null $refund_status null, fully_refunded, partially_refunded
 * @property float|null $refund_amount
 * @property string|null $courier_name
 * @property string|null $tracking_number
 * @property string|null $tracking_url
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\CombinedOrder|null $combined_order
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\CommissionHistory> $commission_histories
 * @property-read int|null $commission_histories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OrderDetail> $orderDetails
 * @property-read int|null $order_details_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OrderUpdate> $order_udpates
 * @property-read int|null $order_udpates_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RefundRequest> $refundRequests
 * @property-read int|null $refund_requests_count
 * @property-read \App\Models\Shop|null $shop
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Order newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Order newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Order query()
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereAdminCommission($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereBillingAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCombinedOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCommissionCalculated($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCommissionPercentage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCouponCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCouponDiscount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCourierName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereDeliveryStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereDeliveryType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereGrandTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereManualPayment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereManualPaymentData($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order wherePaymentDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order wherePaymentStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order wherePaymentType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereRefundAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereRefundStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereSellerEarning($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereShippingAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereShippingCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereTrackingNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereTrackingUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Order whereUserId($value)
 */
	class Order extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\OrderDetail
 *
 * @property int $id
 * @property int $order_id
 * @property int $product_id
 * @property int|null $product_variation_id
 * @property float|null $price
 * @property float $tax
 * @property float $total
 * @property int|null $quantity
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\Order|null $order
 * @property-read \App\Models\Product|null $product
 * @property-read \App\Models\ProductVariation|null $variation
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereProductVariationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderDetail whereUpdatedAt($value)
 */
	class OrderDetail extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\OrderUpdate
 *
 * @property int $id
 * @property int $order_id
 * @property int|null $user_id
 * @property string|null $note
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Order|null $order
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate query()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderUpdate whereUserId($value)
 */
	class OrderUpdate extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Page
 *
 * @property int $id
 * @property string $type
 * @property string|null $title
 * @property string|null $slug
 * @property string|null $content
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property string|null $keywords
 * @property int|null $meta_image
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PageTranslation> $page_translations
 * @property-read int|null $page_translations_count
 * @method static \Illuminate\Database\Eloquent\Builder|Page newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Page newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Page query()
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereMetaImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Page whereUpdatedAt($value)
 */
	class Page extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\PageTranslation
 *
 * @property int $id
 * @property int $page_id
 * @property string $title
 * @property string $content
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Page|null $page
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation wherePageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PageTranslation whereUpdatedAt($value)
 */
	class PageTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Permission
 *
 * @property int $id
 * @property string $name
 * @property string|null $parent
 * @property string $guard_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Permission newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Permission newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Permission query()
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereGuardName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereParent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Permission whereUpdatedAt($value)
 */
	class Permission extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Product
 *
 * @property int $id
 * @property int|null $shop_id
 * @property string $name
 * @property int|null $brand_id
 * @property string|null $photos
 * @property string|null $thumbnail_img
 * @property string|null $tags
 * @property string|null $description
 * @property float $lowest_price
 * @property float $highest_price
 * @property float $discount
 * @property string $discount_type
 * @property int|null $discount_start_date
 * @property int|null $discount_end_date
 * @property int $stock
 * @property int $published
 * @property string|null $unit
 * @property int $min_qty
 * @property int $max_qty
 * @property int $is_variant
 * @property int $has_warranty
 * @property string|null $tax
 * @property int $standard_delivery_time
 * @property int $express_delivery_time
 * @property float $weight
 * @property float $height
 * @property float $length
 * @property float $width
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property int|null $meta_image
 * @property string $slug
 * @property float $rating
 * @property int $num_of_sale
 * @property float $earn_point
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductAttributeValue> $attribute_values
 * @property-read int|null $attribute_values_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductAttribute> $attributes
 * @property-read int|null $attributes_count
 * @property-read \App\Models\Brand|null $brand
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Cart> $carts
 * @property-read int|null $carts_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Category> $categories
 * @property-read int|null $categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OfferProduct> $offers
 * @property-read int|null $offers_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OrderDetail> $orderDetails
 * @property-read int|null $order_details_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductCategory> $product_categories
 * @property-read int|null $product_categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Tax> $product_taxes
 * @property-read int|null $product_taxes_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductTranslation> $product_translations
 * @property-read int|null $product_translations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews
 * @property-read int|null $reviews_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews_1
 * @property-read int|null $reviews_1_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews_2
 * @property-read int|null $reviews_2_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews_3
 * @property-read int|null $reviews_3_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews_4
 * @property-read int|null $reviews_4_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews_5
 * @property-read int|null $reviews_5_count
 * @property-read \App\Models\Shop|null $shop
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductTax> $taxes
 * @property-read int|null $taxes_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductVariationCombination> $variation_combinations
 * @property-read int|null $variation_combinations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductVariation> $variations
 * @property-read int|null $variations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Wishlist> $wishlists
 * @property-read int|null $wishlists_count
 * @method static \Illuminate\Database\Eloquent\Builder|Product newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product query()
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereBrandId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDiscount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDiscountEndDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDiscountStartDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDiscountType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereEarnPoint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereExpressDeliveryTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereHasWarranty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereHeight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereHighestPrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereIsVariant($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereLength($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereLowestPrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereMaxQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereMetaImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereMinQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereNumOfSale($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product wherePhotos($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product wherePublished($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereRating($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereStandardDeliveryTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereTags($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereThumbnailImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereWeight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereWidth($value)
 */
	class Product extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductAttribute
 *
 * @property int $id
 * @property int $product_id
 * @property int $attribute_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Attribute|null $attribute
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttribute whereUpdatedAt($value)
 */
	class ProductAttribute extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductAttributeValue
 *
 * @property int $id
 * @property int $product_id
 * @property int $attribute_id
 * @property int $attribute_value_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Attribute|null $attribute
 * @property-read \App\Models\Product|null $product
 * @property-read \App\Models\AttributeValue|null $value
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereAttributeValueId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductAttributeValue whereUpdatedAt($value)
 */
	class ProductAttributeValue extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductCategory
 *
 * @property int $id
 * @property int $product_id
 * @property int $category_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\Category|null $category
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductCategory whereUpdatedAt($value)
 */
	class ProductCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductTax
 *
 * @property int $id
 * @property int $product_id
 * @property int $tax_id
 * @property float $tax
 * @property string $tax_type
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereTaxId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereTaxType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTax whereUpdatedAt($value)
 */
	class ProductTax extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductTranslation
 *
 * @property int $id
 * @property int $product_id
 * @property string|null $name
 * @property string|null $unit
 * @property string|null $description
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductTranslation whereUpdatedAt($value)
 */
	class ProductTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductVariation
 *
 * @property int $id
 * @property int $product_id
 * @property string|null $code
 * @property string|null $sku
 * @property float $price
 * @property int $stock
 * @property int|null $img
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductVariationCombination> $combinations
 * @property-read int|null $combinations_count
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereSku($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariation whereUpdatedAt($value)
 */
	class ProductVariation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductVariationCombination
 *
 * @property int $id
 * @property int $product_id
 * @property int $product_variation_id
 * @property int $attribute_id
 * @property int $attribute_value_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Attribute|null $attribute
 * @property-read \App\Models\AttributeValue|null $attribute_value
 * @property-read \App\Models\Product|null $product
 * @property-read \App\Models\ProductVariation|null $variation
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereAttributeValueId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereProductVariationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductVariationCombination whereUpdatedAt($value)
 */
	class ProductVariationCombination extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\RefundRequest
 *
 * @property int $id
 * @property int $order_id
 * @property int $user_id
 * @property int $shop_id
 * @property int $admin_approval 0= Pending,
 * 1= Accepted,
 * 2= Rejected
 * @property int $seller_approval 0= Pending,
 * 1= Accepted,
 * 2= Rejected
 * @property float $amount
 * @property string|null $reasons
 * @property string|null $refund_note
 * @property string|null $attachments
 * @property string|null $payment_type
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Order|null $order
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RefundRequestItem> $refundRequestItems
 * @property-read int|null $refund_request_items_count
 * @property-read \App\Models\Shop|null $shop
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereAdminApproval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereAttachments($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest wherePaymentType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereReasons($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereRefundNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereSellerApproval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequest whereUserId($value)
 */
	class RefundRequest extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\RefundRequestItem
 *
 * @property int $id
 * @property int $refund_request_id
 * @property int $order_detail_id
 * @property int $quantity
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\OrderDetail|null $orderDetail
 * @property-read \App\Models\RefundRequest|null $refundRequest
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem query()
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereOrderDetailId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereRefundRequestId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RefundRequestItem whereUpdatedAt($value)
 */
	class RefundRequestItem extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Review
 *
 * @property int $id
 * @property int|null $shop_id
 * @property int $product_id
 * @property int $user_id
 * @property int $rating
 * @property string $comment
 * @property int $status
 * @property int $viewed
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\Product|null $product
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Review newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Review newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Review query()
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereComment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereRating($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Review whereViewed($value)
 */
	class Review extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Role
 *
 * @property int $id
 * @property string $name
 * @property string $guard_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Role newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Role newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Role query()
 * @method static \Illuminate\Database\Eloquent\Builder|Role whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Role whereGuardName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Role whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Role whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Role whereUpdatedAt($value)
 */
	class Role extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Search
 *
 * @property int $id
 * @property string $query
 * @property int $count
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Search newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Search newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Search query()
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereQuery($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Search whereUpdatedAt($value)
 */
	class Search extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\SellerPackage
 *
 * @property int $id
 * @property string|null $name
 * @property float $amount
 * @property float $commission
 * @property int $product_upload_limit
 * @property string|null $logo
 * @property int $duration
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\SellerPackageTranslation> $seller_package_translations
 * @property-read int|null $seller_package_translations_count
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage query()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereCommission($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereDuration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereProductUploadLimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackage whereUpdatedAt($value)
 */
	class SellerPackage extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\SellerPackagePayment
 *
 * @property int $id
 * @property int $user_id
 * @property int $seller_package_id
 * @property float $amount
 * @property string $payment_method
 * @property string|null $payment_details
 * @property int $approval
 * @property int $offline_payment 1=offline payment
 * 2=online paymnet
 * @property string $reciept
 * @property string|null $transaction_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\SellerPackage|null $seller_package
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment query()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereApproval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereOfflinePayment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment wherePaymentDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment wherePaymentMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereReciept($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereSellerPackageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereTransactionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackagePayment whereUserId($value)
 */
	class SellerPackagePayment extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\SellerPackageTranslation
 *
 * @property int $id
 * @property int $seller_package_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\SellerPackage|null $seller_package
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereSellerPackageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPackageTranslation whereUpdatedAt($value)
 */
	class SellerPackageTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\SellerPayout
 *
 * @property int $id
 * @property int $shop_id
 * @property string|null $status
 * @property float $requested_amount
 * @property float $paid_amount
 * @property string|null $seller_note
 * @property string|null $payment_details
 * @property string|null $payment_method
 * @property string|null $txn_code
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Shop|null $shop
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout query()
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout wherePaidAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout wherePaymentDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout wherePaymentMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereRequestedAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereSellerNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereTxnCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SellerPayout whereUpdatedAt($value)
 */
	class SellerPayout extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Setting
 *
 * @property int $id
 * @property string $type
 * @property string|null $value
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Setting newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting query()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereValue($value)
 */
	class Setting extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Shop
 *
 * @property int $id
 * @property int $user_id
 * @property int $approval
 * @property int $published
 * @property string|null $name
 * @property int|null $logo
 * @property float $min_order
 * @property float $rating
 * @property string|null $phone
 * @property string|null $address
 * @property string|null $banners
 * @property string|null $slug
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property string|null $featured_products
 * @property string|null $products_banners
 * @property string|null $banners_1
 * @property string|null $banners_2
 * @property string|null $banners_3
 * @property string|null $banners_4
 * @property int|null $seller_package_id
 * @property int $product_upload_limit
 * @property float|null $commission
 * @property string|null $package_invalid_at
 * @property float $current_balance
 * @property int $cash_payout_status
 * @property int $bank_payout_status
 * @property string|null $bank_name
 * @property string|null $bank_acc_name
 * @property string|null $bank_acc_no
 * @property int|null $bank_routing_no
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Brand> $brands
 * @property-read int|null $brands_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Category> $categories
 * @property-read int|null $categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\CommissionHistory> $commission_histories
 * @property-read int|null $commission_histories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Coupon> $coupons
 * @property-read int|null $coupons_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\User> $followers
 * @property-read int|null $followers_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Order> $orders
 * @property-read int|null $orders_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Product> $products
 * @property-read int|null $products_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews
 * @property-read int|null $reviews_count
 * @property-read \App\Models\SellerPackage|null $seller_package
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ShopCategory> $shop_categories
 * @property-read int|null $shop_categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Product> $top_3_products
 * @property-read int|null $top_3_products_count
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Shop newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Shop newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Shop query()
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereApproval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBankAccName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBankAccNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBankPayoutStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBankRoutingNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBanners($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBanners1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBanners2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBanners3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereBanners4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereCashPayoutStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereCommission($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereCurrentBalance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereFeaturedProducts($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereMinOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop wherePackageInvalidAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereProductUploadLimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereProductsBanners($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop wherePublished($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereRating($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereSellerPackageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Shop whereUserId($value)
 */
	class Shop extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ShopBrand
 *
 * @property int $id
 * @property int $shop_id
 * @property int $brand_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand query()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand whereBrandId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopBrand whereUpdatedAt($value)
 */
	class ShopBrand extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ShopCategory
 *
 * @property int $id
 * @property int $shop_id
 * @property int $category_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopCategory whereUpdatedAt($value)
 */
	class ShopCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ShopFollower
 *
 * @property int $id
 * @property int $shop_id
 * @property int $user_id
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower query()
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ShopFollower whereUserId($value)
 */
	class ShopFollower extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\State
 *
 * @property int $id
 * @property string $name
 * @property int $country_id
 * @property int $status
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\City> $cities
 * @property-read int|null $cities_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\StateTranslation> $cities_translations
 * @property-read int|null $cities_translations_count
 * @property-read \App\Models\Country|null $country
 * @method static \Illuminate\Database\Eloquent\Builder|State newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|State newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|State query()
 * @method static \Illuminate\Database\Eloquent\Builder|State whereCountryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|State whereUpdatedAt($value)
 */
	class State extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\StateTranslation
 *
 * @property int $id
 * @property int $state_id
 * @property string $name
 * @property string $lang
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\State|null $state
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation query()
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereStateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|StateTranslation whereUpdatedAt($value)
 */
	class StateTranslation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Subscriber
 *
 * @property int $id
 * @property string $email
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber query()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriber whereUpdatedAt($value)
 */
	class Subscriber extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Tax
 *
 * @property int $id
 * @property string $name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ProductTax> $product_taxes
 * @property-read int|null $product_taxes_count
 * @method static \Illuminate\Database\Eloquent\Builder|Tax newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Tax newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Tax query()
 * @method static \Illuminate\Database\Eloquent\Builder|Tax whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tax whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tax whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tax whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tax whereUpdatedAt($value)
 */
	class Tax extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Translation
 *
 * @property int $id
 * @property string|null $lang
 * @property string|null $lang_key
 * @property string|null $lang_value
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Translation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Translation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Translation query()
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereLangKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereLangValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Translation whereUpdatedAt($value)
 */
	class Translation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Upload
 *
 * @property int $id
 * @property string|null $file_original_name
 * @property string|null $file_name
 * @property int|null $user_id
 * @property int|null $file_size
 * @property string|null $extension
 * @property string|null $type
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Upload newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Upload newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Upload query()
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereExtension($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereFileName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereFileOriginalName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereFileSize($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Upload whereUserId($value)
 */
	class Upload extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property int $id
 * @property string|null $provider_id
 * @property string $user_type
 * @property int|null $role_id
 * @property int|null $shop_id
 * @property string $name
 * @property string|null $email
 * @property string|null $email_verified_at
 * @property string|null $phone_verified_at
 * @property string|null $verification_code
 * @property string|null $new_email_verificiation_code
 * @property string|null $password
 * @property string|null $remember_token
 * @property int|null $avatar
 * @property string|null $phone
 * @property float $balance
 * @property int $banned
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Address> $addresses
 * @property-read int|null $addresses_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Cart> $carts
 * @property-read int|null $carts_count
 * @property-read \App\Models\ChatThread|null $chat_thread
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Passport\Client> $clients
 * @property-read int|null $clients_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Conversation> $conversations
 * @property-read int|null $conversations_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Shop> $followed_shops
 * @property-read int|null $followed_shops_count
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Order> $orders
 * @property-read int|null $orders_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Permission> $permissions
 * @property-read int|null $permissions_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Review> $reviews
 * @property-read int|null $reviews_count
 * @property-read \App\Models\Role|null $role
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Role> $roles
 * @property-read int|null $roles_count
 * @property-read \App\Models\Shop|null $shop
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Passport\Token> $tokens
 * @property-read int|null $tokens_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Wallet> $wallets
 * @property-read int|null $wallets_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Wishlist> $wishlists
 * @property-read int|null $wishlists_count
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User permission($permissions)
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 * @method static \Illuminate\Database\Eloquent\Builder|User role($roles, $guard = null)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereBalance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereBanned($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereNewEmailVerificiationCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePhoneVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereProviderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRoleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereShopId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUserType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereVerificationCode($value)
 */
	class User extends \Eloquent implements \Illuminate\Contracts\Auth\MustVerifyEmail {}
}

namespace App\Models{
/**
 * App\Models\Wallet
 *
 * @property int $id
 * @property int $user_id
 * @property float $amount
 * @property string|null $payment_method
 * @property string|null $payment_details
 * @property int $approval
 * @property int $offline_payment
 * @property string|null $reciept
 * @property string $type Added/Deducted
 * @property string|null $details
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet query()
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereApproval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereOfflinePayment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet wherePaymentDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet wherePaymentMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereReciept($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wallet whereUserId($value)
 */
	class Wallet extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Wishlist
 *
 * @property int $id
 * @property int $user_id
 * @property int $product_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \App\Models\Product|null $product
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist query()
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wishlist whereUserId($value)
 */
	class Wishlist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Zone
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $cities
 * @property float $standard_delivery_cost
 * @property float $express_delivery_cost
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|Zone newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Zone newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Zone query()
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereCities($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereExpressDeliveryCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereStandardDeliveryCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Zone whereUpdatedAt($value)
 */
	class Zone extends \Eloquent {}
}

