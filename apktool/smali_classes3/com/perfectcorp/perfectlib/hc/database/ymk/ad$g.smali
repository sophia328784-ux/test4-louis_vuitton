.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;
.super Ljava/lang/Object;


# instance fields
.field private final colorNumber:Ljava/lang/String;

.field private final customerInfo:Ljava/lang/String;

.field private final displayColorList:Ljava/lang/String;

.field private final freeSampleUrl:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final isDeleted:I

.field private final isHiddenIntensitySliderHidden:Ljava/lang/String;

.field private final isHot:I

.field private final isIntensitySliderHidden:Ljava/lang/String;

.field private final isRadiusSliderHidden:Ljava/lang/String;

.field private final isShineIntensitySliderHidden:Ljava/lang/String;

.field private final itemDescription:Ljava/lang/String;

.field private final itemLongName:Ljava/lang/String;

.field private final itemName:Ljava/lang/String;

.field private final itemPaletteThumbnail:Ljava/lang/String;

.field private final itemThumbnailIndexedPath:Ljava/lang/String;

.field private final itemThumbnailPath:Ljava/lang/String;

.field private final moreInfoUrl:Ljava/lang/String;

.field private final shoppingUrl:Ljava/lang/String;

.field private final skuGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->guid:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->skuGuid:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->hot:Z

    iput p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isHot:I

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->freeSampleURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->freeSampleUrl:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->shoppingURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->shoppingUrl:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->moreInfoURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->moreInfoUrl:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemDescription:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->customerInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->customerInfo:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isDeleted:I

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v2, "item_thumbnail"

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemThumbnailPath:Ljava/lang/String;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v2, "item_thumbnail_indexed"

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemThumbnailIndexedPath:Ljava/lang/String;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v2, "item_palette_thumbnail"

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemPaletteThumbnail:Ljava/lang/String;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->display_color:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$a;->attr_color_list:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "DatabaseUpgrade_1_21"

    const-string v3, "[getDisplayColor]"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->displayColorList:Ljava/lang/String;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->palettes:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->palettes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_color_number:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->colorNumber:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v0, "item_name"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemName:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v0, "item_long_name"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemLongName:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v0, "item_intensity_slider"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isIntensitySliderHidden:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v0, "item_radius_slider"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isRadiusSliderHidden:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string v0, "item_hidden_intensity_slider"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isHiddenIntensitySliderHidden:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const-string p2, "item_shine_intensity_slider"

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isShineIntensitySliderHidden:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "itemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->skuGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isHot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isHot"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "freeSampleUrl"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->freeSampleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shoppingUrl"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->shoppingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "moreInfoUrl"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->moreInfoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemDescription"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "customerInfo"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->customerInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isDeleted:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isDeleted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "itemThumbnailPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemThumbnailIndexedPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemThumbnailIndexedPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemPaletteThumbnail"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemPaletteThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayColorList"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->displayColorList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "colorNumber"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->colorNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemName"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemLongName"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->itemLongName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isIntensitySliderHidden"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isIntensitySliderHidden:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isRadiusSliderHidden"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isRadiusSliderHidden:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isHiddenIntensitySliderHidden"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isHiddenIntensitySliderHidden:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isShineIntensitySliderHidden"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->isShineIntensitySliderHidden:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
