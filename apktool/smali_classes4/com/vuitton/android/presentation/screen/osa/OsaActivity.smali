.class public final Lcom/vuitton/android/presentation/screen/osa/OsaActivity;
.super Lcom/vuitton/android/presentation/screen/osa/Hilt_OsaActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/OsaActivity;",
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
.field public static final u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;


# instance fields
.field public p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final q:Landroidx/lifecycle/ViewModelLazy;

.field public final r:Landroidx/lifecycle/ViewModelLazy;

.field public final s:Landroidx/lifecycle/ViewModelLazy;

.field public final t:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/osa/Hilt_OsaActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v6, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lfw;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v2}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->t:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 23

    move-object/from16 v2, p0

    move-object/from16 v15, p1

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/lit8 v5, p2, 0x1

    invoke-interface {v15, v5, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x0

    const-string v8, "rootScreen"

    if-lt v5, v6, :cond_1

    const-class v5, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v5, v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    if-nez v5, :cond_2

    move-object v0, v7

    :cond_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    :goto_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    if-eqz v0, :cond_6

    sget-object v5, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;

    goto :goto_2

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;

    :goto_2
    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    :cond_7
    new-array v1, v1, [Landroidx/navigation3/runtime/NavKey;

    aput-object v0, v1, v3

    invoke-static {v1, v15}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REDIRECT_TO_MY_EXPERIENCES_AFTER_LOGIN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/Context;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_8

    if-ne v4, v10, :cond_9

    :cond_8
    new-instance v4, Lod0;

    invoke-direct {v4, v2, v7}, Lod0;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/navigation3/runtime/NavBackStack;)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4, v15, v3}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v11

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_a

    if-ne v4, v10, :cond_b

    :cond_a
    new-instance v4, Ltb0;

    const/16 v1, 0x12

    invoke-direct {v4, v2, v1}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4, v15, v3}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v12

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_c

    if-ne v4, v10, :cond_d

    :cond_c
    new-instance v4, Lxg0;

    const/4 v1, 0x7

    invoke-direct {v4, v2, v7, v1}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4, v15, v3}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v13

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object v16

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v10, :cond_f

    :cond_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$onCreate$2$1$1$1;

    const-string v5, "openPlaceSearch()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    const-string v4, "openPlaceSearch"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_f
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_10

    if-ne v1, v10, :cond_11

    :cond_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$onCreate$2$1$2$1;

    const-string v5, "onAddToCalendar(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    const-string v4, "onAddToCalendar"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_11
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_13

    if-ne v1, v10, :cond_12

    goto :goto_3

    :cond_12
    move v3, v8

    move-object v8, v11

    move-object v4, v12

    move-object v11, v13

    goto :goto_4

    :cond_13
    :goto_3
    new-instance v0, Lwc0;

    move-object v1, v2

    move v3, v8

    move-object v5, v11

    move-object v4, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lwc0;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/activity/compose/ManagedActivityResultLauncher;ZLandroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;)V

    move-object v11, v2

    move-object v8, v5

    move-object v2, v1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v10, :cond_15

    :cond_14
    new-instance v1, Lnd;

    invoke-direct {v1, v2, v3, v4, v8}, Lnd;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;ZLandroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v0

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_16

    if-ne v1, v10, :cond_17

    :cond_16
    new-instance v1, Ld;

    const/4 v0, 0x5

    invoke-direct {v1, v3, v2, v7, v0}, Ld;-><init>(ZLjava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_18

    if-ne v1, v10, :cond_19

    :cond_18
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$onCreate$2$1$6$1;

    const-string v5, "navigateToPrivacyPolicy()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    const-string v4, "navigateToPrivacyPolicy"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_19
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1a

    if-ne v1, v10, :cond_1b

    :cond_1a
    new-instance v1, Lof0;

    const/16 v0, 0x8

    invoke-direct {v1, v2, v11, v8, v0}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1c

    if-ne v1, v10, :cond_1d

    :cond_1c
    new-instance v1, Lx60;

    const/16 v0, 0x15

    invoke-direct {v1, v2, v0}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1e

    if-ne v1, v10, :cond_1f

    :cond_1e
    new-instance v1, Lrh0;

    const/16 v0, 0x9

    invoke-direct {v1, v2, v7, v0}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_20

    if-ne v1, v10, :cond_21

    :cond_20
    new-instance v1, Lxg0;

    const/4 v0, 0x6

    invoke-direct {v1, v2, v9, v0}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_22

    if-ne v1, v10, :cond_23

    :cond_22
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$onCreate$2$1$11$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_23
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget-object v0, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    move-object/from16 v2, v16

    const/16 v16, 0x0

    move-object v0, v14

    move-object v14, v1

    move-object v1, v0

    move-object v0, v7

    move-object v10, v8

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v12, v22

    move-object v13, v9

    move-object/from16 v9, v21

    invoke-static/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt;->a(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_24
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static I(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "PLACE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->r4(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o8()V

    :cond_3
    return-void
.end method

.method public static K(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;)V
    .locals 5

    iget-object v0, p0, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation3/runtime/NavKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/runtime/snapshots/StateListIterator;->c:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;)V

    return-void

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;

    invoke-static {p0, v0, v3}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z

    invoke-virtual {p0, p1}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    return-void
.end method


# virtual methods
.method public final J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {v0, v0}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "PREFILLED_STORE_CODES"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "IS_PREFILLED_EDITABLE"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "PREFILLED_STORE_NAME"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v4}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {v4, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->fc(Ljava/lang/String;Ljava/util/List;Z)V

    const-string v1, "OSA_REASON"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v1, p1, v2}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->W3(Ljava/lang/String;Z)V

    :cond_0
    new-instance p1, Lcj0;

    invoke-direct {p1, p0, v0}, Lcj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x5f2ffa6a

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
