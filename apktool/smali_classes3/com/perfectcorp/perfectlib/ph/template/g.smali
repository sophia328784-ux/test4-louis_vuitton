.class final Lcom/perfectcorp/perfectlib/ph/template/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/g;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/g;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/i;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/ph/template/i;-><init>(Lcom/perfectcorp/perfectlib/ph/template/g;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/h;->c:Lcom/perfectcorp/perfectlib/ph/template/g;

    iput-object p1, v1, Lcom/perfectcorp/perfectlib/ph/template/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->onErrorReturn(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/template/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
