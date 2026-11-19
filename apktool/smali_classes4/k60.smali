.class public final synthetic Lk60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lk60;->b:I

    iput-object p1, p0, Lk60;->c:Ljava/lang/Object;

    iput-object p2, p0, Lk60;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lk60;->b:I

    const-string v2, ""

    const-wide v3, 0xffffffffL

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lk60;->d:Ljava/lang/Object;

    iget-object v0, v0, Lk60;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlinx/coroutines/Job;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/work/impl/constraints/ConstraintsState;

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v9, v1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Landroidx/navigation/Navigator;

    check-cast v9, Landroidx/navigation/NavOptions;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v3, v1, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v7

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v9}, Landroidx/navigation/Navigator;->c(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroidx/navigation/NavigatorState;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    :goto_1
    return-object v7

    :pswitch_1
    check-cast v0, Landroidx/navigation/NavHostController;

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v0, v9}, Landroidx/navigation/NavHostController;->i(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$48$lambda$47$$inlined$onDispose$1;

    invoke-direct {v0}, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$48$lambda$47$$inlined$onDispose$1;-><init>()V

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/runtime/State;

    check-cast v9, Landroidx/navigation/compose/ComposeNavigator;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$69$lambda$68$$inlined$onDispose$1;

    invoke-direct {v1, v0, v9}, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$69$lambda$68$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    return-object v1

    :pswitch_3
    check-cast v0, Landroidx/navigation/NavDestination;

    check-cast v9, Landroidx/navigation/NavController;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavOptionsBuilder;

    sget-boolean v2, Landroidx/navigation/NavController;->i:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/navigation/AnimBuilder;

    invoke-direct {v2}, Landroidx/navigation/AnimBuilder;-><init>()V

    iget-object v2, v1, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    iput v6, v2, Landroidx/navigation/NavOptions$Builder;->g:I

    iput v6, v2, Landroidx/navigation/NavOptions$Builder;->h:I

    const/4 v3, -0x1

    iput v3, v2, Landroidx/navigation/NavOptions$Builder;->i:I

    iput v3, v2, Landroidx/navigation/NavOptions$Builder;->j:I

    instance-of v2, v0, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v3, v9, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    goto :goto_2

    :cond_5
    move-object v3, v7

    :goto_2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_6
    sget-boolean v0, Landroidx/navigation/NavController;->i:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/navigation/NavGraph;->i:Landroidx/navigation/NavGraph$Companion;

    iget-object v2, v9, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->j()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lag0;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Lag0;-><init>(I)V

    invoke-static {v2, v0}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    iget-object v0, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iput v0, v1, Landroidx/navigation/NavOptionsBuilder;->d:I

    iput-boolean v6, v1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    new-instance v0, Landroidx/navigation/PopUpToBuilder;

    invoke-direct {v0}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    iput-boolean v8, v0, Landroidx/navigation/PopUpToBuilder;->b:Z

    iget-boolean v0, v0, Landroidx/navigation/PopUpToBuilder;->a:Z

    iput-boolean v0, v1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    iput-boolean v8, v1, Landroidx/navigation/NavOptionsBuilder;->f:Z

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldTypeUiModelExtKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;)Z

    move-result v1

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v6

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v8

    :goto_5
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    move v6, v8

    :cond_a
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Landroidx/navigation/NavHostController;

    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    move-object/from16 v10, p1

    check-cast v10, Landroidx/navigation/NavGraphBuilder;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/login/a;

    invoke-direct {v1, v0, v9}, Lcom/vuitton/android/presentation/screen/authentication/login/a;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x1a10e923

    invoke-direct {v2, v3, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v12

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$Login;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v2

    invoke-static/range {v10 .. v18}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lcf;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v9, v3}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x3ebbaf4

    invoke-direct {v0, v3, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v12

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$ForgetPassword;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object/from16 v18, v0

    invoke-static/range {v10 .. v18}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnHitForgetPasswordEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnHitForgetPasswordEvent;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;->P6(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel;)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;

    invoke-interface {v9, v0, v7, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SignaturePackagingSectionClick;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SignaturePackagingSectionClick;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v9, Landroidx/navigation/NavHostController;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GiftSectionClick;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GiftSectionClick;

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    if-eqz v3, :cond_b

    move-object v3, v1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    goto :goto_6

    :cond_b
    move-object v3, v7

    :goto_6
    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;->a:Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object v3, v7

    :goto_7
    if-nez v3, :cond_d

    goto :goto_8

    :cond_d
    move-object v2, v3

    :goto_8
    instance-of v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-static {v9, v0, v7, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v9, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;->c:Z

    if-nez v1, :cond_e

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->Za()V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Landroid/content/Context;

    check-cast v9, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_f

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v3, :cond_f

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    :cond_f
    if-nez v7, :cond_10

    goto :goto_9

    :cond_10
    move-object v2, v7

    :goto_9
    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;

    check-cast v9, Landroid/content/Context;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->r:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v10, :cond_11

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    const-string v0, "contributionLinkNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :pswitch_e
    check-cast v0, Landroidx/compose/ui/autofill/Autofill;

    check-cast v9, Landroidx/compose/ui/autofill/AutofillNode;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_13

    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v9}, Landroidx/compose/ui/autofill/Autofill;->b(Landroidx/compose/ui/autofill/AutofillNode;)V

    goto :goto_a

    :cond_12
    invoke-interface {v0, v9}, Landroidx/compose/ui/autofill/Autofill;->a(Landroidx/compose/ui/autofill/AutofillNode;)V

    :cond_13
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Landroidx/compose/ui/autofill/AutofillNode;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v8}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/autofill/AutofillNode;->b:Landroidx/compose/ui/geometry/Rect;

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Landroid/view/View;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v10

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v12

    and-long/2addr v12, v3

    long-to-int v2, v12

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v12

    const/16 v1, 0x20

    shr-long/2addr v12, v1

    long-to-int v7, v12

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    and-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v12

    if-gez v4, :cond_14

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v3, v2

    cmpl-float v2, v3, v5

    if-lez v2, :cond_14

    shr-long v1, v10, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_14

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    int-to-float v1, v7

    add-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_14

    move v6, v8

    :cond_14
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    check-cast v9, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v9, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v3}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;->a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    check-cast v0, Landroidx/compose/material3/SheetState;

    check-cast v9, Landroidx/compose/animation/core/Animatable;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    sget v2, Landroidx/compose/material3/ModalBottomSheetKt;->a:F

    iget-object v0, v0, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iget-object v0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->b()J

    move-result-wide v6

    and-long v2, v6, v3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_16

    cmpg-float v3, v2, v5

    if-nez v3, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/material3/ModalBottomSheetKt;->d(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->m(F)V

    invoke-static {v1, v3}, Landroidx/compose/material3/ModalBottomSheetKt;->e(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->x(F)V

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->C0(J)V

    :cond_16
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    sget v2, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v9, v1}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Canvas;

    invoke-static {v0, v9, v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;->d(Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_15
    check-cast v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SELECT * FROM LightUp WHERE TYPE = ?"

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    iget-object v0, v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->c:Lcom/vuitton/android/data/database/converter/EnumConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->a()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {v1, v8, v2, v3}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const-string v0, "DEVICE_ID"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v2, "TYPE"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    const-string v3, "NAME"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    const-string v4, "POWER_MODE"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "PRESET_NAME"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v6, "PRESET_IMAGE"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string v9, "PRESET_ID"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "DEVICE_TO_STRING"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v12, v8, :cond_18

    const/4 v13, 0x2

    if-ne v12, v13, :cond_17

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    :goto_d
    move-object v15, v12

    goto :goto_e

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unhandled Light Up product type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    sget-object v12, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    goto :goto_d

    :goto_e
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_19

    move-object/from16 v16, v7

    goto :goto_f

    :cond_19
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    :goto_f
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Lcom/vuitton/android/data/database/converter/EnumConverter;->a(I)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-result-object v17

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1a

    move-object/from16 v18, v7

    goto :goto_10

    :cond_1a
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    :goto_10
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    move-object/from16 v19, v7

    goto :goto_11

    :cond_1b
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v12

    :goto_11
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    move-object/from16 v20, v7

    goto :goto_12

    :cond_1c
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v12

    :goto_12
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v21

    new-instance v13, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    invoke-direct/range {v13 .. v21}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_13

    :cond_1d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v11

    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_16
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->f:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    iget v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    invoke-virtual {v1, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    move-result v13

    invoke-virtual {v0, v6, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    move-result-wide v15

    const/4 v12, 0x0

    iget v14, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    invoke-virtual/range {v10 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d(IIIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    return-object v0

    :pswitch_17
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object v0

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->a:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v6

    :goto_14
    if-ge v6, v3, :cond_1e

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide v10, v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->a:J

    long-to-int v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    move-result-wide v10

    new-instance v12, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v7, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v8

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1e
    return-object v2

    :pswitch_18
    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v0, v6}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Ljava/lang/String;

    check-cast v9, Landroidx/compose/material3/SnackbarData;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    new-instance v2, Lu70;

    invoke-direct {v2, v9, v8}, Lu70;-><init>(Landroidx/compose/material3/SnackbarData;I)V

    invoke-static {v1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    iget-object v1, v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a:Landroidx/compose/material3/SheetState;

    invoke-virtual {v1}, Landroidx/compose/material3/SheetState;->e()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Landroid/view/Window;

    check-cast v9, Landroid/view/View;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v1, v0, v9}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsControllerCompat;->b()Z

    move-result v0

    invoke-virtual {v1, v8}, Landroidx/core/view/WindowInsetsControllerCompat;->d(Z)V

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;-><init>(Landroidx/core/view/WindowInsetsControllerCompat;Z)V

    return-object v2

    :pswitch_1c
    check-cast v0, Landroidx/compose/material3/TopAppBarScrollBehavior;

    check-cast v9, Landroidx/compose/runtime/MutableFloatState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result v0

    cmpg-float v0, v0, v5

    if-nez v0, :cond_21

    :cond_20
    iget-wide v0, v1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-interface {v9, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    :cond_21
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
