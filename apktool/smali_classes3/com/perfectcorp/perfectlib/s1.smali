.class public final synthetic Lcom/perfectcorp/perfectlib/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/s1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/s1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/s1;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/s1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ReshapeEffectId;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->a:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget p0, p1, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    return-object v1

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->z(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ltg0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltg0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->to(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->z(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
