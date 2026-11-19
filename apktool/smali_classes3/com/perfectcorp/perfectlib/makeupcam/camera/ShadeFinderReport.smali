.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;
.super Ljava/lang/Object;


# instance fields
.field public adaptive_skin_tone_lab_a:F

.field public adaptive_skin_tone_lab_b:F

.field public adaptive_skin_tone_lab_l:F

.field public fitzpatrick_scale:I

.field public report_id:I

.field public report_time:D

.field public rm200qc_skin_tone_lab_a:F

.field public rm200qc_skin_tone_lab_b:F

.field public rm200qc_skin_tone_lab_l:F

.field public skin_color_rgb_b:I

.field public skin_color_rgb_g:I

.field public skin_color_rgb_r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_time:D

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_time:D

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_r:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_r:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_g:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_g:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_b:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_l:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_l:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_a:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_a:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_b:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_b:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_l:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_l:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_a:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_a:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_b:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_b:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->fitzpatrick_scale:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->fitzpatrick_scale:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "ShadeFinderReport"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_id"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_time:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_time"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "skin_color_rgb"

    invoke-virtual {v0, v5, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_l:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_a:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_b:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "adaptive_skin_tone_lab"

    invoke-virtual {v0, v5, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_l:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rm200qc_skin_tone_lab"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->fitzpatrick_scale:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fitzpatrick_scale"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
