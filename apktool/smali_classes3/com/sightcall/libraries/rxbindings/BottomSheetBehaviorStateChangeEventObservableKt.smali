.class public final Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "stateChangeEvents",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "rx_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final stateChangeEvents(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method
