.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFaceRegionOccludeMetadata"
.end annotation


# instance fields
.field height:I

.field public is_valid:Z

.field mask_roi_normalized_bottom:F

.field mask_roi_normalized_left:F

.field mask_roi_normalized_right:F

.field mask_roi_normalized_top:F

.field public p_buffer:[B

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->width:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_left:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_top:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_right:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_bottom:F

    return-void
.end method


# virtual methods
.method public AllocByteArray(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->is_valid:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->is_valid:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->width:I

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->AllocByteArray(II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->p_buffer:[B

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->width:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->height:I

    mul-int/2addr v2, v3

    sget v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x7:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_left:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_left:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_top:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_top:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_right:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_right:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_bottom:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;->mask_roi_normalized_bottom:F

    :cond_2
    return-void
.end method
