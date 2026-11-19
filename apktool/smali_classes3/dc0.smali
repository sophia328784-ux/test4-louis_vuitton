.class public final synthetic Ldc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc0;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput p2, p0, Ldc0;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ldc0;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e0:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;

    array-length v4, v3

    iget v5, p0, Ldc0;->c:F

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    iput v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;->O:F

    invoke-virtual {v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;->G()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {p0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y0(F)V

    return-void
.end method
