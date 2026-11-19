.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;
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
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
