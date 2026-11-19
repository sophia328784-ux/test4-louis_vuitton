.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
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

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-wide p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-wide v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am;->c:J

    iput-wide v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am$a;->e:J

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
