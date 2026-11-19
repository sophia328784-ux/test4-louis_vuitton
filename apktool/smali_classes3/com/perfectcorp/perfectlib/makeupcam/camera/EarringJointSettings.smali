.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_JOINT_COUNT:I = 0x32


# instance fields
.field index1:I

.field index2:I

.field position_x:F

.field position_y:F

.field position_z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index1:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_z:F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index1:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index1:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index2:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->index2:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_y:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_z:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;->position_z:F

    return-void
.end method
