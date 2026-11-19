.class public final synthetic Lbc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCam;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V
    .locals 0

    iput p2, p0, Lbc0;->b:I

    iput-object p1, p0, Lbc0;->c:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lbc0;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lbc0;->c:Lcom/perfectcorp/perfectlib/MakeupCam;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->b()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v3, 0x5a

    const/16 v4, 0x10e

    const/4 v5, 0x2

    const/16 v6, 0xb4

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    const/4 v7, 0x3

    if-eq v0, v7, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-boolean v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q:Z

    iget v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r:I

    if-eqz v7, :cond_3

    add-int/2addr v8, v0

    rem-int/lit16 v8, v8, 0x168

    rsub-int v7, v8, 0x168

    rem-int/lit16 v7, v7, 0x168

    goto :goto_1

    :cond_3
    sub-int/2addr v8, v0

    add-int/lit16 v8, v8, 0x168

    rem-int/lit16 v7, v8, 0x168

    :goto_1
    iput v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    if-eq v7, v3, :cond_6

    if-eq v7, v6, :cond_5

    if-eq v7, v4, :cond_4

    sget-object v3, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_180:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

    :goto_2
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r:I

    add-int/2addr v5, v0

    rem-int/2addr v5, v6

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q:Z

    if-nez v0, :cond_c

    if-eqz v4, :cond_8

    if-eqz v5, :cond_9

    :cond_8
    if-nez v4, :cond_b

    if-eqz v5, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    if-eqz v4, :cond_a

    :goto_4
    invoke-virtual {v0, v3, v2, v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v3, v1, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    if-nez v4, :cond_a

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    if-nez v4, :cond_10

    if-eqz v5, :cond_10

    :cond_e
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    if-eqz v4, :cond_f

    :goto_5
    invoke-virtual {v0, v3, v1, v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    goto :goto_6

    :cond_f
    invoke-virtual {v0, v3, v2, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    if-nez v4, :cond_f

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    invoke-virtual {v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->I0(I)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l0:I

    :cond_11
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    iput p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l0:I

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
