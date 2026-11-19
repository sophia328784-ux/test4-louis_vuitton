.class public final synthetic Lmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field public final synthetic h:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic i:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/ui/Modifier;

.field public final synthetic n:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field public final synthetic o:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic p:Z

.field public final synthetic q:Z

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic t:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmq;->b:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lmq;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p3, p0, Lmq;->d:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Lmq;->e:I

    iput p5, p0, Lmq;->f:I

    iput-object p6, p0, Lmq;->g:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iput-object p7, p0, Lmq;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p8, p0, Lmq;->i:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p9, p0, Lmq;->j:Landroidx/compose/ui/Modifier;

    iput-object p10, p0, Lmq;->k:Landroidx/compose/ui/Modifier;

    iput-object p11, p0, Lmq;->l:Landroidx/compose/ui/Modifier;

    iput-object p12, p0, Lmq;->m:Landroidx/compose/ui/Modifier;

    iput-object p13, p0, Lmq;->n:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p14, p0, Lmq;->o:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-boolean p15, p0, Lmq;->p:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Lmq;->q:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lmq;->r:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p18

    iput-object p1, p0, Lmq;->s:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 p1, p19

    iput-object p1, p0, Lmq;->t:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lmq;->j:Landroidx/compose/ui/Modifier;

    if-eqz v3, :cond_0

    const-string v4, "CoreTextField$lambda$22"

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    move-object v12, v3

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Landroidx/compose/foundation/text/b;

    iget-object v5, v0, Lmq;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v6, v0, Lmq;->d:Landroidx/compose/ui/text/TextStyle;

    iget v7, v0, Lmq;->e:I

    iget v8, v0, Lmq;->f:I

    iget-object v9, v0, Lmq;->g:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-object v10, v0, Lmq;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v11, v0, Lmq;->i:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v13, v0, Lmq;->k:Landroidx/compose/ui/Modifier;

    iget-object v14, v0, Lmq;->l:Landroidx/compose/ui/Modifier;

    iget-object v15, v0, Lmq;->m:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lmq;->n:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v3, v0, Lmq;->o:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lmq;->p:Z

    move/from16 v18, v2

    iget-boolean v2, v0, Lmq;->q:Z

    move/from16 v19, v2

    iget-object v2, v0, Lmq;->r:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v2

    iget-object v2, v0, Lmq;->s:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v21, v2

    iget-object v2, v0, Lmq;->t:Landroidx/compose/ui/unit/Density;

    move-object/from16 v22, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v22}, Landroidx/compose/foundation/text/b;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    const v2, -0x2a4ac0e

    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Lmq;->b:Lkotlin/jvm/functions/Function3;

    invoke-interface {v0, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
