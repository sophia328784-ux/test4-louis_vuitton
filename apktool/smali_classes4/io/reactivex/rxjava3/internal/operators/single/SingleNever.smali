.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleNever;
.super Lio/reactivex/rxjava3/core/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/Single<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/rxjava3/internal/operators/single/SingleNever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleNever;

    invoke-direct {v0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/single/SingleNever;->b:Lio/reactivex/rxjava3/internal/operators/single/SingleNever;

    return-void
.end method


# virtual methods
.method public final e(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 0

    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
