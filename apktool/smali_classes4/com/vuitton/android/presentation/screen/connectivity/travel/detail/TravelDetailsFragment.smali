.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/Hilt_TravelDetailsFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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
.field public static final K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

.field public static final synthetic L:[Lkotlin/reflect/KProperty;

.field public static final M:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

.field public I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

.field public final J:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->L:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    const-string v0, "TravelDetailsFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d007c

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/Hilt_TravelDetailsFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lhv0;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->J:Lkotlin/Lazy;

    return-void
.end method

.method public static final Q(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ShareTravelEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->J:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ShareTravelEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-eqz v1, :cond_1b

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v6, v3

    :cond_0
    move-object v9, v6

    move-object v8, v7

    goto :goto_0

    :cond_1
    move-object v8, v3

    move-object v9, v8

    :goto_0
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v10}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v6

    :goto_1
    move-object v13, v3

    move-object v12, v7

    goto :goto_2

    :cond_3
    move-object v12, v3

    move-object v13, v12

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    move-object v10, v3

    goto :goto_3

    :cond_4
    move-object v10, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    move-object v11, v3

    goto :goto_4

    :cond_5
    move-object v11, v4

    :goto_4
    if-eqz v5, :cond_6

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    move-object v14, v3

    goto :goto_5

    :cond_6
    move-object v14, v4

    :goto_5
    if-eqz v5, :cond_7

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    move-object v15, v3

    goto :goto_6

    :cond_7
    move-object v15, v4

    :goto_6
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    move-object/from16 v18, v6

    goto :goto_7

    :cond_8
    move-object/from16 v18, v4

    :goto_7
    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_8

    :cond_9
    move-object/from16 v19, v4

    :goto_8
    if-eqz v5, :cond_a

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    move-object/from16 v20, v2

    goto :goto_9

    :cond_a
    move-object/from16 v20, v4

    :goto_9
    if-eqz v5, :cond_b

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_a
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    goto :goto_b

    :cond_b
    move-object/from16 v21, v4

    goto :goto_a

    :goto_b
    filled-new-array/range {v8 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1411eb

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_15

    :cond_c
    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v2, :cond_13

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->f:Ljava/util/Date;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v3

    :cond_d
    move-object v7, v2

    move-object v6, v5

    goto :goto_c

    :cond_e
    move-object v6, v3

    move-object v7, v6

    :goto_c
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->h:Ljava/util/Date;

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_d

    :cond_f
    move-object v3, v2

    :goto_d
    move-object v10, v3

    move-object v9, v5

    goto :goto_e

    :cond_10
    move-object v9, v3

    move-object v10, v9

    :goto_e
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    move-object v8, v2

    goto :goto_f

    :cond_11
    move-object v8, v4

    :goto_f
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->g:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    if-eqz v2, :cond_12

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    move-object v11, v2

    goto :goto_10

    :cond_12
    move-object v11, v4

    :goto_10
    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->i:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->j:Ljava/lang/String;

    filled-new-array/range {v6 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1411ef

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_15

    :cond_13
    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->f:Ljava/util/Date;

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_14
    move-object v2, v4

    :goto_11
    if-nez v2, :cond_15

    move-object v2, v3

    :cond_15
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->g:Ljava/util/Date;

    if-eqz v5, :cond_16

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_16
    move-object v5, v4

    :goto_12
    if-nez v5, :cond_17

    goto :goto_13

    :cond_17
    move-object v3, v5

    :goto_13
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    if-eqz v6, :cond_18

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->e:Ljava/lang/String;

    goto :goto_14

    :cond_18
    move-object v6, v4

    :goto_14
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->h:Ljava/lang/String;

    filled-new-array {v5, v6, v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1411ec

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_15
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/Hilt_TravelDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/Hilt_TravelDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    const v3, 0x7f1411f0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_19
    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1a
    invoke-static {}, Lv40;->g()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->L:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    return-object p0
.end method

.method public final P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    return-object p0
.end method

.method public final R(Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;)V
    .locals 5

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    :cond_2
    const-string p1, "  "

    invoke-static {v0, p1, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080150

    const/4 v4, 0x1

    invoke-direct {p1, v1, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v3, 0x11

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final S(Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;)V
    .locals 5

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->g:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    :cond_2
    const-string p1, "  "

    invoke-static {v0, p1, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080150

    const/4 v4, 0x1

    invoke-direct {p1, v1, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v3, 0x11

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "KEY_TRAVEL"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    move-object p1, v0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    :cond_2
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelDetailPageScreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelDetailPageScreen;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/Hilt_TravelDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v3, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->d:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v3, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {p0, v3, v4, v5}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f140cf4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lw41;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lw41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lw41;

    invoke-direct {v4, p0, v3}, Lw41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->b:Landroid/widget/LinearLayout;

    new-instance v3, Lw41;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lw41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->j:Landroid/widget/Button;

    new-instance v1, Lw41;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lw41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    const v3, 0x7f0a04c2

    const-string v4, "TRAVEL"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->i:Landroid/widget/ImageView;

    const v5, 0x7f080177

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f141013

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->R(Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->S:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->i:Landroid/widget/ImageView;

    const v5, 0x7f080260

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f141331

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->S(Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->S:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->i:Landroid/widget/ImageView;

    const v5, 0x7f08017d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f140aa5

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->h:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->I:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->R5()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$onViewCreated$3;

    const-string v5, "handleDeleteResult(Ljava/lang/Boolean;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    const-string v4, "handleDeleteResult"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->h6()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$onViewCreated$4;

    const-string v5, "handleEditResult(Ljava/lang/Object;)V"

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    const-string v4, "handleEditResult"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
