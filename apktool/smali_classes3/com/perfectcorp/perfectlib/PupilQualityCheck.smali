.class public final Lcom/perfectcorp/perfectlib/PupilQualityCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;,
        Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;,
        Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;,
        Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    return-void
.end method


# virtual methods
.method public final getFaceAreaQuality()Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_face_area_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->OUT_OF_BOUNDARY:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->TOO_LARGE:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->TOO_SMALL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0
.end method

.method public final getFaceFrontalQuality()Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_face_frontal_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->BAD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-object p0
.end method

.method public final getLightingQuality()Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_lighting_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->UNEVEN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->NORMAL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->DARK:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0
.end method

.method public final getNakedEyeQuality()Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_naked_eye_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;->NO:Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;->YES:Lcom/perfectcorp/perfectlib/PupilQualityCheck$NakedEyeQuality;

    return-object p0
.end method
