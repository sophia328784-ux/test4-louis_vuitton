.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-wide p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->c:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 6

    .line 17
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/l;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-wide v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/l;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;JLjava/lang/Object;Z)V

    return-object v0
.end method

.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iget-wide v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->c:J

    iput-wide v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m$a;->c:J

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
