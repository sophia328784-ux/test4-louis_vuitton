.class public abstract Lcom/vuitton/android/presentation/screen/account/inbox/components/NotificationDialogKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p5

    const-string v1, "NotificationDialog"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x15c34df7

    move-object/from16 v5, p4

    invoke-static {v3, v4, v5, v2}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    or-int/lit8 v2, v7, 0x6

    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_2

    move-object/from16 v5, p1

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_0

    :cond_1
    const/16 v6, 0x10

    :goto_0
    or-int/2addr v2, v6

    goto :goto_1

    :cond_2
    move-object/from16 v5, p1

    :goto_1
    and-int/lit16 v6, v7, 0x180

    if-nez v6, :cond_4

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v2, v6

    :cond_4
    and-int/lit16 v6, v7, 0xc00

    if-nez v6, :cond_6

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x800

    goto :goto_3

    :cond_5
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v2, v6

    :cond_6
    move v9, v2

    and-int/lit16 v2, v9, 0x493

    const/16 v6, 0x492

    if-eq v2, v6, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    and-int/lit8 v6, v9, 0x1

    invoke-virtual {v8, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v6

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v2

    new-instance v10, Landroidx/compose/ui/window/DialogProperties;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    new-instance v0, Lff;

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Lff;-><init>(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Landroidx/compose/foundation/ScrollState;)V

    move-object v6, v1

    const v1, 0x1556970e

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    shr-int/lit8 v0, v9, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v4, v0, 0x1b0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v3, v8

    move-object v1, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v6

    goto :goto_5

    :cond_8
    move-object v3, v8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_9

    new-instance v0, Li1;

    const/16 v6, 0x1c

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v6}, Li1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
