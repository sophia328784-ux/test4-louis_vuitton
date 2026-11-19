.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j;->b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j;->b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V

    return-void
.end method
