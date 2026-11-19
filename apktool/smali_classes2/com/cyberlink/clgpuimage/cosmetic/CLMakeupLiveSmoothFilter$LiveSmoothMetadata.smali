.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;
.super Ljava/lang/Object;


# instance fields
.field public m_color_intensity:F

.field public m_intensity:F

.field public m_v2_color_intensity:F

.field public m_v2_intensity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;)V
    .locals 1

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_intensity:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_intensity:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_color_intensity:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_color_intensity:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_v2_intensity:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_v2_intensity:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_v2_color_intensity:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;->m_v2_color_intensity:F

    return-void
.end method
