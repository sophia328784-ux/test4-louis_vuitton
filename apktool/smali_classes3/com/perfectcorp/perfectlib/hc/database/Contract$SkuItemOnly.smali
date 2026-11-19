.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItemOnly;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkuItemOnly"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v20, "isShineIntensitySliderHidden"

    const-string v21, "extraData"

    const-string v1, "itemGuid"

    const-string v2, "skuGuid"

    const-string v3, "isHot"

    const-string v4, "freeSampleUrl"

    const-string v5, "shoppingUrl"

    const-string v6, "moreInfoUrl"

    const-string v7, "itemDescription"

    const-string v8, "customerInfo"

    const-string v9, "isDeleted"

    const-string v10, "itemThumbnailPath"

    const-string v11, "itemThumbnailIndexedPath"

    const-string v12, "itemPaletteThumbnail"

    const-string v13, "displayColorList"

    const-string v14, "colorNumber"

    const-string v15, "itemName"

    const-string v16, "itemLongName"

    const-string v17, "isIntensitySliderHidden"

    const-string v18, "isRadiusSliderHidden"

    const-string v19, "isHiddenIntensitySliderHidden"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItemOnly;->a:[Ljava/lang/String;

    const-string v0, "itemGuid"

    const-string v1, "index_sku_item_guid"

    const-string v2, "SkuItemOnly"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_sku_item_sku_guid"

    const-string v3, "skuGuid"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItemOnly;->b:Ljava/util/List;

    return-void
.end method
