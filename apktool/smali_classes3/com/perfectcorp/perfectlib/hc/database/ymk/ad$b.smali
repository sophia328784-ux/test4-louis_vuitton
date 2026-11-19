.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;
.super Ljava/lang/Object;


# instance fields
.field public final attr_color_intensities:Ljava/lang/String;

.field public final attr_color_number:Ljava/lang/String;

.field public final attr_contrast:Ljava/lang/String;

.field public final attr_diffuse:Ljava/lang/String;

.field public final attr_finish_type:Ljava/lang/String;

.field public final attr_guid:Ljava/lang/String;

.field public final attr_hair_dye_mode:Ljava/lang/String;

.field public final attr_light:Ljava/lang/String;

.field public final attr_reflection:Ljava/lang/String;

.field public final attr_roughness:Ljava/lang/String;

.field public final attr_shine_intensities:Ljava/lang/String;

.field public final attr_sku_guid:Ljava/lang/String;

.field public final attr_subtype:Ljava/lang/String;

.field public final attr_thumbnail:Ljava/lang/String;

.field public final attr_transparency:Ljava/lang/String;

.field public final color_is_shimmers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final engine_colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final shimmer_intensities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final supported_patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final textures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_sku_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_thumbnail:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_color_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_subtype:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_color_intensities:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_shine_intensities:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_hair_dye_mode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_transparency:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_light:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_diffuse:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_reflection:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_contrast:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_roughness:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->attr_finish_type:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->name:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->patterns:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->colors:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->engine_colors:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->shimmer_intensities:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->color_is_shimmers:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->styles:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->supported_patterns:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$b;->textures:Ljava/util/List;

    return-void
.end method
