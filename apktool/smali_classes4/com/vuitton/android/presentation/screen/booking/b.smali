.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p6, p0, Lcom/vuitton/android/presentation/screen/booking/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/b;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/b;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/b;->f:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/b;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/booking/b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/b;->f:Landroidx/navigation3/runtime/NavBackStack;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v6, 0x11

    const/16 v7, 0x10

    if-eq v1, v7, :cond_0

    move v2, v3

    :cond_0
    and-int/lit8 v1, v6, 0x1

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/b;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;

    invoke-direct {v2, v5, v6}, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/b;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v3, Ln0;

    const/16 v1, 0x8

    invoke-direct {v3, v5, v6, v2, v1}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x30

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/booking/b;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/b;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_5
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v7, v6, 0x6

    const/4 v8, 0x4

    if-nez v7, :cond_7

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    :goto_1
    or-int/2addr v6, v7

    :cond_7
    and-int/lit8 v7, v6, 0x13

    const/16 v9, 0x12

    if-eq v7, v9, :cond_8

    move v7, v3

    goto :goto_2

    :cond_8
    move v7, v2

    :goto_2
    and-int/lit8 v9, v6, 0x1

    invoke-interface {v14, v9, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v6, v6, 0xe

    if-ne v6, v8, :cond_9

    move v2, v3

    :cond_9
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_a

    if-ne v3, v4, :cond_b

    :cond_a
    new-instance v3, Lc1;

    const/16 v2, 0x16

    invoke-direct {v3, v1, v2}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-static {v7, v14}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v9

    instance-of v1, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_c

    move-object v1, v7

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    invoke-static {v1, v3}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->a(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    move-result-object v1

    :goto_3
    move-object v10, v1

    goto :goto_4

    :cond_c
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    invoke-static {v1, v3}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->a(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    move-result-object v1

    goto :goto_3

    :goto_4
    const-class v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v8, 0x0

    move-object v11, v14

    invoke-static/range {v6 .. v11}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/booking/b;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->t4()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    if-ne v3, v4, :cond_e

    :cond_d
    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$1$1;

    const-string v12, "addPreBook(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    const-string v11, "addPreBook"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v7

    :cond_e
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_f

    if-ne v7, v4, :cond_10

    :cond_f
    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$2$1;

    invoke-direct {v7, v9}, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function3;

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/booking/b;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_11

    if-ne v7, v4, :cond_12

    :cond_11
    new-instance v7, Ly0;

    const/4 v2, 0x3

    invoke-direct {v7, v5, v11, v2}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v12, v7

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v15, 0x180

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/b;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/booking/b;->g:Lkotlin/jvm/functions/Function1;

    move-object v7, v1

    move-object v9, v3

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_13
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
