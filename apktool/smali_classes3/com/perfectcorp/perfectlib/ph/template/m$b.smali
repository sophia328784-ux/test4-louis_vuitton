.class public final Lcom/perfectcorp/perfectlib/ph/template/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/m$b$a;
    }
.end annotation


# instance fields
.field public final color:Ljava/lang/String;

.field public final contrast:Ljava/lang/String;

.field public final eyebrowMode:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "eyebrow_mode"
    .end annotation
.end field

.field public final eyebrowMode3D:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "eyebrow_mode_3d"
    .end annotation
.end field

.field public final faceArtLayer2:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "face_art_layer2"
    .end annotation
.end field

.field public final finishType:Ljava/lang/String;

.field public final fullness:Ljava/lang/String;

.field public final hairDyePatternType:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public final light:Ljava/lang/String;

.field public final lipstickType:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "lipstick_type"
    .end annotation
.end field

.field public final lowerEnlarge:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "lower_enlarge"
    .end annotation
.end field

.field public final ombreLineOffset:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "ombre_line_offset"
    .end annotation
.end field

.field public final ombreRange:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "ombre_range"
    .end annotation
.end field

.field public final position:Ljava/lang/String;

.field public final reflection:Ljava/lang/String;

.field public final roughness:Ljava/lang/String;

.field public final shimmerGranularity:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_granularity"
    .end annotation
.end field

.field public final shimmerOpacity:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shimmer_opacity"
    .end annotation
.end field

.field public final textureMode:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "texture_mode"
    .end annotation
.end field

.field public final texturedGranularity:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "textured_granularity"
    .end annotation
.end field

.field public final tipRatioFore:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "tip_ratio_fore"
    .end annotation
.end field

.field public final tipRatioLittle:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "tip_ratio_little"
    .end annotation
.end field

.field public final tipRatioMiddle:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "tip_ratio_middle"
    .end annotation
.end field

.field public final tipRatioRing:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "tip_ratio_ring"
    .end annotation
.end field

.field public final tipRatioThumb:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "tip_ratio_thumb"
    .end annotation
.end field

.field public final transparency:Ljava/lang/String;

.field public final upperEnlarge:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "upper_enlarge"
    .end annotation
.end field

.field public final widthEnlarge:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "width_enlarge"
    .end annotation
.end field

.field public final wigColoringMode:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "wig_coloring_mode"
    .end annotation
.end field

.field public final wigModelMode:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "wig_model_mode"
    .end annotation
.end field

.field public final wrinkless:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lipstickType:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->eyebrowMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->eyebrowMode3D:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wigColoringMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->faceArtLayer2:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wigModelMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreRange:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreLineOffset:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->hairDyePatternType:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->widthEnlarge:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->upperEnlarge:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lowerEnlarge:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->transparency:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->light:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->reflection:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->contrast:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->roughness:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->finishType:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->textureMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->color:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioFore:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioMiddle:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioRing:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioLittle:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerOpacity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->texturedGranularity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerGranularity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->position:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->fullness:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wrinkless:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/template/m$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/m$b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lipstickType:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->eyebrowMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->eyebrowMode3D:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wigColoringMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->faceArtLayer2:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wigModelMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreRange:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreLineOffset:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->hairDyePatternType:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->widthEnlarge:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->upperEnlarge:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lowerEnlarge:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->transparency:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->light:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->reflection:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->contrast:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->roughness:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->finishType:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->textureMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->color:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioThumb:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioFore:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioMiddle:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioRing:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioLittle:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerOpacity:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->texturedGranularity:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerGranularity:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->position:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->fullness:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->E:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/m$b;->wrinkless:Ljava/lang/String;

    return-void
.end method
