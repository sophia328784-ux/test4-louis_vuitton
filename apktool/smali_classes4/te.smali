.class public final synthetic Lte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:F

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroidx/compose/material3/SnackbarHostState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iput-object p2, p0, Lte;->c:Landroidx/compose/material3/SnackbarHostState;

    iput p3, p0, Lte;->d:F

    iput-object p4, p0, Lte;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lte;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lte;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lte;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lte;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lte;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lte;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lte;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lte;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lte;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lte;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lte;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lte;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lte;->r:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lte;->s:Lkotlin/jvm/functions/Function0;

    move/from16 p1, p19

    iput p1, p0, Lte;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lte;->t:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget-object v1, v0, Lte;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    move-object v2, v1

    iget-object v1, v0, Lte;->c:Landroidx/compose/material3/SnackbarHostState;

    move-object v3, v2

    iget v2, v0, Lte;->d:F

    move-object v4, v3

    iget-object v3, v0, Lte;->e:Lkotlin/jvm/functions/Function0;

    move-object v5, v4

    iget-object v4, v0, Lte;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, v5

    iget-object v5, v0, Lte;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lte;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-object v7, v0, Lte;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lte;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lte;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lte;->l:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lte;->m:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lte;->n:Lkotlin/jvm/functions/Function1;

    move-object v14, v13

    iget-object v13, v0, Lte;->o:Lkotlin/jvm/functions/Function1;

    move-object v15, v14

    iget-object v14, v0, Lte;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v15

    iget-object v15, v0, Lte;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v1

    iget-object v1, v0, Lte;->r:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lte;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroidx/compose/material3/SnackbarHostState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
