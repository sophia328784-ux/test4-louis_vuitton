.class public final synthetic Lnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic n:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lkotlin/jvm/functions/Function3;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p2, p0, Lnq;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lnq;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lnq;->e:Landroidx/compose/ui/text/TextStyle;

    iput-object p5, p0, Lnq;->f:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p6, p0, Lnq;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lnq;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Lnq;->i:Landroidx/compose/ui/graphics/Brush;

    iput-boolean p9, p0, Lnq;->j:Z

    iput p10, p0, Lnq;->k:I

    iput p11, p0, Lnq;->l:I

    iput-object p12, p0, Lnq;->m:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p13, p0, Lnq;->n:Landroidx/compose/foundation/text/KeyboardActions;

    iput-boolean p14, p0, Lnq;->o:Z

    iput-boolean p15, p0, Lnq;->p:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lnq;->q:Lkotlin/jvm/functions/Function3;

    move/from16 p1, p17

    iput p1, p0, Lnq;->r:I

    move/from16 p1, p18

    iput p1, p0, Lnq;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lnq;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lnq;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lnq;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v2, v1

    iget-object v1, v0, Lnq;->c:Lkotlin/jvm/functions/Function1;

    move-object v3, v2

    iget-object v2, v0, Lnq;->d:Landroidx/compose/ui/Modifier;

    move-object v4, v3

    iget-object v3, v0, Lnq;->e:Landroidx/compose/ui/text/TextStyle;

    move-object v5, v4

    iget-object v4, v0, Lnq;->f:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v6, v5

    iget-object v5, v0, Lnq;->g:Lkotlin/jvm/functions/Function1;

    move-object v7, v6

    iget-object v6, v0, Lnq;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v8, v7

    iget-object v7, v0, Lnq;->i:Landroidx/compose/ui/graphics/Brush;

    move-object v9, v8

    iget-boolean v8, v0, Lnq;->j:Z

    move-object v10, v9

    iget v9, v0, Lnq;->k:I

    move-object v11, v10

    iget v10, v0, Lnq;->l:I

    move-object v12, v11

    iget-object v11, v0, Lnq;->m:Landroidx/compose/ui/text/input/ImeOptions;

    move-object v13, v12

    iget-object v12, v0, Lnq;->n:Landroidx/compose/foundation/text/KeyboardActions;

    move-object v14, v13

    iget-boolean v13, v0, Lnq;->o:Z

    move-object v15, v14

    iget-boolean v14, v0, Lnq;->p:Z

    iget-object v0, v0, Lnq;->q:Lkotlin/jvm/functions/Function3;

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
