.class final Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;
.super Lio/reactivex/rxjava3/android/MainThreadDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0014R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;",
        "Lio/reactivex/rxjava3/android/MainThreadDisposable;",
        "behavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "observer",
        "Lio/reactivex/rxjava3/core/Observer;",
        "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;",
        "<init>",
        "(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lio/reactivex/rxjava3/core/Observer;)V",
        "callback",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "getCallback",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onDispose",
        "",
        "rx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation
.end field

.field private final callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private final observer:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->observer:Lio/reactivex/rxjava3/core/Observer;

    new-instance p1, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;

    invoke-direct {p1, p0}, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;-><init>(Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;)V

    iput-object p1, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method public static final synthetic access$getObserver$p(Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;)Lio/reactivex/rxjava3/core/Observer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->observer:Lio/reactivex/rxjava3/core/Observer;

    return-object p0
.end method


# virtual methods
.method public final getCallback()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    return-object p0
.end method

.method public onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
