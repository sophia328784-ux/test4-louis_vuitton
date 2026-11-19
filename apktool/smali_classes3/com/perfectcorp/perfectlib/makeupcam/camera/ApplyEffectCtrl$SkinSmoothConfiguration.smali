.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SkinSmoothConfiguration"
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    return-void
.end method


# virtual methods
.method public final isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;->n:I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->a(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;

    invoke-direct {v2, p0, p1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {v1, v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->n(IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;

    invoke-direct {v3, p0, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;ZI)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {v1, v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->n(IZ)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;->n:I

    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0
.end method
