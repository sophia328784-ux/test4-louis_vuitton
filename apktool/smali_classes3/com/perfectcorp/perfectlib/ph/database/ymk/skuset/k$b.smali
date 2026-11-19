.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final itemGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "item_guid"
    .end annotation
.end field

.field public final objectDistanceRatio:F
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "object_distance_ratio"
    .end annotation
.end field

.field public final objectDistanceRatioBack:F
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "object_distance_ratio_back"
    .end annotation
.end field

.field public final objectDistanceRatioPalm:F
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "object_distance_ratio_palm"
    .end annotation
.end field

.field public final patternGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "pattern_guid"
    .end annotation
.end field

.field public final position:Ljava/lang/String;

.field public final skuGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "sku_guid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->skuGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->itemGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->patternGuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatio:F

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->position:Ljava/lang/String;

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatioBack:F

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatioPalm:F

    return-void
.end method
