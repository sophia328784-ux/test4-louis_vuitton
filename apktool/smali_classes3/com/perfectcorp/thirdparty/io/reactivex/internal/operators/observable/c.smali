.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/b;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V

    return-object v0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
