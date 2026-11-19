.class public final synthetic Lck0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

.field public final synthetic l:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lck0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lck0;->d:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lck0;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lck0;->f:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lck0;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lck0;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lck0;->i:Lkotlin/jvm/functions/Function2;

    iput-boolean p9, p0, Lck0;->j:Z

    iput-object p10, p0, Lck0;->k:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    iput-object p11, p0, Lck0;->l:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p12, p0, Lck0;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lck0;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p14, p0, Lck0;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lck0;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 p1, p16

    iput p1, p0, Lck0;->q:I

    move/from16 p1, p17

    iput p1, p0, Lck0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lck0;->q:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget v1, v0, Lck0;->r:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget-object v1, v0, Lck0;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lck0;->c:Lkotlin/jvm/functions/Function2;

    move-object v3, v2

    iget-object v2, v0, Lck0;->d:Lkotlin/jvm/functions/Function3;

    move-object v4, v3

    iget-object v3, v0, Lck0;->e:Lkotlin/jvm/functions/Function2;

    move-object v5, v4

    iget-object v4, v0, Lck0;->f:Lkotlin/jvm/functions/Function2;

    move-object v6, v5

    iget-object v5, v0, Lck0;->g:Lkotlin/jvm/functions/Function2;

    move-object v7, v6

    iget-object v6, v0, Lck0;->h:Lkotlin/jvm/functions/Function2;

    move-object v8, v7

    iget-object v7, v0, Lck0;->i:Lkotlin/jvm/functions/Function2;

    move-object v9, v8

    iget-boolean v8, v0, Lck0;->j:Z

    move-object v10, v9

    iget-object v9, v0, Lck0;->k:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    move-object v11, v10

    iget-object v10, v0, Lck0;->l:Landroidx/compose/material3/internal/FloatProducer;

    move-object v12, v11

    iget-object v11, v0, Lck0;->m:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lck0;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v14, v13

    iget-object v13, v0, Lck0;->o:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lck0;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v18, v14

    move-object v14, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
