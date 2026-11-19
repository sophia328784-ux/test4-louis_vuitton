.class public final synthetic Lcom/vuitton/android/presentation/compose/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/d;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/d;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/d;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/d;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/vuitton/android/presentation/compose/components/LVNotificationKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p2, :cond_0

    new-instance p1, Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    sget-object p3, Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;->Default:Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;->DismissedToTop:Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p3, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p2, :cond_2

    new-instance p3, Lm5;

    const/4 v3, 0x4

    invoke-direct {p3, v0, v3}, Lm5;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;I)V

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p3

    invoke-interface {v6, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p3, Landroidx/compose/runtime/State;

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-object p3, p0, Lcom/vuitton/android/presentation/compose/components/d;->e:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p3, p0, Lcom/vuitton/android/presentation/compose/components/d;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lcom/vuitton/android/presentation/compose/components/d;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    if-ne v2, p2, :cond_7

    :cond_6
    new-instance v2, Lcom/vuitton/android/presentation/compose/components/LVNotificationKt$DismissibleNotification$7$1$1;

    const/4 p2, 0x0

    invoke-direct {v2, v0, p3, p2}, Lcom/vuitton/android/presentation/compose/components/LVNotificationKt$DismissibleNotification$7$1$1;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p1, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;->BottomToTop:Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;

    invoke-static {p1}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sget-object p1, Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVNotificationKt;->a:Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVNotificationKt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVNotificationKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v7, 0x6d86

    const/4 v1, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    iget-object v5, p0, Lcom/vuitton/android/presentation/compose/components/d;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/compose/components/SwipeToDismissVerticalKt;->a(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Landroidx/compose/ui/Modifier;Ljava/util/Set;FLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
