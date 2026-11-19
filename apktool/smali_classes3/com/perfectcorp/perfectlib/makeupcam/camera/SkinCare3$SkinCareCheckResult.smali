.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;
.super Ljava/lang/Object;


# instance fields
.field public m_face_area_quality:I

.field public m_face_center_quality:I

.field public m_face_frontal_quality:I

.field public m_is_face_detected:Z

.field public m_lighting_quality:I

.field public m_naked_eye_quality:I

.field public m_pitch:F

.field public m_roll:F

.field public m_yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_area_quality:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_area_quality:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_frontal_quality:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_frontal_quality:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_lighting_quality:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_lighting_quality:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_naked_eye_quality:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_naked_eye_quality:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_center_quality:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_face_center_quality:I

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_is_face_detected:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_is_face_detected:Z

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_roll:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_roll:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_pitch:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_pitch:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_yaw:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;->m_yaw:F

    return-void
.end method
