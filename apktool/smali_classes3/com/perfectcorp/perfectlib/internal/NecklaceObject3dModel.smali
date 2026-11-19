.class public Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;
.super Ljava/lang/Object;


# instance fields
.field public necklace_HDR_texture_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;",
            ">;"
        }
    .end annotation
.end field

.field public necklace_models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;",
            ">;"
        }
    .end annotation
.end field

.field public necklace_occluder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;",
            ">;"
        }
    .end annotation
.end field

.field public necklace_texture_maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_models:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_texture_maps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_HDR_texture_map:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_occluder:Ljava/util/List;

    return-void
.end method
