.class public final Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorReference"
.end annotation


# instance fields
.field public final itemGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "attr_item_guid"
    .end annotation
.end field

.field public final paletteColorIndex:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "attr_palette_color_index"
    .end annotation
.end field

.field public final paletteGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "attr_palette_guid"
    .end annotation
.end field

.field public final patternGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "attr_pattern_guid"
    .end annotation
.end field

.field public final skuGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "attr_sku_guid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->paletteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->skuGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->itemGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->paletteColorIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->patternGuid:Ljava/lang/String;

    return-void
.end method
