.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEyeContactMetadata"
.end annotation


# instance fields
.field public m_analyzing_frame_height:I

.field public m_analyzing_frame_width:I

.field public m_iris_radius:F

.field public m_iris_radius_in_image:F

.field public m_is_flipped:Z

.field public m_is_valid:Z

.field public m_left_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

.field public m_oval_scale:F

.field public m_right_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

.field public m_rotate_degree:F

.field public m_rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_left_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_right_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;)V
    .locals 2

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_left_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_left_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    invoke-virtual {v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_right_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_right_eye_info:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;

    invoke-virtual {v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_iris_radius:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_iris_radius:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_iris_radius_in_image:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_iris_radius_in_image:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_rotate_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_rotate_degree:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_oval_scale:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_oval_scale:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_analyzing_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_analyzing_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_analyzing_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_analyzing_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_rotation:I

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_is_flipped:Z

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;->m_is_flipped:Z

    return-void
.end method
