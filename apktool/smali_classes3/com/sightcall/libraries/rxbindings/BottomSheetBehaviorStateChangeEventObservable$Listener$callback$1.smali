.class public final Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lio/reactivex/rxjava3/core/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onStateChanged",
        "",
        "view",
        "Landroid/view/View;",
        "newState",
        "",
        "onSlide",
        "slideOffset",
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
.field final synthetic this$0:Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;


# direct methods
.method public constructor <init>(Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;->this$0:Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;->this$0:Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1;->this$0:Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;

    invoke-static {p0}, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;->access$getObserver$p(Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;)Lio/reactivex/rxjava3/core/Observer;

    move-result-object p0

    new-instance v0, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;

    invoke-direct {v0, p1, p2}, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;-><init>(Landroid/view/View;I)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
