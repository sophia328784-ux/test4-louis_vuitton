.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;
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

.field public final metallicIntensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "metallic_intensity"
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

.field public final shimmerIntensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_intensity"
    .end annotation
.end field

.field public final shineIntensity:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shine_intensity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->colorIntensity:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shineIntensity:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shimmerIntensity:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->metallicIntensity:I

    return-void
.end method
