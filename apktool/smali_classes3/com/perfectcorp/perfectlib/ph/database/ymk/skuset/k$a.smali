.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final colorIntensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "color_intensity"
    .end annotation
.end field

.field public final itemGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "item_guid"
    .end annotation
.end field

.field public final paletteColorIndex:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "palette_color_index"
    .end annotation
.end field

.field public final paletteGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "palette_guid"
    .end annotation
.end field

.field public final patternGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "pattern_guid"
    .end annotation
.end field

.field public final skuGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "sku_guid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->skuGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->itemGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->patternGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteColorIndex:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->colorIntensity:I

    return-void
.end method
