.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;
.super Lio/reactivex/rxjava3/core/Observable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/Observable<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/rxjava3/operators/ScalarSupplier<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;

    invoke-direct {v0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->a(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
