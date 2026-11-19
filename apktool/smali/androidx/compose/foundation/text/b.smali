.class public final synthetic Landroidx/compose/foundation/text/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field public final synthetic g:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic h:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic i:Landroidx/compose/ui/Modifier;

.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field public final synthetic n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic s:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/b;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/b;->c:Landroidx/compose/ui/text/TextStyle;

    iput p3, p0, Landroidx/compose/foundation/text/b;->d:I

    iput p4, p0, Landroidx/compose/foundation/text/b;->e:I

    iput-object p5, p0, Landroidx/compose/foundation/text/b;->f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iput-object p6, p0, Landroidx/compose/foundation/text/b;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p7, p0, Landroidx/compose/foundation/text/b;->h:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p8, p0, Landroidx/compose/foundation/text/b;->i:Landroidx/compose/ui/Modifier;

    iput-object p9, p0, Landroidx/compose/foundation/text/b;->j:Landroidx/compose/ui/Modifier;

    iput-object p10, p0, Landroidx/compose/foundation/text/b;->k:Landroidx/compose/ui/Modifier;

    iput-object p11, p0, Landroidx/compose/foundation/text/b;->l:Landroidx/compose/ui/Modifier;

    iput-object p12, p0, Landroidx/compose/foundation/text/b;->m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p13, p0, Landroidx/compose/foundation/text/b;->n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-boolean p14, p0, Landroidx/compose/foundation/text/b;->o:Z

    iput-boolean p15, p0, Landroidx/compose/foundation/text/b;->p:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/foundation/text/b;->q:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/foundation/text/b;->r:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/compose/foundation/text/b;->s:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroidx/compose/foundation/text/b;->i:Landroidx/compose/ui/Modifier;

    const-string v4, "CoreTextField$lambda$22$0"

    if-eqz v3, :cond_0

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    and-int/lit8 v5, v2, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroidx/compose/foundation/text/b;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v4, v10, Landroidx/compose/foundation/text/LegacyTextFieldState;->g:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    iget v4, v4, Landroidx/compose/ui/unit/Dp;->b:F

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v4, v0, Landroidx/compose/foundation/text/b;->d:I

    iget v5, v0, Landroidx/compose/foundation/text/b;->e:I

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->a(II)V

    iget-object v8, v0, Landroidx/compose/foundation/text/b;->c:Landroidx/compose/ui/text/TextStyle;

    if-ne v4, v7, :cond_2

    const v9, 0x7fffffff

    if-ne v5, v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Landroidx/compose/foundation/text/HeightInLinesElement;

    invoke-direct {v9, v8, v4, v5}, Landroidx/compose/foundation/text/HeightInLinesElement;-><init>(Landroidx/compose/ui/text/TextStyle;II)V

    invoke-interface {v2, v9}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v4, :cond_4

    :cond_3
    new-instance v9, Lw1;

    const/16 v4, 0x1b

    invoke-direct {v9, v10, v4}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v9, Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Landroidx/compose/foundation/text/b;->f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-object v11, v4, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v14, v0, Landroidx/compose/foundation/text/b;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v12, v14, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    sget-object v15, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    const/16 v15, 0x20

    shr-long v6, v12, v15

    long-to-int v6, v6

    move-object v7, v10

    move-object/from16 v16, v11

    iget-wide v10, v4, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->e:J

    move-wide/from16 v17, v10

    shr-long v10, v17, v15

    long-to-int v10, v10

    if-eq v6, v10, :cond_5

    goto :goto_2

    :cond_5
    const-wide v19, 0xffffffffL

    and-long v10, v12, v19

    long-to-int v6, v10

    and-long v10, v17, v19

    long-to-int v10, v10

    if-eq v6, v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v6

    :goto_2
    iget-wide v10, v14, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    iput-wide v10, v4, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->e:J

    iget-object v10, v14, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v11, v0, Landroidx/compose/foundation/text/b;->h:Landroidx/compose/ui/text/input/VisualTransformation;

    invoke-static {v11, v10}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->a(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v10

    sget-object v11, Landroidx/compose/foundation/text/TextFieldScrollKt$WhenMappings;->a:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    new-instance v11, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    invoke-direct {v11, v4, v6, v10, v9}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ILandroidx/compose/ui/text/input/TransformedText;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v11, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    invoke-direct {v11, v4, v6, v10, v9}, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ILandroidx/compose/ui/text/input/TransformedText;Lkotlin/jvm/functions/Function0;)V

    :goto_3
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v2, v11}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/b;->j:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/text/TextFieldSizeElement;

    invoke-direct {v3, v8}, Landroidx/compose/foundation/text/TextFieldSizeElement;-><init>(Landroidx/compose/ui/text/TextStyle;)V

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/b;->k:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/b;->l:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/b;->m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-static {v2, v3}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v8, Lkj;

    iget-object v9, v0, Landroidx/compose/foundation/text/b;->n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-boolean v11, v0, Landroidx/compose/foundation/text/b;->o:Z

    iget-boolean v12, v0, Landroidx/compose/foundation/text/b;->p:Z

    iget-object v13, v0, Landroidx/compose/foundation/text/b;->q:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Landroidx/compose/foundation/text/b;->r:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v0, v0, Landroidx/compose/foundation/text/b;->s:Landroidx/compose/ui/unit/Density;

    move-object/from16 v16, v0

    move/from16 v17, v5

    move-object v10, v7

    invoke-direct/range {v8 .. v17}, Lkj;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;I)V

    const v0, 0x54340ce8

    invoke-static {v0, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v3, 0x30

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
