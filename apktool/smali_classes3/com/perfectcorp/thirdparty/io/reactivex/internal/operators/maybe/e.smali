.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
