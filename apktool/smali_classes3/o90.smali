.class public final synthetic Lo90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lo90;->b:I

    iput-object p1, p0, Lo90;->c:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lo90;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo90;->b:I

    iget-object v1, p0, Lo90;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lo90;->c:Landroidx/lifecycle/LifecycleOwner;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp90;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lp90;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/video/components/VideoPlayerComponentKt$VideoPlayerComponent$lambda$15$0$$inlined$onDispose$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/video/components/VideoPlayerComponentKt$VideoPlayerComponent$lambda$15$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp90;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Lp90;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoPlayerComponentKt$LiveVideoPlayerComponent$lambda$15$0$$inlined$onDispose$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoPlayerComponentKt$LiveVideoPlayerComponent$lambda$15$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp90;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1}, Lp90;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt$rememberLifecycleEvent$lambda$3$0$$inlined$onDispose$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt$rememberLifecycleEvent$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
