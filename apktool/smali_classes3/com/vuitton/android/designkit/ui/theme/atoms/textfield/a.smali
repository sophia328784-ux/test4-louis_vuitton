.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic n:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

.field public final synthetic o:Landroidx/compose/ui/Modifier;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->b:I

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->g:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iput-boolean p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->h:Z

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->i:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->j:Z

    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->l:Landroidx/compose/foundation/text/KeyboardActions;

    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p13, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->n:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    iput-object p14, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->o:Landroidx/compose/ui/Modifier;

    iput-boolean p15, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->p:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->f:Landroidx/compose/ui/Modifier;

    if-eqz v3, :cond_0

    const-string v4, "LVPasswordTextField_w8Xk4iI$lambda$1"

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v2, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    const/16 v16, 0x73

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->b:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v11, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v11, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v7, v5}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v19, v4

    goto :goto_2

    :cond_2
    sget-object v4, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lb21;

    goto :goto_1

    :goto_2
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, -0x94ca55b

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->L:I

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_3
    const v4, -0x94bb13b

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->M:I

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x1e32bbfa

    const v5, 0x7f14036f

    :goto_4
    invoke-static {v1, v2, v5, v1}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_5

    :cond_4
    const v2, 0x1e33e27a

    const v5, 0x7f14032b

    goto :goto_4

    :goto_5
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_5

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v2, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVPasswordTextFieldKt$LVPasswordTextField$2$1$1;

    const-string v14, "togglePasswordVisibility()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

    const-string v13, "togglePasswordVisibility"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v9

    :cond_6
    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v30, 0x0

    const v31, 0x260c480

    iget-object v2, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->d:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->e:Lkotlin/jvm/functions/Function1;

    move-object v4, v2

    move-object v2, v3

    iget-object v3, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->g:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    move-object v5, v4

    iget-boolean v4, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->h:Z

    move-object v6, v5

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->i:Ljava/lang/String;

    move-object v9, v7

    move-object v11, v8

    iget-boolean v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->j:Z

    move-object v10, v9

    iget-object v9, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->k:Ljava/lang/String;

    move-object v12, v10

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->l:Landroidx/compose/foundation/text/KeyboardActions;

    move-object v14, v13

    const/4 v13, 0x1

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v20, v15

    const/4 v15, 0x0

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v7, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->n:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    iget-object v10, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->o:Landroidx/compose/ui/Modifier;

    const/16 v25, 0x0

    iget-boolean v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;->p:Z

    const/16 v28, 0x0

    const/16 v29, 0xc00

    move/from16 v26, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v0, v20

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v20, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v31}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V

    goto :goto_6

    :cond_7
    move-object/from16 v27, v1

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
