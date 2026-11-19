.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFaceReshapeMetadata"
.end annotation


# instance fields
.field public is_flip:Z

.field public is_valid:Z

.field public rotation:I

.field public table_height:I

.field public table_width:I

.field public view_frame_height:I

.field view_frame_roi_height:I

.field view_frame_roi_start_x:I

.field view_frame_roi_start_y:I

.field view_frame_roi_width:I

.field public view_frame_width:I

.field public warp_table:[B

.field public warp_value_factor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    return-void
.end method


# virtual methods
.method public AllocateArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->CopyScalar(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;)V

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    if-lez v0, :cond_1

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    return-void
.end method

.method public CopyScalar(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;)V
    .locals 1

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_value_factor:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_value_factor:F

    return-void
.end method
