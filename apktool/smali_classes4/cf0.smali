.class public final synthetic Lcf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf0;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lcf0;->c:Z

    iput-object p3, p0, Lcf0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcf0;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-object p5, p0, Lcf0;->f:Lkotlin/jvm/functions/Function1;

    iput-boolean p6, p0, Lcf0;->g:Z

    iput-object p7, p0, Lcf0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcf0;->i:Lkotlin/jvm/functions/Function1;

    iput-boolean p9, p0, Lcf0;->j:Z

    iput-object p10, p0, Lcf0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lcf0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcf0;->m:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcf0;->b:Landroidx/compose/ui/Modifier;

    if-eqz v2, :cond_0

    const-string v3, "NativeCartItem$lambda$4"

    invoke-static {v2, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f14110d

    invoke-static {v8, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f140a70

    invoke-static {v8, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v3, -0x6421921e

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    iget-object v4, v0, Lcf0;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v5, v0, Lcf0;->g:Z

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v5, :cond_3

    const v5, -0x7da98e88

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v10, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    iget-object v5, v0, Lcf0;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_1

    if-ne v9, v6, :cond_2

    :cond_1
    new-instance v9, Lre0;

    const/4 v7, 0x1

    invoke-direct {v9, v5, v4, v7}, Lre0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v14, v9

    check-cast v14, Lkotlin/jvm/functions/Function0;

    new-instance v9, Lcom/vuitton/android/designkit/components/components/SwipeAction;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/designkit/components/components/SwipeAction;-><init>(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_3
    const v5, -0x7da3a5b5

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v13, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    iget-object v5, v0, Lcf0;->i:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v7, v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_4

    if-ne v11, v6, :cond_5

    :cond_4
    new-instance v11, Lre0;

    const/4 v7, 0x2

    invoke-direct {v11, v5, v4, v7}, Lre0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v17, v11

    check-cast v17, Lkotlin/jvm/functions/Function0;

    new-instance v12, Lcom/vuitton/android/designkit/components/components/SwipeAction;

    const/16 v18, 0x0

    move-object v14, v1

    move-wide v15, v9

    invoke-direct/range {v12 .. v18}, Lcom/vuitton/android/designkit/components/components/SwipeAction;-><init>(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    iget-object v1, v0, Lcf0;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_6

    if-ne v7, v6, :cond_7

    :cond_6
    new-instance v7, Lre0;

    const/4 v5, 0x3

    invoke-direct {v7, v1, v4, v5}, Lre0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcf0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_8

    if-ne v10, v6, :cond_9

    :cond_8
    new-instance v10, Lre0;

    const/4 v6, 0x4

    invoke-direct {v10, v7, v4, v6}, Lre0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v6, v10

    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v12, Lef0;

    iget-boolean v14, v0, Lcf0;->j:Z

    iget-boolean v15, v0, Lcf0;->c:Z

    iget-object v9, v0, Lcf0;->k:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Lcf0;->l:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcf0;->m:Lkotlin/jvm/functions/Function3;

    move-object/from16 v20, v0

    move-object/from16 v17, v1

    move-object v13, v4

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lef0;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    const v0, 0x592b8412

    invoke-static {v0, v12, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const/high16 v9, 0x30000

    const/4 v10, 0x0

    move v4, v15

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
