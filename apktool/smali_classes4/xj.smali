.class public final synthetic Lxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxj;->f:Ljava/lang/Object;

    iput-object p2, p0, Lxj;->g:Ljava/lang/Object;

    iput-object p3, p0, Lxj;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lxj;->h:Ljava/lang/Object;

    iput-object p5, p0, Lxj;->i:Ljava/lang/Object;

    iput-object p6, p0, Lxj;->j:Ljava/lang/Object;

    iput-object p7, p0, Lxj;->k:Ljava/lang/Object;

    iput-object p8, p0, Lxj;->l:Ljava/lang/Object;

    iput-object p9, p0, Lxj;->m:Ljava/lang/Object;

    iput-object p10, p0, Lxj;->n:Ljava/lang/Object;

    iput-object p11, p0, Lxj;->o:Ljava/lang/Object;

    iput p12, p0, Lxj;->d:I

    iput p13, p0, Lxj;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lxj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxj;->f:Ljava/lang/Object;

    iput-object p2, p0, Lxj;->g:Ljava/lang/Object;

    iput-object p3, p0, Lxj;->h:Ljava/lang/Object;

    iput-object p4, p0, Lxj;->i:Ljava/lang/Object;

    iput-object p5, p0, Lxj;->j:Ljava/lang/Object;

    iput-object p6, p0, Lxj;->k:Ljava/lang/Object;

    iput-object p7, p0, Lxj;->l:Ljava/lang/Object;

    iput-object p8, p0, Lxj;->c:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lxj;->m:Ljava/lang/Object;

    iput-object p10, p0, Lxj;->n:Ljava/lang/Object;

    iput-object p11, p0, Lxj;->o:Ljava/lang/Object;

    iput p12, p0, Lxj;->d:I

    iput p13, p0, Lxj;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lxj;->b:I

    iget v2, v0, Lxj;->e:I

    iget v3, v0, Lxj;->d:I

    iget-object v4, v0, Lxj;->o:Ljava/lang/Object;

    iget-object v5, v0, Lxj;->n:Ljava/lang/Object;

    iget-object v6, v0, Lxj;->m:Ljava/lang/Object;

    iget-object v7, v0, Lxj;->l:Ljava/lang/Object;

    iget-object v8, v0, Lxj;->k:Ljava/lang/Object;

    iget-object v9, v0, Lxj;->j:Ljava/lang/Object;

    iget-object v10, v0, Lxj;->i:Ljava/lang/Object;

    iget-object v11, v0, Lxj;->h:Ljava/lang/Object;

    iget-object v12, v0, Lxj;->g:Ljava/lang/Object;

    iget-object v13, v0, Lxj;->f:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/Modifier;

    move-object v15, v12

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v17, v11

    check-cast v17, Landroidx/compose/material3/internal/CalendarModel;

    move-object/from16 v18, v10

    check-cast v18, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v20, v8

    check-cast v20, Landroidx/compose/material3/DateInputValidator;

    move-object/from16 v21, v7

    check-cast v21, Landroidx/compose/material3/internal/DateInputFormat;

    move-object/from16 v22, v6

    check-cast v22, Ljava/util/Locale;

    move-object/from16 v23, v5

    check-cast v23, Landroidx/compose/material3/DatePickerColors;

    move-object/from16 v24, v4

    check-cast v24, Landroidx/compose/ui/focus/FocusRequester;

    move-object/from16 v25, p1

    check-cast v25, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v26

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v27

    iget-object v0, v0, Lxj;->c:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v27}, Landroidx/compose/material3/DateInputKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v13

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    check-cast v12, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    check-cast v11, Landroidx/navigation/NavHostController;

    check-cast v10, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    check-cast v8, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v14, p2

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v3

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v0, v0, Lxj;->c:Lkotlin/jvm/functions/Function1;

    move-object v2, v12

    move-object v12, v13

    move v13, v3

    move-object v3, v11

    move-object v11, v4

    move-object v4, v10

    move-object v10, v5

    move-object v5, v9

    move-object v9, v6

    move-object v6, v8

    move-object v8, v0

    invoke-static/range {v1 .. v14}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt;->a(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
