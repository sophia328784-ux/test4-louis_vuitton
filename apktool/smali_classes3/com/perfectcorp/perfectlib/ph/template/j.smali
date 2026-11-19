.class final Lcom/perfectcorp/perfectlib/ph/template/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/k;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/ph/template/k;-><init>(Lcom/perfectcorp/perfectlib/ph/template/j;Ljava/util/List;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/template/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
