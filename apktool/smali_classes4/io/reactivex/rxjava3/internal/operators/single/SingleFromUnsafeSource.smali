.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;
.super Lio/reactivex/rxjava3/core/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/SingleSource<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;->b:Lio/reactivex/rxjava3/core/SingleSource;

    return-void
.end method


# virtual methods
.method public final e(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;->b:Lio/reactivex/rxjava3/core/SingleSource;

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleSource;->a(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
