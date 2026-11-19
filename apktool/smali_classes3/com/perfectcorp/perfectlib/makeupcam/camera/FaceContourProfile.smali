.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;
.super Ljava/lang/Object;


# instance fields
.field public m_data:[B

.field public m_height:I

.field public m_roi_start:Landroid/graphics/Point;

.field public m_stride:I

.field public m_width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_roi_start:Landroid/graphics/Point;

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_stride:I

    return-void
.end method

.method public static newProfile()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;-><init>()V

    return-object v0
.end method


# virtual methods
.method public AllocByteArray(III)V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_stride:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_stride:I

    mul-int/2addr p3, p2

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    return-void
.end method

.method public InitWithDummyData()V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_stride:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    mul-int/2addr v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_roi_start:Landroid/graphics/Point;

    return-void
.end method
