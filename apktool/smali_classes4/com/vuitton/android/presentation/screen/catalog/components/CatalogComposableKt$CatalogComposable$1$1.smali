.class final Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.catalog.components.CatalogComposableKt$CatalogComposable$1$1"
    f = "CatalogComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Landroid/content/Context;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->e:Landroidx/navigation/NavHostController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->e:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->b:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Landroid/content/Context;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->a:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_0
    const/4 v4, 0x0

    if-eq v2, v3, :cond_15

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    const/4 v1, 0x2

    if-eq v2, v1, :cond_19

    const/4 v1, 0x3

    if-eq v2, v1, :cond_16

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    const/4 p1, 0x5

    if-ne v2, p1, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_3
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->i:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->k:Ljava/lang/String;

    if-eqz v1, :cond_15

    sget-object v3, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_WOMEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "femme"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_MEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "homme"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object p1

    :goto_1
    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->c:Ljava/util/List;

    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;->b:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->D(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_8
    move-object v3, v4

    :goto_3
    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    goto :goto_4

    :cond_9
    move-object v3, v4

    :goto_4
    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    if-eqz v1, :cond_c

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_b
    move-object v2, v4

    :goto_5
    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    goto :goto_6

    :cond_c
    move-object v2, v4

    :goto_6
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->b:Ljava/util/List;

    if-eqz v1, :cond_f

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_e
    move-object v5, v4

    :goto_7
    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    goto :goto_8

    :cond_f
    move-object v5, v4

    :goto_8
    if-nez v2, :cond_10

    move-object v0, v5

    goto :goto_9

    :cond_10
    move-object v0, v2

    :goto_9
    if-eqz p1, :cond_12

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    if-eqz v5, :cond_11

    if-nez v2, :cond_11

    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_11
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    invoke-direct {v6, v1, v2, v3, v0}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    move-object v6, v4

    :goto_a
    if-nez v6, :cond_14

    if-eqz p1, :cond_13

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_b

    :cond_13
    move-object v6, v4

    :cond_14
    :goto_b
    if-nez v6, :cond_1e

    :cond_15
    :goto_c
    move-object v6, v4

    goto/16 :goto_e

    :cond_16
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->h:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->b(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object v2, p1, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iget-object v3, p1, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iget-object p1, p1, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;

    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;->Thematic:Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;

    if-ne p1, v5, :cond_17

    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->l:Ljava/lang/String;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_17
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->b:Ljava/lang/String;

    invoke-direct {v6, p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_18
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-direct {v6, p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->e:Ljava/util/List;

    if-eqz p1, :cond_1a

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_1a
    move-object p1, v4

    :goto_d
    if-nez p1, :cond_1b

    const-string p1, ""

    :cond_1b
    invoke-direct {v6, p1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->f:Ljava/lang/String;

    if-nez p1, :cond_1d

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_1d
    move-object v8, p1

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-boolean v10, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->g:Z

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7, v1}, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :cond_1e
    :goto_e
    if-eqz v6, :cond_1f

    const/4 p1, 0x6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;->e:Landroidx/navigation/NavHostController;

    invoke-static {p0, v6, v4, p1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_1f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
