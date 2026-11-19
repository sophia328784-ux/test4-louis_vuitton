.class public final synthetic Lxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic i:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic p:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic q:Lkotlin/jvm/functions/Function3;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p2, p0, Lxc;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lxc;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lxc;->e:Z

    iput-boolean p5, p0, Lxc;->f:Z

    iput-object p6, p0, Lxc;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lxc;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p8, p0, Lxc;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iput-boolean p9, p0, Lxc;->j:Z

    iput p10, p0, Lxc;->k:I

    iput p11, p0, Lxc;->l:I

    iput-object p12, p0, Lxc;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p13, p0, Lxc;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lxc;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p15, p0, Lxc;->p:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 p1, p16

    iput-object p1, p0, Lxc;->q:Lkotlin/jvm/functions/Function3;

    move/from16 p1, p17

    iput p1, p0, Lxc;->r:I

    move/from16 p1, p18

    iput p1, p0, Lxc;->s:I

    move/from16 p1, p19

    iput p1, p0, Lxc;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lxc;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lxc;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lxc;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v2, v1

    iget-object v1, v0, Lxc;->c:Lkotlin/jvm/functions/Function1;

    move-object v3, v2

    iget-object v2, v0, Lxc;->d:Landroidx/compose/ui/Modifier;

    move-object v4, v3

    iget-boolean v3, v0, Lxc;->e:Z

    move-object v5, v4

    iget-boolean v4, v0, Lxc;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lxc;->g:Landroidx/compose/ui/text/TextStyle;

    move-object v7, v6

    iget-object v6, v0, Lxc;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v8, v7

    iget-object v7, v0, Lxc;->i:Landroidx/compose/foundation/text/KeyboardActions;

    move-object v9, v8

    iget-boolean v8, v0, Lxc;->j:Z

    move-object v10, v9

    iget v9, v0, Lxc;->k:I

    move-object v11, v10

    iget v10, v0, Lxc;->l:I

    move-object v12, v11

    iget-object v11, v0, Lxc;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v13, v12

    iget-object v12, v0, Lxc;->n:Lkotlin/jvm/functions/Function1;

    move-object v14, v13

    iget-object v13, v0, Lxc;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v15, v14

    iget-object v14, v0, Lxc;->p:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v19, v15

    iget-object v15, v0, Lxc;->q:Lkotlin/jvm/functions/Function3;

    iget v0, v0, Lxc;->t:I

    move-object/from16 v20, v19

    move/from16 v19, v0

    move-object/from16 v0, v20

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
