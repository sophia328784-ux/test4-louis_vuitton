.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_OBJECT_COUNT:I = 0x32


# instance fields
.field base_x:F

.field base_y:F

.field base_z:F

.field center_x:F

.field center_y:F

.field center_z:F

.field damping:F

.field public is_valid:Z

.field length:F

.field mass:F

.field parent_index:I

.field radius_x:F

.field radius_y:F

.field radius_z:F

.field rotation:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->is_valid:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->mass:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->length:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->rotation:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->damping:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->parent_index:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_z:F

    return-void
.end method


# virtual methods
.method public final Copy(Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->is_valid:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->is_valid:Z

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->mass:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->mass:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->length:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->length:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->radius_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->rotation:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->rotation:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->damping:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->damping:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->parent_index:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->parent_index:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->base_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_y:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_z:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;->center_z:F

    return-void
.end method
