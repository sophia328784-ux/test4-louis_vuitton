.class public abstract Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x12bb0a98

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p3, 0x6

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, p3, 0x30

    const/16 v6, 0x20

    if-nez v5, :cond_3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit8 v5, v3, 0x13

    const/16 v7, 0x12

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v7, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    move v5, v9

    :goto_3
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v5, 0x7f140f84

    invoke-static {v2, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f140f31

    invoke-static {v2, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f140f16

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    and-int/lit8 v11, v3, 0xe

    if-ne v11, v4, :cond_5

    move v4, v8

    goto :goto_4

    :cond_5
    move v4, v9

    :goto_4
    and-int/lit8 v11, v3, 0x70

    if-ne v11, v6, :cond_6

    goto :goto_5

    :cond_6
    move v8, v9

    :goto_5
    or-int/2addr v4, v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_7

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_8

    :cond_7
    new-instance v6, Lil;

    const/4 v4, 0x7

    invoke-direct {v6, v0, v1, v4}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v12, v6

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const v4, 0x7f140a67

    invoke-static {v2, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    shl-int/lit8 v3, v3, 0xf

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    const v4, 0x30006

    or-int v22, v3, v4

    const v23, 0xe631b

    const/4 v1, 0x0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v5

    const/4 v5, 0x0

    move-object v6, v7

    const-string v7, "osa_appointmentCancelDescription_text"

    const/4 v9, 0x0

    move-object v8, v10

    const/4 v10, 0x0

    sget-object v11, Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$CancelConfirmAction;->a:Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$CancelConfirmAction;

    const/4 v14, 0x0

    sget-object v15, Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$CancelDismissAction;->a:Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$CancelDismissAction;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v21, 0x180000

    move-object/from16 v16, p1

    invoke-static/range {v1 .. v23}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v16

    goto :goto_6

    :cond_9
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, La9;

    const/4 v4, 0x5

    move/from16 v5, p3

    invoke-direct {v3, v0, v1, v5, v4}, La9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    if-eqz p0, :cond_0

    const-string v0, "OsaBottomSheetLayout"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x6d5ec0ea

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x4

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    :goto_0
    or-int/2addr p4, p5

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    :goto_1
    or-int/2addr p4, v0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x100

    goto :goto_2

    :cond_3
    const/16 v0, 0x80

    :goto_2
    or-int/2addr p4, v0

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x800

    goto :goto_3

    :cond_4
    const/16 v0, 0x400

    :goto_3
    or-int/2addr p4, v0

    and-int/lit16 v0, p4, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    and-int/lit8 v2, p4, 0x1

    invoke-virtual {p0, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetPrepare;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetPrepare;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x6f4df255

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 p4, p4, 0xe

    invoke-static {v1, p0, p4}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreenKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetCancel;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetCancel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x6f4dfd8f

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 p4, p4, 0x6

    and-int/lit8 p4, p4, 0x7e

    invoke-static {p2, p3, p0, p4}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreenKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_7
    const p1, 0x6f4de9b9

    invoke-static {p0, p1, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Luv;

    const/16 v6, 0x15

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz v0, :cond_0

    const-string v2, "OsaBottomSheetPrepare"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const v0, 0x475f373a

    move-object/from16 v3, p1

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    or-int/2addr v0, v1

    and-int/lit8 v5, v0, 0x3

    if-eq v5, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v13, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v4, 0x7f140f70

    invoke-static {v13, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lxe0;

    invoke-direct {v5, v2, v3}, Lxe0;-><init>(Ljava/lang/Object;I)V

    const v3, 0x6e0452c5

    invoke-static {v3, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    and-int/lit8 v14, v0, 0xe

    const/16 v15, 0x30

    const/16 v16, 0x7fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v16}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Lqe;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v1, v4}, Lqe;-><init>(Landroidx/compose/ui/Modifier;II)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
