.class public final synthetic Lo80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic h:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic i:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo80;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo80;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo80;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lo80;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lo80;->e:Z

    iput-object p5, p0, Lo80;->o:Ljava/lang/Object;

    iput-object p6, p0, Lo80;->p:Ljava/lang/Object;

    iput-object p7, p0, Lo80;->q:Ljava/lang/Object;

    iput-object p8, p0, Lo80;->r:Ljava/lang/Object;

    iput-boolean p9, p0, Lo80;->f:Z

    iput-object p10, p0, Lo80;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p11, p0, Lo80;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p12, p0, Lo80;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iput-boolean p13, p0, Lo80;->j:Z

    iput p14, p0, Lo80;->k:I

    move/from16 p1, p15

    iput p1, p0, Lo80;->l:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lo80;->s:Ljava/lang/Object;

    move-object/from16 p1, p17

    iput-object p1, p0, Lo80;->t:Ljava/lang/Object;

    move/from16 p1, p18

    iput p1, p0, Lo80;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZIII)V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lo80;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo80;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo80;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lo80;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lo80;->r:Ljava/lang/Object;

    iput-boolean p5, p0, Lo80;->e:Z

    iput-object p6, p0, Lo80;->o:Ljava/lang/Object;

    iput-boolean p7, p0, Lo80;->f:Z

    iput-object p8, p0, Lo80;->p:Ljava/lang/Object;

    iput-object p9, p0, Lo80;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p10, p0, Lo80;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p11, p0, Lo80;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iput-object p12, p0, Lo80;->s:Ljava/lang/Object;

    iput-object p13, p0, Lo80;->t:Ljava/lang/Object;

    iput-object p14, p0, Lo80;->q:Ljava/lang/Object;

    move/from16 p1, p15

    iput-boolean p1, p0, Lo80;->j:Z

    move/from16 p1, p16

    iput p1, p0, Lo80;->k:I

    move/from16 p1, p17

    iput p1, p0, Lo80;->l:I

    move/from16 p1, p18

    iput p1, p0, Lo80;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lo80;->b:I

    iget-object v2, v0, Lo80;->t:Ljava/lang/Object;

    iget-object v3, v0, Lo80;->s:Ljava/lang/Object;

    iget-object v4, v0, Lo80;->r:Ljava/lang/Object;

    iget-object v5, v0, Lo80;->q:Ljava/lang/Object;

    iget-object v6, v0, Lo80;->p:Ljava/lang/Object;

    iget-object v7, v0, Lo80;->o:Ljava/lang/Object;

    iget-object v8, v0, Lo80;->n:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v13, v7

    check-cast v13, Landroidx/compose/ui/text/TextStyle;

    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function2;

    move-object/from16 v24, v3

    check-cast v24, Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v25, v2

    check-cast v25, Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v26, p1

    check-cast v26, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo80;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v27

    iget-object v10, v0, Lo80;->c:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lo80;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v12, v0, Lo80;->e:Z

    iget-boolean v1, v0, Lo80;->f:Z

    iget-object v2, v0, Lo80;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v3, v0, Lo80;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v4, v0, Lo80;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v5, v0, Lo80;->j:Z

    iget v6, v0, Lo80;->k:I

    iget v0, v0, Lo80;->l:I

    move/from16 v23, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v9 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v7, Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    move-object v12, v3

    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v13, v2

    check-cast v13, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lo80;->k:I

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v2, v0, Lo80;->l:I

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v2, v0, Lo80;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Lo80;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v5, v0, Lo80;->e:Z

    move-object v6, v7

    iget-boolean v7, v0, Lo80;->f:Z

    iget-object v9, v0, Lo80;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v10, v0, Lo80;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v11, v0, Lo80;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v15, v0, Lo80;->j:Z

    iget v0, v0, Lo80;->m:I

    move/from16 v19, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
