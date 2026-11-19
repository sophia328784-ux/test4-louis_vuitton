.class public final synthetic Lag0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lag0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Request;Ljava/lang/Object;I)V
    .locals 0

    .line 6
    iput p3, p0, Lag0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget p0, p0, Lag0;->b:I

    const/16 v0, 0x2bc

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5, v4}, Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5, v4}, Lcom/vuitton/android/presentation/compose/animation/EnterTransitionKt;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5, v4}, Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;->b(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5, v4}, Lcom/vuitton/android/presentation/compose/animation/EnterTransitionKt;->b(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1f4

    sget-object p1, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    invoke-static {p0, v5, p1, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    const p1, 0x3ecccccd    # 0.4f

    invoke-static {p1, p0}, Landroidx/compose/animation/EnterExitTransitionKt;->g(FLandroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0

    :pswitch_4
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Path;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    sget-object p1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0x34

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->U(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/dynatrace/agent/api/OkHttpEventModifier;

    sget-object p0, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/dynatrace/agent/api/OkHttpEventModifier;->b()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/dynatrace/agent/api/OkHttpEventModifier;

    sget-object p0, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/dynatrace/agent/api/OkHttpEventModifier;->a()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->a(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, p1, Landroidx/navigation/NavOptionsBuilder;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0a0319

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroidx/navigation/NavController;

    goto :goto_1

    :cond_1
    instance-of p1, p0, Landroidx/navigation/NavController;

    if-eqz p1, :cond_2

    move-object v6, p0

    check-cast v6, Landroidx/navigation/NavController;

    :cond_2
    :goto_1
    return-object v6

    :pswitch_c
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/view/View;

    :cond_3
    return-object v6

    :pswitch_d
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const-string v1, "type"

    invoke-virtual {p1, v1, p0, v0, v5}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    const-string p0, "Any"

    new-array v1, v5, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {p1, v1, p0, v0, v5}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    iget-object p0, p1, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    return-object p0

    :pswitch_f
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-static {v0, v5, v6, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-static {v0, v5, v6, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_4

    check-cast p1, Landroidx/navigation/NavGraph;

    iget-object p0, p1, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget p1, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    :cond_4
    return-object v6

    :pswitch_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p1, Landroidx/navigation3/scene/Scene;

    new-instance p0, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-direct {p0, p1}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    return-object p0

    :pswitch_14
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    return-object p0

    :pswitch_15
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    sget-object p0, Landroidx/navigation/NavControllerViewModelKt;->a:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/navigation/NavControllerViewModel;

    invoke-direct {p0}, Landroidx/navigation/NavControllerViewModel;-><init>()V

    return-object p0

    :pswitch_16
    check-cast p1, Landroidx/navigation/NavDestination;

    sget p0, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    sget p0, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, p1, Landroidx/navigation/NavOptionsBuilder;->c:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p1, Landroidx/navigation/NavDestination;

    sget p0, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_5

    iget-object v0, p0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget v0, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    iget-object p1, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v0, p1, :cond_5

    move-object v6, p0

    :cond_5
    return-object v6

    :pswitch_19
    check-cast p1, Landroidx/navigation/NavDestination;

    sget p0, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_6

    iget-object v0, p0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget v0, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    iget-object p1, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v0, p1, :cond_6

    move-object v6, p0

    :cond_6
    return-object v6

    :pswitch_1a
    check-cast p1, Landroid/content/Context;

    sget-boolean p0, Landroidx/navigation/NavController;->i:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_7

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    :cond_7
    return-object v6

    :pswitch_1b
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    new-instance p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    invoke-static {p1}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/navigation/compose/BackStackEntryIdViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_a

    const/4 p1, 0x5

    if-eq p0, p1, :cond_9

    if-eq p0, v2, :cond_8

    goto :goto_2

    :cond_8
    const-string v6, "nativeRegister_lastName_textField"

    goto :goto_2

    :cond_9
    const-string v6, "nativeRegister_firstName_textField"

    goto :goto_2

    :cond_a
    const-string v6, "nativeRegister_title_button"

    :goto_2
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
