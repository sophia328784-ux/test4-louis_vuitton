.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveCubeEyewearMetaData"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public is_flip:Z

.field public is_valid:Z

.field public normal_pnp_matrices:[F

.field public pd_scale:F

.field public pnp_matrices:[F

.field public pose_parameters:[F

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->is_valid:Z

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pose_parameters:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pnp_matrices:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->camera_matrix:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->normal_pnp_matrices:[F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->is_valid:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pd_scale:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pd_scale:F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pose_parameters:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pose_parameters:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pnp_matrices:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->pnp_matrices:[F

    const/16 v2, 0xc

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->camera_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->camera_matrix:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->normal_pnp_matrices:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;->normal_pnp_matrices:[F

    const/16 v0, 0x10

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
