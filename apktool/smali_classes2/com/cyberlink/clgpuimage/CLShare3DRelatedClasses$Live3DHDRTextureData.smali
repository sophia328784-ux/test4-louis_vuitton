.class public Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Live3DHDRTextureData"
.end annotation


# instance fields
.field public hdrBuffer:[B

.field public height:I

.field public isHDR:Z

.field public object_indices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public stride:I

.field public texture_channel:I

.field public texture_id:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->object_indices:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->texture_id:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->stride:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->texture_channel:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->isHDR:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->hdrBuffer:[B

    return-void
.end method


# virtual methods
.method public Allocate(III)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->height:I

    mul-int/2addr p3, p1

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->stride:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->isHDR:Z

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;->hdrBuffer:[B

    return-void
.end method
