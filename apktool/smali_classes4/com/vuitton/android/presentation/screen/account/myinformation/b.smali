.class public final synthetic Lcom/vuitton/android/presentation/screen/account/myinformation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

.field public final synthetic d:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 13
    iput p4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->d:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->d:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->b:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->e:Lkotlin/jvm/functions/Function0;

    const/16 v3, 0x10

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->d:Landroidx/navigation3/runtime/NavBackStack;

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v8, 0x11

    if-eq v1, v3, :cond_0

    move v7, v6

    :cond_0
    and-int/lit8 v1, v8, 0x1

    invoke-interface {v13, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140db8

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    new-instance v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1;

    const-string v19, "loadBranchIdEditForm()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v18, "loadBranchIdEditForm"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v14

    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    new-instance v1, Ly0;

    const/16 v0, 0xc

    invoke-direct {v1, v5, v2, v0}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_6

    if-ne v1, v4, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v16, v8

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1;

    const-string v19, "editBranchId()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v18, "editBranchId"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v14

    :goto_1
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    move-object/from16 v8, v16

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_7
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v8, 0x11

    if-eq v1, v3, :cond_8

    move v7, v6

    :cond_8
    and-int/lit8 v1, v8, 0x1

    invoke-interface {v13, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140dc9

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    if-ne v1, v4, :cond_a

    :cond_9
    new-instance v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1;

    const-string v19, "loadTaxIdEditForm()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v18, "loadTaxIdEditForm"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v14

    :cond_a
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b

    if-ne v1, v4, :cond_c

    :cond_b
    new-instance v1, Ly0;

    const/16 v0, 0xf

    invoke-direct {v1, v5, v2, v0}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v4, :cond_d

    goto :goto_3

    :cond_d
    move-object/from16 v16, v8

    goto :goto_4

    :cond_e
    :goto_3
    new-instance v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1;

    const-string v19, "editTaxId()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v18, "editTaxId"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v14

    :goto_4
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    move-object/from16 v8, v16

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v8, 0x11

    if-eq v1, v3, :cond_10

    move v1, v6

    goto :goto_6

    :cond_10
    move v1, v7

    :goto_6
    and-int/lit8 v3, v8, 0x1

    invoke-interface {v13, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140676

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_11

    if-ne v1, v4, :cond_12

    :cond_11
    new-instance v1, Lsd0;

    invoke-direct {v1, v8, v7}, Lsd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_13

    if-ne v1, v4, :cond_14

    :cond_13
    new-instance v1, Ly0;

    const/16 v0, 0xe

    invoke-direct {v1, v5, v2, v0}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_16

    if-ne v1, v4, :cond_15

    goto :goto_7

    :cond_15
    move-object/from16 v16, v8

    goto :goto_8

    :cond_16
    :goto_7
    new-instance v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1;

    const-string v19, "editMyInfo()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v18, "editMyInfo"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v14

    :goto_8
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    move-object/from16 v8, v16

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    if-eq v1, v3, :cond_18

    move v1, v6

    goto :goto_a

    :cond_18
    move v1, v7

    :goto_a
    and-int/2addr v2, v6

    invoke-interface {v15, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_19

    if-ne v2, v4, :cond_1a

    :cond_19
    move-object v10, v8

    goto :goto_b

    :cond_1a
    move-object v10, v8

    goto :goto_c

    :goto_b
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1;

    const-string v13, "logoutUser()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v12, "logoutUser"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v8

    :goto_c
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1b

    if-ne v3, v4, :cond_1c

    :cond_1b
    new-instance v3, Ltd0;

    invoke-direct {v3, v10, v5, v7}, Ltd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1d

    if-ne v3, v4, :cond_1e

    :cond_1d
    new-instance v3, Ltd0;

    invoke-direct {v3, v10, v5, v6}, Ltd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1f

    if-ne v3, v4, :cond_20

    :cond_1f
    new-instance v3, Lx0;

    const/4 v1, 0x7

    invoke-direct {v3, v5, v1}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_21

    if-ne v3, v4, :cond_22

    :cond_21
    new-instance v3, Lx0;

    const/16 v1, 0x8

    invoke-direct {v3, v5, v1}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/b;->e:Lkotlin/jvm/functions/Function0;

    move-object v8, v10

    move-object v10, v2

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_23
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
