.class public final synthetic Lcom/perfectcorp/perfectlib/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/m1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/m1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/m1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/thirdparty/io/reactivex/Single;)Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/perfectlib/m1;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/m1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/m1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {v0, v2, p0, v1}, Lcom/perfectcorp/perfectlib/m1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/m1;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/m1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/m1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/d0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/perfectcorp/perfectlib/d0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/b;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/b;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/y;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/m1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lcom/perfectcorp/perfectlib/m1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/h;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v2, Lcom/perfectcorp/common/rx/a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
