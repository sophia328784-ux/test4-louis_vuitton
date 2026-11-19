.class public final synthetic Lcom/vuitton/android/presentation/screen/account/inbox/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/a;->b:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/inbox/a;->b:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->s:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v4

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v11, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$1$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_2
    move-object v12, v1

    check-cast v12, Lkotlin/reflect/KFunction;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    if-ne v1, v11, :cond_4

    :cond_3
    new-instance v13, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$2$1;

    const-string v18, "onActivateNotificationsClicked()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    const-string v17, "onActivateNotificationsClicked"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v13

    :cond_4
    move-object v7, v1

    check-cast v7, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5

    if-ne v1, v11, :cond_6

    :cond_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$3$1;

    const-string v5, "navigateToPrivacyPolicy()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    const-string v4, "navigateToPrivacyPolicy"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_6
    move-object v13, v1

    check-cast v13, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v11, :cond_8

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$4$1;

    const-string v5, "onNotificationClicked(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    const-string v4, "onNotificationClicked"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_8
    move-object v14, v1

    check-cast v14, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    if-ne v1, v11, :cond_a

    :cond_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$5$1;

    const-string v5, "onNotificationLongClicked(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    const-string v4, "onNotificationLongClicked"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_a
    move-object v15, v1

    check-cast v15, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-ne v3, v11, :cond_c

    :cond_b
    new-instance v16, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$6$1;

    const-string v21, "closeNotificationPopup()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v20, "closeNotificationPopup"

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v16

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_d

    if-ne v3, v11, :cond_e

    :cond_d
    new-instance v17, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$7$1;

    const-string v22, "onItemExpanded(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v21, "onItemExpanded"

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v17

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_f

    if-ne v3, v11, :cond_10

    :cond_f
    new-instance v18, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$8$1;

    const-string v23, "onItemCollapsed(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V"

    const/16 v24, 0x0

    const/16 v19, 0x1

    const-class v21, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v22, "onItemCollapsed"

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v24}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v18

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v18, v3

    check-cast v18, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_11

    if-ne v3, v11, :cond_12

    :cond_11
    new-instance v19, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$9$1;

    const-string v24, "deleteNotification(Ljava/lang/String;)V"

    const/16 v25, 0x0

    const/16 v20, 0x1

    const-class v22, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v23, "deleteNotification"

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v25}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v19

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_13

    if-ne v3, v11, :cond_14

    :cond_13
    new-instance v20, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$10$1;

    const-string v25, "hideLongPressTooltip()V"

    const/16 v26, 0x0

    const/16 v21, 0x0

    const-class v23, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v24, "hideLongPressTooltip"

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v26}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v20

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v20, v3

    check-cast v20, Lkotlin/reflect/KFunction;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_15

    if-ne v3, v11, :cond_16

    :cond_15
    new-instance v21, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$11$1;

    const-string v26, "showLongPressTooltip()V"

    const/16 v27, 0x0

    const/16 v22, 0x0

    const-class v24, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    const-string v25, "showLongPressTooltip"

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v21

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v21, v3

    check-cast v21, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    if-ne v1, v11, :cond_18

    :cond_17
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$12$1;

    const-string v5, "batchSDKOpting()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    const-string v4, "batchSDKOpting"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_18
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v12, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    check-cast v15, Lkotlin/jvm/functions/Function1;

    check-cast v16, Lkotlin/jvm/functions/Function0;

    check-cast v17, Lkotlin/jvm/functions/Function1;

    check-cast v18, Lkotlin/jvm/functions/Function1;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_19

    if-ne v3, v11, :cond_1a

    :cond_19
    new-instance v3, Lss;

    const/16 v0, 0x15

    invoke-direct {v3, v2, v0}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v21, Lkotlin/jvm/functions/Function0;

    check-cast v20, Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function0;

    const/16 v24, 0x0

    move-object/from16 v11, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v11

    move-object v11, v7

    move-object/from16 v23, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v3

    invoke-static/range {v8 .. v24}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1b
    move-object/from16 v23, v8

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
