.class public final synthetic Lh70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh70;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lh70;->j:Ljava/lang/Object;

    iput-object p3, p0, Lh70;->k:Ljava/lang/Object;

    iput-boolean p4, p0, Lh70;->d:Z

    iput-object p5, p0, Lh70;->l:Ljava/lang/Object;

    iput-boolean p6, p0, Lh70;->e:Z

    iput-object p7, p0, Lh70;->m:Ljava/lang/Object;

    iput-object p8, p0, Lh70;->n:Ljava/lang/Object;

    iput-object p9, p0, Lh70;->o:Ljava/lang/Object;

    iput-object p10, p0, Lh70;->p:Ljava/lang/Object;

    iput-object p11, p0, Lh70;->q:Ljava/lang/Object;

    iput-object p12, p0, Lh70;->f:Lkotlin/jvm/functions/Function1;

    iput p13, p0, Lh70;->g:I

    iput p14, p0, Lh70;->h:I

    move/from16 p1, p15

    iput p1, p0, Lh70;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;II)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lh70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh70;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lh70;->j:Ljava/lang/Object;

    iput-object p3, p0, Lh70;->f:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lh70;->k:Ljava/lang/Object;

    iput-object p5, p0, Lh70;->n:Ljava/lang/Object;

    iput p6, p0, Lh70;->g:I

    iput-object p7, p0, Lh70;->l:Ljava/lang/Object;

    iput-object p8, p0, Lh70;->p:Ljava/lang/Object;

    iput-boolean p9, p0, Lh70;->d:Z

    iput-object p10, p0, Lh70;->q:Ljava/lang/Object;

    iput-object p11, p0, Lh70;->m:Ljava/lang/Object;

    iput-boolean p12, p0, Lh70;->e:Z

    iput-object p13, p0, Lh70;->o:Ljava/lang/Object;

    iput p14, p0, Lh70;->h:I

    move/from16 p1, p15

    iput p1, p0, Lh70;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lh70;->b:I

    iget v2, v0, Lh70;->h:I

    iget-object v3, v0, Lh70;->q:Ljava/lang/Object;

    iget-object v4, v0, Lh70;->p:Ljava/lang/Object;

    iget-object v5, v0, Lh70;->o:Ljava/lang/Object;

    iget-object v6, v0, Lh70;->n:Ljava/lang/Object;

    iget-object v7, v0, Lh70;->m:Ljava/lang/Object;

    iget-object v8, v0, Lh70;->l:Ljava/lang/Object;

    iget-object v9, v0, Lh70;->k:Ljava/lang/Object;

    iget-object v10, v0, Lh70;->j:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListState;

    move-object v13, v9

    check-cast v13, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v15, v8

    check-cast v15, Landroidx/compose/foundation/gestures/FlingBehavior;

    move-object/from16 v17, v7

    check-cast v17, Landroidx/compose/foundation/OverscrollEffect;

    move-object/from16 v18, v6

    check-cast v18, Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v19, v5

    check-cast v19, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v20, v4

    check-cast v20, Landroidx/compose/ui/Alignment$Vertical;

    move-object/from16 v21, v3

    check-cast v21, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v23, p1

    check-cast v23, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lh70;->g:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v24

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v25

    iget-object v11, v0, Lh70;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v14, v0, Lh70;->d:Z

    iget-boolean v1, v0, Lh70;->e:Z

    iget-object v2, v0, Lh70;->f:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lh70;->i:I

    move/from16 v26, v0

    move/from16 v16, v1

    move-object/from16 v22, v2

    invoke-static/range {v11 .. v26}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Landroidx/compose/ui/text/input/TextFieldValue;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v6, Ljava/lang/String;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    move-object v11, v7

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v1, v0, Lh70;->i:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lh70;->c:Landroidx/compose/ui/Modifier;

    move-object v2, v10

    move-object v10, v3

    iget-object v3, v0, Lh70;->f:Lkotlin/jvm/functions/Function1;

    move-object v5, v6

    iget v6, v0, Lh70;->g:I

    move-object v7, v8

    move-object v8, v4

    move-object v4, v9

    iget-boolean v9, v0, Lh70;->d:Z

    iget-boolean v12, v0, Lh70;->e:Z

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
