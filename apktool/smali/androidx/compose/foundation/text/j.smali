.class public final synthetic Landroidx/compose/foundation/text/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic d:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic h:Landroidx/compose/foundation/text/UndoManager;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/j;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/j;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p3, p0, Landroidx/compose/foundation/text/j;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/j;->e:Z

    iput-boolean p5, p0, Landroidx/compose/foundation/text/j;->f:Z

    iput-object p6, p0, Landroidx/compose/foundation/text/j;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p7, p0, Landroidx/compose/foundation/text/j;->h:Landroidx/compose/foundation/text/UndoManager;

    iput-object p8, p0, Landroidx/compose/foundation/text/j;->i:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Landroidx/compose/foundation/text/j;->j:I

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "textFieldKeyInput_2WJ9YEU$lambda$1"

    if-eqz v1, :cond_0

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    :cond_0
    const v1, 0x32c59664

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v4, :cond_1

    new-instance v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-direct {v1}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;-><init>()V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v11, v1

    check-cast v11, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_2

    new-instance v1, Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-direct {v1}, Landroidx/compose/foundation/text/DeadKeyCombiner;-><init>()V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v14, v1

    check-cast v14, Landroidx/compose/foundation/text/DeadKeyCombiner;

    new-instance v17, Landroidx/compose/foundation/text/TextFieldKeyInput;

    const/16 v18, 0x200

    const/16 v19, 0x0

    iget-object v6, v0, Landroidx/compose/foundation/text/j;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v7, v0, Landroidx/compose/foundation/text/j;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v8, v0, Landroidx/compose/foundation/text/j;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-boolean v9, v0, Landroidx/compose/foundation/text/j;->e:Z

    iget-boolean v10, v0, Landroidx/compose/foundation/text/j;->f:Z

    iget-object v12, v0, Landroidx/compose/foundation/text/j;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v13, v0, Landroidx/compose/foundation/text/j;->h:Landroidx/compose/foundation/text/UndoManager;

    const/4 v15, 0x0

    iget-object v1, v0, Landroidx/compose/foundation/text/j;->i:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Landroidx/compose/foundation/text/j;->j:I

    move-object/from16 v16, v1

    move-object/from16 v5, v17

    move/from16 v17, v0

    invoke-direct/range {v5 .. v19}, Landroidx/compose/foundation/text/TextFieldKeyInput;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/foundation/text/selection/TextPreparedSelectionState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Landroidx/compose/foundation/text/DeadKeyCombiner;Landroidx/compose/foundation/text/KeyMapping;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v15, Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2$1$1;

    const-string v20, "process-ZmokQxo(Landroid/view/KeyEvent;)Z"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-class v18, Landroidx/compose/foundation/text/TextFieldKeyInput;

    const-string v19, "process"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v15

    :cond_4
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0
.end method
