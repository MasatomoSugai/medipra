# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
 2.6.5p114 (2019-10-01 revision 67812)

* Ruby on Rails version
 6.0.0

* MySql version
 Ver 14.14 Distrib 5.6.43,
 
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


## DB
### products Table
使用ファイル：
https://shinryohoshu.mhlw.go.jp/shinryohoshu/downloadMenu/


参考：厚生労働省(薬価基準収載品目リスト及び後発医薬品に関する情報について)
ファイル更新の際は、厚労省から

|column      |    type |   options    |備考|
|:----------------:|:-----------------:|:------------------:|:------------------:|
| 変更区分 change_category       |  integer   |       ||
| マスター種別 master_type   |   string |       |Y:固定|
| 医薬品コード（医薬品名、規格名）pharmaceutical_code |   integer |    ||
| 漢字有効桁数 kanji_significant_digits    |    integer |      ||
|漢字名称  kanji_name  |   string |    index  ||
| カナ有効桁数 kana_significant_digits |   integer |     | |
| カナ名称 kana_name | string  |   ||
| 単位コード unit_code | integer  |   ||
| 単位漢字有効桁数 unit_significant_digits | integer  |   ||
| 単位漢字名称 unit_name | string  |  index ||
| 金額種別 price_type| integer  |   ||
| 新又は現金額 price | integer  |   ||
| 予備 spare | integer  |   |未使用（すべて0）|
| 麻薬・毒薬・覚せい剤原料・向精神薬 n_p_s_p_drugs| integer  |   ||
| 神経破壊剤 nerve_destroyer| integer  |   ||
| 生物学的製剤 biologics| integer  |   ||
| 後発品 generic| integer  |  index ||
| 予備 spare_2|  integer |   |未使用（全て０）|
| 歯科特定薬剤 dental_drugs| integer  |   ||
| 造影（補助）剤 contrast_agent| integer  |   ||
| 注射容量 injection_volume | integer  |   ||
| 収載方式等識別 listing_type| integer  | |  |
| 商品名等関連product_name_relations | integer  |   ||
| 旧金額種別 old_price_type | integer  |   ||
| 旧金額 old_price | integer  |   ||
| 漢字名称変更区分 name_change_category| integer  |   ||
| カナ名称変更区分 kana_name_change_category| integer  |   ||
| 剤形 dosage_form | integer  |   ||
| 予備 spare_3 | integer  |   |未使用(null）|
| 変更年月日 changed_date | integer  |   ||
| 廃止年月日 abolition_date| integer  |   ||
| 薬価基準コード standard_code| string  |   ||
| 公表順序番号 order_number| integer  |   ||
| 経過措置年月日又は商品名医薬品コード使用期限 expiration_date | integer  |   ||
| 基本漢字名称 standard_name| string  |   ||



