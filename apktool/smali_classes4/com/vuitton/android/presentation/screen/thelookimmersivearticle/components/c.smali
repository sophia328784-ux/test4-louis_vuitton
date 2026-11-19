.class public final synthetic Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Landroidx/navigation/NavHostController;

.field public final synthetic f:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->e:Landroidx/navigation/NavHostController;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140b7d

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f140a5f

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_0

    if-ne v6, v7, :cond_1

    :cond_0
    new-instance v6, Lm21;

    const/16 v2, 0xc

    invoke-direct {v6, v1, v3, v2}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_2

    if-ne v8, v7, :cond_3

    :cond_2
    new-instance v8, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$2$1;

    invoke-direct {v8, v1}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    if-ne v2, v7, :cond_5

    :cond_4
    new-instance v11, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1;

    const-string v16, "popBackStack()Z"

    const/16 v17, 0x8

    const/4 v12, 0x0

    const-class v14, Landroidx/navigation/NavHostController;

    const-string v15, "popBackStack"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v11

    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/c;->f:Lkotlin/jvm/functions/Function3;

    move-object v7, v8

    move-object v8, v2

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailComposableKt;->a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
