.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

.field public final synthetic g:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->d:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->f:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/c;->g:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/core/type/SystemIcons;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    new-instance v3, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v3, v9}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    invoke-static {v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    const/4 v10, 0x0

    if-eqz v4, :cond_15

    invoke-static {v4, v13}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v3, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_0

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    move-object v8, v13

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->g:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    goto :goto_2

    :cond_1
    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v10, v4

    :cond_5
    check-cast v10, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    :cond_6
    iput-object v10, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_7

    if-ne v5, v6, :cond_8

    :cond_7
    new-instance v14, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$6$1$7$1$1$1;

    const-string v19, "popBackStack()Z"

    const/16 v20, 0x8

    const/4 v15, 0x0

    const-class v17, Landroidx/navigation/NavHostController;

    const-string v18, "popBackStack"

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v14

    :cond_8
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_9

    if-ne v7, v6, :cond_a

    :cond_9
    new-instance v7, Ltf;

    const/16 v5, 0x12

    invoke-direct {v7, v1, v2, v5}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->f:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_b

    if-ne v5, v6, :cond_c

    :cond_b
    new-instance v5, Lw1;

    const/16 v2, 0x13

    invoke-direct {v5, v1, v2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_d

    if-ne v5, v6, :cond_e

    :cond_d
    new-instance v5, Lsl;

    invoke-direct {v5, v10, v1, v9}, Lsl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_f

    if-ne v5, v6, :cond_10

    :cond_f
    new-instance v5, Lsl;

    const/4 v2, 0x1

    invoke-direct {v5, v10, v1, v2}, Lsl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v2, v11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_11

    if-ne v11, v6, :cond_12

    :cond_11
    new-instance v11, Lsl;

    const/4 v2, 0x2

    invoke-direct {v11, v10, v1, v2}, Lsl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v2, v12

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_13

    if-ne v12, v6, :cond_14

    :cond_13
    new-instance v12, Lvg;

    const/16 v2, 0xb

    invoke-direct {v12, v10, v1, v2}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    move-object v10, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->d:Lkotlin/jvm/functions/Function3;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/certificates/c;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v14}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt;->a(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_15
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10
.end method
