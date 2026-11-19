.class public final synthetic Lzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lzd;->b:I

    iput-object p1, p0, Lzd;->d:Ljava/lang/Object;

    iput p2, p0, Lzd;->c:I

    iput-object p3, p0, Lzd;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Lzd;->b:I

    iput-object p1, p0, Lzd;->d:Ljava/lang/Object;

    iput-object p2, p0, Lzd;->e:Ljava/lang/Object;

    iput p3, p0, Lzd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lzd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzd;->e:Ljava/lang/Object;

    iput p2, p0, Lzd;->c:I

    iput-object p3, p0, Lzd;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lzd;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "contactUsNavigator"

    const-string v5, "chatAttachable"

    const/4 v6, 0x0

    iget v7, v0, Lzd;->c:I

    iget-object v8, v0, Lzd;->e:Ljava/lang/Object;

    iget-object v9, v0, Lzd;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v9, Landroidx/compose/foundation/ScrollNode;

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v9, Landroidx/compose/foundation/ScrollNode;->p:Landroidx/compose/foundation/ScrollState;

    iget-object v1, v1, Landroidx/compose/foundation/ScrollState;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v1

    if-gez v1, :cond_0

    move v1, v3

    :cond_0
    if-le v1, v7, :cond_1

    move v1, v7

    :cond_1
    iget-boolean v4, v9, Landroidx/compose/foundation/ScrollNode;->q:Z

    if-eqz v4, :cond_2

    sub-int/2addr v1, v7

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    iget-boolean v4, v9, Landroidx/compose/foundation/ScrollNode;->r:Z

    if-eqz v4, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iput-boolean v2, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    invoke-static {v0, v8, v5, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->z(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iput-boolean v3, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->K:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v15, :cond_5

    iget v14, v0, Lzd;->c:I

    invoke-virtual/range {v10 .. v15}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->K:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->L:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v15, :cond_7

    iget v14, v0, Lzd;->c:I

    invoke-virtual/range {v10 .. v15}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_3
    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->K:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->L:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v15, :cond_9

    iget v14, v0, Lzd;->c:I

    invoke-virtual/range {v10 .. v15}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_4
    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v10, :cond_c

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v15, :cond_b

    iget v14, v0, Lzd;->c:I

    invoke-virtual/range {v10 .. v15}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_5
    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v10, :cond_e

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v15, :cond_d

    iget v14, v0, Lzd;->c:I

    invoke-virtual/range {v10 .. v15}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_6
    check-cast v9, Landroidx/compose/runtime/RecomposeScopeImpl;

    check-cast v8, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composition;

    iget v1, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    if-ne v1, v7, :cond_17

    iget-object v1, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    instance-of v1, v0, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v1, :cond_17

    iget-object v1, v8, Landroidx/collection/ObjectIntMap;->a:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_17

    move v5, v3

    :goto_3
    aget-wide v10, v1, v5

    not-long v12, v10

    const/4 v6, 0x7

    shl-long/2addr v12, v6

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v6, v12, v14

    if-eqz v6, :cond_16

    sub-int v6, v5, v4

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v13, v3

    :goto_4
    if-ge v13, v6, :cond_15

    const-wide/16 v14, 0xff

    and-long/2addr v14, v10

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_13

    shl-int/lit8 v14, v5, 0x3

    add-int/2addr v14, v13

    iget-object v15, v8, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    aget-object v15, v15, v14

    move/from16 v16, v2

    iget-object v2, v8, Landroidx/collection/ObjectIntMap;->c:[I

    aget v2, v2, v14

    if-eq v2, v7, :cond_f

    move/from16 v2, v16

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    if-eqz v2, :cond_11

    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    move/from16 p0, v12

    iget-object v12, v3, Landroidx/compose/runtime/CompositionImpl;->h:Landroidx/collection/MutableScatterMap;

    invoke-static {v12, v15, v9}, Landroidx/compose/runtime/collection/ScopeMap;->b(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 p1, v0

    instance-of v0, v15, Landroidx/compose/runtime/DerivedState;

    if-eqz v0, :cond_12

    move-object v0, v15

    check-cast v0, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v12, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v3, v3, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v15}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    move-object/from16 p1, v0

    move/from16 p0, v12

    :cond_12
    :goto_6
    if-eqz v2, :cond_14

    invoke-virtual {v8, v14}, Landroidx/collection/MutableObjectIntMap;->g(I)V

    goto :goto_7

    :cond_13
    move-object/from16 p1, v0

    move/from16 v16, v2

    move/from16 p0, v12

    :cond_14
    :goto_7
    shr-long v10, v10, p0

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, p0

    move-object/from16 v0, p1

    move/from16 v2, v16

    const/4 v3, 0x0

    goto :goto_4

    :cond_15
    move-object/from16 p1, v0

    move/from16 v16, v2

    move v0, v12

    if-ne v6, v0, :cond_17

    goto :goto_8

    :cond_16
    move-object/from16 p1, v0

    move/from16 v16, v2

    :goto_8
    if-eq v5, v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v9, Lkotlin/jvm/functions/Function3;

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v8, v0, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object v2, v9

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->r:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v1, :cond_19

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v10, v6

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->p:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v6, :cond_18

    iget v5, v0, Lzd;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_18
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_19
    move-object v10, v6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_9
    check-cast v8, Lkotlin/jvm/functions/Function1;

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    if-eqz v8, :cond_1c

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_1b

    iget-object v4, v9, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v5, :cond_1a

    invoke-interface {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->a(I)J

    move-result-wide v4

    const-wide v10, 0xffffffffL

    and-long/2addr v4, v10

    :goto_a
    long-to-int v4, v4

    goto :goto_b

    :cond_1a
    invoke-interface {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->a(I)J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    goto :goto_a

    :goto_b
    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;

    invoke-direct {v0, v7, v2}, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;-><init>(II)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move/from16 v16, v2

    check-cast v9, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    iget-object v1, v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;->a:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    iget-object v2, v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;

    invoke-direct {v4, v1, v7, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;-><init>(Ljava/lang/String;III)V

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object v10, v6

    check-cast v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v13, p1

    check-cast v13, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v14

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v11, :cond_1e

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v1, :cond_1d

    iget v15, v0, Lzd;->c:I

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_1e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_c
    move-object v10, v6

    check-cast v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v13, p1

    check-cast v13, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v14

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v11, :cond_20

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v1, :cond_1f

    iget v15, v0, Lzd;->c:I

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_d
    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget v1, v8, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    iget v1, v9, Landroidx/compose/ui/layout/Placeable;->c:I

    iget v2, v8, Landroidx/compose/ui/layout/Placeable;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v8, v7, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move/from16 v16, v2

    move-object v10, v6

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->d:Ljava/lang/String;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    move/from16 v3, v16

    invoke-direct {v2, v1, v3, v7, v3}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    new-instance v1, Ll0;

    const/16 v2, 0x16

    invoke-direct {v1, v8, v9, v2}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v10, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
