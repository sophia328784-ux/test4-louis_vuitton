.class public final Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;,
        Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;,
        Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    return-void
.end method


# virtual methods
.method public final getFaceAreaQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_area_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;->OUT_OF_BOUNDARY:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;->TOO_SMALL:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    return-object p0
.end method

.method public final getFrontalFaceQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_frontal_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;->BAD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;

    return-object p0
.end method

.method public final getLightingQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_lighting_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->UNEVEN:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->NORMAL:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->DARK:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    return-object p0
.end method

.method public final isValid()Z
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_frontal_quality:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_area_quality:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_lighting_quality:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
