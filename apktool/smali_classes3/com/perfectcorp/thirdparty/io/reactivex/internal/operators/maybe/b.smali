.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onComplete()V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
