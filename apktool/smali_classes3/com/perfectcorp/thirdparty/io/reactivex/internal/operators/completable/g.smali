.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    return-void
.end method
