.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_CHAIN_COUNT:I = 0x32


# instance fields
.field anchor:I

.field axis1_x:F

.field axis1_y:F

.field axis1_z:F

.field axis2_x:F

.field axis2_y:F

.field axis2_z:F

.field axis3_x:F

.field axis3_y:F

.field axis3_z:F

.field axis_scale_x:F

.field axis_scale_y:F

.field axis_scale_z:F

.field base_x:F

.field base_y:F

.field base_z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->anchor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_z:F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->anchor:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->anchor:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->base_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis1_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis2_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis3_z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_y:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_z:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;->axis_scale_z:F

    return-void
.end method
