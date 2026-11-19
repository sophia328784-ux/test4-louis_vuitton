.class public final synthetic Lbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lbn;->b:I

    iput-object p1, p0, Lbn;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbn;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    iget v0, p0, Lbn;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lbn;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbn;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/Lifecycle$Event;

    check-cast v3, Lcom/google/accompanist/permissions/MutablePermissionState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lcom/google/accompanist/permissions/MutablePermissionState;->d:Landroidx/compose/runtime/MutableState;

    if-ne p2, p0, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/accompanist/permissions/PermissionStatus;

    sget-object p2, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3}, Lcom/google/accompanist/permissions/MutablePermissionState;->a()Lcom/google/accompanist/permissions/PermissionStatus;

    move-result-object p0

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->H8()V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/SecurityUtils;->a(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/SecurityUtils;->b(Landroid/app/Activity;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    check-cast v3, Landroidx/core/view/MenuProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/core/view/MenuHostHelper;->c(Landroidx/core/view/MenuProvider;)V

    :cond_5
    return-void

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->T:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->T:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_2
    return-void

    :pswitch_4
    check-cast p0, Landroidx/lifecycle/Lifecycle$Event;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    if-ne p2, p0, :cond_8

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    return-void

    :pswitch_5
    check-cast p0, Landroidx/navigation/fragment/FragmentNavigator;

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    sget v0, Landroidx/navigation/fragment/FragmentNavigator;->j:I

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_a

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object v0

    iget-object v0, v0, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_9
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/navigation/NavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    :cond_a
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_c

    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->n()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_b
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/navigation/NavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    :cond_c
    return-void

    :pswitch_6
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    check-cast v3, Landroidx/activity/ComponentActivity;

    invoke-static {p0, v3, p1, p2}, Landroidx/activity/ComponentActivity;->o(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
