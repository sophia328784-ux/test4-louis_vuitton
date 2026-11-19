.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;
    }
.end annotation


# instance fields
.field public final colorReferences:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "color_references"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public final featherStrength:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "feather_strength"
    .end annotation
.end field

.field public final fullness:I

.field public final gloss:I

.field public final innerRatio:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "inner_ratio"
    .end annotation
.end field

.field public final patterns:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "pattern"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;",
            ">;"
        }
    .end annotation
.end field

.field final shimmerColor:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_color"
    .end annotation
.end field

.field public final shimmerDensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_density"
    .end annotation
.end field

.field public final shimmerGranularity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_granularity"
    .end annotation
.end field

.field public final shimmerIntensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_intensity"
    .end annotation
.end field

.field public final skuSetGuid:Ljava/lang/String;

.field public final styleGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "style_guid"
    .end annotation
.end field

.field public final thumbnail:Ljava/lang/String;

.field public final transparency:I

.field public final wearingStyleGuid:Ljava/lang/String;

.field public final wrinkless:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->skuSetGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wearingStyleGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->styleGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->thumbnail:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->innerRatio:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->featherStrength:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->gloss:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->transparency:I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerColor:Ljava/lang/String;

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerIntensity:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerDensity:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerGranularity:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->fullness:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wrinkless:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->patterns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerColor:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
