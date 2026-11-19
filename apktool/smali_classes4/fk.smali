.class public final synthetic Lfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfk;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lfk;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p3, p0, Lfk;->d:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p4, p0, Lfk;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iput-object p5, p0, Lfk;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lfk;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lfk;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lfk;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lfk;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lfk;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lfk;->l:Lkotlin/jvm/functions/Function3;

    iput-object p12, p0, Lfk;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lfk;->n:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Lfk;->o:Lkotlin/jvm/functions/Function2;

    iput p15, p0, Lfk;->p:I

    move/from16 p1, p16

    iput p1, p0, Lfk;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lfk;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v1, v0, Lfk;->q:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lfk;->b:Landroidx/navigation/NavHostController;

    move-object v2, v1

    iget-object v1, v0, Lfk;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    move-object v3, v2

    iget-object v2, v0, Lfk;->d:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    move-object v4, v3

    iget-object v3, v0, Lfk;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-object v5, v4

    iget-object v4, v0, Lfk;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, v5

    iget-object v5, v0, Lfk;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lfk;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-object v7, v0, Lfk;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lfk;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lfk;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lfk;->l:Lkotlin/jvm/functions/Function3;

    move-object v12, v11

    iget-object v11, v0, Lfk;->m:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lfk;->n:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lfk;->o:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
