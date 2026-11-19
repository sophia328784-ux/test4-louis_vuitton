.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BackgroundConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundConfiguration"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

.field public synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BackgroundConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BackgroundConfiguration;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-interface {v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    return-void
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BackgroundConfiguration;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
