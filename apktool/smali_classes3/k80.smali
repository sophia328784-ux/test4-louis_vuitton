.class public final synthetic Lk80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroidx/compose/ui/Modifier;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Ljava/lang/Integer;

.field public final synthetic n:Z

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/ui/Modifier;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;

.field public final synthetic s:Lkotlin/jvm/functions/Function1;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZLjava/lang/Integer;ZZLandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk80;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    iput-object p2, p0, Lk80;->c:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lk80;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Lk80;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iput-boolean p5, p0, Lk80;->f:Z

    iput-object p6, p0, Lk80;->g:Ljava/lang/String;

    iput-object p7, p0, Lk80;->h:Landroidx/compose/ui/Modifier;

    iput-object p8, p0, Lk80;->i:Ljava/lang/String;

    iput-object p9, p0, Lk80;->j:Landroidx/compose/ui/Modifier;

    iput-boolean p10, p0, Lk80;->k:Z

    iput-boolean p11, p0, Lk80;->l:Z

    iput-object p12, p0, Lk80;->m:Ljava/lang/Integer;

    iput-boolean p13, p0, Lk80;->n:Z

    iput-boolean p14, p0, Lk80;->o:Z

    iput-object p15, p0, Lk80;->p:Landroidx/compose/ui/Modifier;

    move-object/from16 p1, p16

    iput-object p1, p0, Lk80;->q:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lk80;->r:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lk80;->s:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p19

    iput-object p1, p0, Lk80;->t:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lk80;->u:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->a:Landroidx/compose/animation/core/SpringSpec;

    iget-object v3, v0, Lk80;->h:Landroidx/compose/ui/Modifier;

    if-eqz v3, :cond_0

    const-string v4, "LVTextFieldInternal$lambda$13$3"

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    move-object v6, v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_2

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int/2addr v2, v3

    :cond_2
    and-int/lit8 v3, v2, 0x13

    const/16 v5, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v5, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    and-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt$WhenMappings;->a:[I

    iget-object v5, v0, Lk80;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    iget-object v5, v0, Lk80;->c:Landroidx/compose/runtime/State;

    const/4 v9, 0x0

    if-eq v3, v8, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v9

    :cond_5
    move v7, v8

    :cond_6
    :goto_2
    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iget-object v4, v0, Lk80;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v5, v0, Lk80;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iget-boolean v8, v0, Lk80;->f:Z

    iget-object v11, v0, Lk80;->m:Ljava/lang/Integer;

    if-eqz v11, :cond_7

    const v12, 0x623ad4f3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v15, Lhg;

    const/16 v22, 0x7

    iget-object v12, v0, Lk80;->p:Landroidx/compose/ui/Modifier;

    iget-object v13, v0, Lk80;->q:Ljava/lang/String;

    iget-object v9, v0, Lk80;->r:Lkotlin/jvm/functions/Function0;

    move-object/from16 v21, v5

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v17, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    invoke-direct/range {v15 .. v22}, Lhg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLkotlin/Function;Ljava/lang/Object;I)V

    move-object v5, v3

    move-object/from16 v3, v21

    const v8, 0x4baf2270    # 2.2955232E7f

    invoke-static {v8, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    move-object v12, v8

    goto :goto_3

    :cond_7
    move-object/from16 v19, v5

    move-object v5, v3

    move-object/from16 v3, v19

    move/from16 v19, v8

    const v8, 0x62433031

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    const/4 v12, 0x0

    :goto_3
    if-eqz v7, :cond_8

    const v7, 0x624529e1

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v7, Luv;

    iget-object v8, v0, Lk80;->s:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lk80;->t:Ljava/lang/String;

    iget-object v11, v0, Lk80;->u:Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v7, v8, v9, v3, v11}, Luv;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Landroidx/compose/ui/focus/FocusRequester;)V

    const v8, -0x64a56531

    invoke-static {v8, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    move-object v13, v9

    goto :goto_4

    :cond_8
    const v7, 0x624e40d1

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    const/4 v13, 0x0

    :goto_4
    shl-int/lit8 v2, v2, 0x9

    and-int/lit16 v2, v2, 0x1c00

    const/high16 v7, 0x180000

    or-int/2addr v2, v7

    move-object/from16 v17, v1

    const/4 v1, 0x0

    move-object v7, v5

    iget-object v5, v0, Lk80;->g:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lk80;->i:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lk80;->j:Landroidx/compose/ui/Modifier;

    move-object v11, v9

    iget-boolean v9, v0, Lk80;->k:Z

    move-object v15, v11

    iget-boolean v11, v0, Lk80;->l:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lk80;->n:Z

    iget-boolean v0, v0, Lk80;->o:Z

    const/16 v18, 0x0

    move-object/from16 v23, v16

    move/from16 v16, v0

    move-object/from16 v0, v23

    move/from16 v23, v19

    move/from16 v19, v2

    move-object v2, v4

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v19}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_9
    move-object/from16 v17, v1

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
