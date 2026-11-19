.class public final synthetic Lwc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/activity/compose/ManagedActivityResultLauncher;ZLandroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lwc0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lwc0;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lwc0;->c:Z

    iput-object p4, p0, Lwc0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lwc0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lwc0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc0;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lwc0;->c:Z

    iput-object p3, p0, Lwc0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lwc0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lwc0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;ZLkotlin/collections/ArrayDeque;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lwc0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lwc0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lwc0;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lwc0;->c:Z

    iput-object p5, p0, Lwc0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lwc0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lwc0;->c:Z

    iput-object p2, p0, Lwc0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lwc0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lwc0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lwc0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lwc0;->b:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lwc0;->c:Z

    iget-object v3, p0, Lwc0;->g:Ljava/lang/Object;

    iget-object v4, p0, Lwc0;->f:Ljava/lang/Object;

    iget-object v5, p0, Lwc0;->e:Ljava/lang/Object;

    iget-object v6, p0, Lwc0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v2, v8}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;

    iget-boolean v9, p0, Lwc0;->c:Z

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x799532c4

    invoke-direct {p0, v3, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v2, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v5, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v4, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v3, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;

    invoke-static {p0, v6}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v4, Landroidx/navigation/internal/NavControllerImpl;

    check-cast v3, Lkotlin/collections/ArrayDeque;

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    sget p0, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iput-boolean v1, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    invoke-virtual {v4, p1, v2, v3}, Landroidx/navigation/internal/NavControllerImpl;->r(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v6, Landroidx/compose/animation/core/MutableTransitionState;

    iget-object p0, v6, Landroidx/compose/animation/core/MutableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/State;

    check-cast v3, Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    sget v6, Landroidx/compose/material3/MenuKt;->a:F

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_2
    sget v6, Landroidx/compose/material3/MenuKt;->a:F

    move-object v6, p0

    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    invoke-interface {p1, v6}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->m(F)V

    if-nez v2, :cond_4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_2

    :cond_4
    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    :goto_2
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->x(F)V

    if-nez v2, :cond_6

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_6
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->d(F)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/TransformOrigin;->a:J

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->C0(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
