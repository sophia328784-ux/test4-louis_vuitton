.class public final synthetic Lak0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic h:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic i:Z

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic n:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lak0;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iput-object p2, p0, Lak0;->c:Ljava/lang/String;

    iput-object p3, p0, Lak0;->d:Lkotlin/jvm/functions/Function2;

    iput-boolean p4, p0, Lak0;->e:Z

    iput-boolean p5, p0, Lak0;->f:Z

    iput-object p6, p0, Lak0;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p7, p0, Lak0;->h:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-boolean p8, p0, Lak0;->i:Z

    iput-object p9, p0, Lak0;->j:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lak0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lak0;->l:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Lak0;->m:Landroidx/compose/material3/TextFieldColors;

    iput-object p13, p0, Lak0;->n:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p14, p0, Lak0;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p15, p0, Lak0;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget v1, v0, Lak0;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v1, v0, Lak0;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    move-object v2, v1

    iget-object v1, v0, Lak0;->c:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lak0;->d:Lkotlin/jvm/functions/Function2;

    move-object v4, v3

    iget-boolean v3, v0, Lak0;->e:Z

    move-object v5, v4

    iget-boolean v4, v0, Lak0;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lak0;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v7, v6

    iget-object v6, v0, Lak0;->h:Landroidx/compose/foundation/interaction/InteractionSource;

    move-object v8, v7

    iget-boolean v7, v0, Lak0;->i:Z

    move-object v9, v8

    iget-object v8, v0, Lak0;->j:Lkotlin/jvm/functions/Function2;

    move-object v10, v9

    iget-object v9, v0, Lak0;->k:Lkotlin/jvm/functions/Function2;

    move-object v11, v10

    iget-object v10, v0, Lak0;->l:Lkotlin/jvm/functions/Function2;

    move-object v12, v11

    iget-object v11, v0, Lak0;->m:Landroidx/compose/material3/TextFieldColors;

    move-object v13, v12

    iget-object v12, v0, Lak0;->n:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v0, v0, Lak0;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v15}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
