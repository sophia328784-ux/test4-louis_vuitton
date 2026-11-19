.class public final synthetic Lrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;IIII)V
    .locals 1

    move/from16 v0, p20

    iput v0, p0, Lrj;->b:I

    iput-object p1, p0, Lrj;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lrj;->d:Ljava/lang/String;

    iput-object p3, p0, Lrj;->e:Ljava/lang/String;

    iput-object p4, p0, Lrj;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-object p5, p0, Lrj;->g:Ljava/util/List;

    iput-boolean p6, p0, Lrj;->h:Z

    iput-boolean p7, p0, Lrj;->i:Z

    iput-object p8, p0, Lrj;->j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p9, p0, Lrj;->k:F

    iput p10, p0, Lrj;->l:F

    iput-boolean p11, p0, Lrj;->m:Z

    iput-boolean p12, p0, Lrj;->n:Z

    iput-object p13, p0, Lrj;->o:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Lrj;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p15

    iput-object p1, p0, Lrj;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lrj;->r:Lkotlin/jvm/functions/Function1;

    move/from16 p1, p17

    iput p1, p0, Lrj;->s:I

    move/from16 p1, p18

    iput p1, p0, Lrj;->t:I

    move/from16 p1, p19

    iput p1, p0, Lrj;->u:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lrj;->b:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lrj;->s:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget v1, v0, Lrj;->t:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget-object v2, v0, Lrj;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lrj;->d:Ljava/lang/String;

    iget-object v4, v0, Lrj;->e:Ljava/lang/String;

    iget-object v5, v0, Lrj;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v6, v0, Lrj;->g:Ljava/util/List;

    iget-boolean v7, v0, Lrj;->h:Z

    iget-boolean v8, v0, Lrj;->i:Z

    iget-object v9, v0, Lrj;->j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget v10, v0, Lrj;->k:F

    iget v11, v0, Lrj;->l:F

    iget-boolean v12, v0, Lrj;->m:Z

    iget-boolean v13, v0, Lrj;->n:Z

    iget-object v14, v0, Lrj;->o:Lkotlin/jvm/functions/Function2;

    iget-object v15, v0, Lrj;->p:Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lrj;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lrj;->r:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lrj;->u:I

    move/from16 v21, v0

    move-object/from16 v17, v1

    invoke-static/range {v2 .. v21}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lrj;->s:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget v1, v0, Lrj;->t:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget-object v1, v0, Lrj;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lrj;->d:Ljava/lang/String;

    iget-object v3, v0, Lrj;->e:Ljava/lang/String;

    iget-object v4, v0, Lrj;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v5, v0, Lrj;->g:Ljava/util/List;

    iget-boolean v6, v0, Lrj;->h:Z

    iget-boolean v7, v0, Lrj;->i:Z

    iget-object v8, v0, Lrj;->j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget v9, v0, Lrj;->k:F

    iget v10, v0, Lrj;->l:F

    iget-boolean v11, v0, Lrj;->m:Z

    iget-boolean v12, v0, Lrj;->n:Z

    iget-object v13, v0, Lrj;->o:Lkotlin/jvm/functions/Function2;

    iget-object v14, v0, Lrj;->p:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Lrj;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lrj;->r:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lrj;->u:I

    move-object/from16 v20, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    move/from16 v20, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
