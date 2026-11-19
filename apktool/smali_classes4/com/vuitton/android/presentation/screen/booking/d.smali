.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/booking/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/d;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/d;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/d;->e:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/d;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/d;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/booking/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/d;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/d;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/d;->e:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/d;->g:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/d;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/booking/d;->b:I

    const/4 v2, 0x0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/d;->e:Landroidx/navigation3/runtime/NavBackStack;

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v8, v7, 0x6

    const/4 v9, 0x4

    if-nez v8, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v7, v8

    :cond_1
    and-int/lit8 v8, v7, 0x13

    const/16 v10, 0x12

    if-eq v8, v10, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    and-int/lit8 v10, v7, 0x1

    invoke-interface {v12, v10, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v7, v7, 0xe

    if-ne v7, v9, :cond_3

    move v2, v6

    :cond_3
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    const/16 v13, 0x8

    if-nez v2, :cond_4

    if-ne v6, v3, :cond_5

    :cond_4
    new-instance v6, Ltb0;

    invoke-direct {v6, v1, v13}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-static {v8, v12}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v10

    instance-of v1, v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_6

    move-object v1, v8

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    invoke-static {v1, v6}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->a(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    move-result-object v1

    :goto_2
    move-object v11, v1

    goto :goto_3

    :cond_6
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    invoke-static {v1, v6}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->a(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    move-result-object v1

    goto :goto_2

    :goto_3
    const-class v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/d;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_7

    if-ne v8, v3, :cond_8

    :cond_7
    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$1$1;

    invoke-direct {v8, v2, v5}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->q:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    new-instance v1, Lba0;

    const/16 v5, 0xf

    invoke-direct {v1, v5}, Lba0;-><init>(I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_a

    if-ne v5, v3, :cond_b

    :cond_a
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$3$1;

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$3$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function3;

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/d;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_c

    if-ne v5, v3, :cond_d

    :cond_c
    new-instance v5, Ly0;

    invoke-direct {v5, v4, v2, v13}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_e

    if-ne v6, v3, :cond_f

    :cond_e
    new-instance v6, Ly0;

    const/16 v1, 0x9

    invoke-direct {v6, v4, v2, v1}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0xd80

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/booking/d;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/booking/d;->g:Lkotlin/jvm/functions/Function1;

    move-object v15, v12

    move-object v12, v5

    invoke-static/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_10
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object v5

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v7, 0x11

    const/16 v8, 0x10

    if-eq v1, v8, :cond_12

    move v2, v6

    :cond_12
    and-int/lit8 v1, v7, 0x1

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/booking/d;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_13

    if-ne v8, v3, :cond_14

    :cond_13
    new-instance v8, Ljf;

    invoke-direct {v8, v7, v6}, Ljf;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;I)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x6

    invoke-static {v1, v5, v8, v12, v2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_15

    if-ne v2, v3, :cond_16

    :cond_15
    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$1$2$1;

    invoke-direct {v2, v4}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$1$2$1;-><init>(Landroidx/navigation3/runtime/NavBackStack;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/d;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_17

    if-ne v4, v3, :cond_18

    :cond_17
    new-instance v4, Lsf;

    invoke-direct {v4, v7, v2, v6}, Lsf;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v13, 0x30

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/d;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/booking/d;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
