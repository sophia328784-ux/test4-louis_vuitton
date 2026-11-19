.class public final synthetic Lcom/perfectcorp/perfectlib/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/m2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/m2;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/m2;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/m2;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTaken()V
    .locals 7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/m2;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;

    move-result-object v2

    iput p0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->l:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isReshape()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->a(Ljava/util/ArrayList;)V

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->s:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/clflurry/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/a;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->h:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Foundation:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Blush:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Eyelashes:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->EyeLiner:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->EyeColor:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->EyeShadow:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->i:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->LipColor:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->d:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->EyeWear:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->SkinSmoothener:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_intensity"

    invoke-virtual {p0, v1, v3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->m:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->HairDye:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Eyebrows:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->j:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->k:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->HighlightContour:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->i(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/clflurry/c;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->n:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->LipLiner:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Earrings:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->o:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Concealer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->p:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Bronzer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->q:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Background:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->k(Ljava/util/List;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->s:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void
.end method
