.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeethWhitenMetaData"
.end annotation


# instance fields
.field public m_background_image_height:I

.field public m_background_image_width:I

.field public m_is_flipped:Z

.field public m_is_valid:Z

.field public m_mask_height:I

.field public m_mask_width:I

.field public m_mouth_mask_data:[B

.field public m_roi_height:I

.field public m_roi_width:I

.field public m_roi_x:I

.field public m_roi_y:I

.field public m_rotation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AllocByteArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mouth_mask_data:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;)V
    .locals 1

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mouth_mask_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mouth_mask_data:[B

    :cond_1
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_rotation:I

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_is_flipped:Z

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_is_flipped:Z

    return-void
.end method
