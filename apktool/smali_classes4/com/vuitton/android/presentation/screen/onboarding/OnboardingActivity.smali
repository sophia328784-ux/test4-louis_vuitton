.class public final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;
.super Lcom/vuitton/android/presentation/screen/onboarding/Hilt_OnboardingActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Landroidx/lifecycle/ViewModelLazy;

.field public final r:Landroidx/lifecycle/ViewModelLazy;

.field public s:Lcom/vuitton/android/presentation/link/LinkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/onboarding/Hilt_OnboardingActivity;-><init>()V

    new-instance v0, Lwg0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v4, v6, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "ONBOARDING_START_SCREEN_ROUTE"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    if-nez v1, :cond_1

    move-object p0, v0

    :cond_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    :goto_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    if-eqz p0, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v0

    :pswitch_0
    const-string p0, "DONE is not a valid navigation route"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    return-object p0

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final I(Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v2, p0

    move/from16 v7, p2

    const v0, 0x68b5aea5

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v7

    and-int/lit8 v3, v0, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v3, v1, :cond_1

    move v1, v9

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    and-int/2addr v0, v9

    invoke-virtual {v8, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v0, v10, [Landroidx/navigation/Navigator;

    invoke-static {v0, v8}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v11

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v10, v0, v8, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v12

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_2

    if-ne v4, v13, :cond_3

    :cond_2
    new-instance v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$1$1;

    invoke-direct {v4, v2, v11, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_4

    if-ne v3, v13, :cond_5

    :cond_4
    new-instance v3, Lxg0;

    invoke-direct {v3, v2, v11, v10}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3, v8, v10}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v14

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->p:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    if-nez v0, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    :cond_6
    move-object v15, v0

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v16

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v13, :cond_8

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$2$1;

    const-string v5, "openPiplDeeplink(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "openPiplDeeplink"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_8
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    if-ne v3, v13, :cond_a

    :cond_9
    new-instance v19, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$3$1;

    const-string v24, "setOnboardingState(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;)V"

    const/16 v25, 0x0

    const/16 v20, 0x1

    const-class v22, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    const-string v23, "setOnboardingState"

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v25}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v19

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b

    if-ne v1, v13, :cond_c

    :cond_b
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$4$1;

    const-string v5, "onLocationAuthorisationClick()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "onLocationAuthorisationClick"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_c
    move-object/from16 v20, v1

    check-cast v20, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_d

    if-ne v1, v13, :cond_e

    :cond_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$5$1;

    const-string v5, "onNotificationAuthorisationClick()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "onNotificationAuthorisationClick"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_e
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_f

    if-ne v1, v13, :cond_10

    :cond_f
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$6$1;

    const-string v5, "getCurrentIcon()Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "getCurrentIcon"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_10
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_11

    if-ne v1, v13, :cond_12

    :cond_11
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$7$1;

    const-string v5, "onUpdateLauncherIcon(Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "onUpdateLauncherIcon"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_12
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_13

    if-ne v1, v13, :cond_14

    :cond_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$8$1;

    const-string v5, "finishOnboarding()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "finishOnboarding"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_14
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_15

    if-ne v1, v13, :cond_16

    :cond_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$9$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_16
    move-object/from16 v25, v1

    check-cast v25, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    if-ne v1, v13, :cond_18

    :cond_17
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$10$1;

    const-string v5, "edgeToEdgeFullTransparency--UQiWvU(Landroidx/activity/ComponentActivity;ZZ)V"

    const/4 v6, 0x1

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;

    const-string v4, "edgeToEdgeFullTransparency"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_18
    move-object/from16 v26, v1

    check-cast v26, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_19

    if-ne v1, v13, :cond_1a

    :cond_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$11$1;

    const-string v5, "openAccessibilityStatement()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const-string v4, "openAccessibilityStatement"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1a
    check-cast v1, Lkotlin/reflect/KFunction;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1b

    if-ne v3, v13, :cond_1c

    :cond_1b
    new-instance v3, Lwg0;

    invoke-direct {v3, v2, v9}, Lwg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1d

    if-ne v4, v13, :cond_1e

    :cond_1d
    new-instance v4, Lt30;

    const/16 v0, 0x1b

    invoke-direct {v4, v12, v11, v0}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v18, Lkotlin/jvm/functions/Function1;

    check-cast v25, Lkotlin/jvm/functions/Function0;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_1f

    if-ne v5, v13, :cond_20

    :cond_1f
    new-instance v5, Lyg0;

    invoke-direct {v5, v2, v14, v10}, Lyg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_21

    if-ne v6, v13, :cond_22

    :cond_21
    new-instance v6, Lyg0;

    invoke-direct {v6, v2, v14, v9}, Lyg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v20, Lkotlin/jvm/functions/Function0;

    check-cast v21, Lkotlin/jvm/functions/Function0;

    check-cast v22, Lkotlin/jvm/functions/Function0;

    check-cast v23, Lkotlin/jvm/functions/Function1;

    check-cast v24, Lkotlin/jvm/functions/Function0;

    check-cast v26, Lkotlin/jvm/functions/Function2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v28, v0, 0x3

    move-object v13, v3

    move-object v14, v4

    move-object/from16 v27, v8

    move-object v8, v11

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v15, v18

    move-object/from16 v17, v19

    move-object/from16 v16, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-static/range {v8 .. v28}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_23
    move-object/from16 v27, v8

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lvg0;

    invoke-direct {v1, v2, v7}, Lvg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public final J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    return-object p0
.end method

.method public final K()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, p1, v0}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->b(Landroidx/activity/ComponentActivity;ZZI)V

    new-instance p1, Lvg0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lvg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;IB)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x688e8688

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    array-length p2, p3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x16

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x20

    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    aget p1, p3, v0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsAllowedEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsAllowedEvent;

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsRefusedEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsRefusedEvent;

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;)V

    return-void

    :cond_3
    aget p1, p3, v0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationAllowedEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationAllowedEvent;

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationRefusedEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationRefusedEvent;

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->K()V

    return-void
.end method
