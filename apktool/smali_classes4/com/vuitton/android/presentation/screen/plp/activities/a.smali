.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/activities/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/a;->b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/a;->b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    if-eqz p1, :cond_3

    const-string v0, "FILTER_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v5, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, p1

    :goto_0
    sget-object v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v9, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;->SORT:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    new-instance v4, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->q:Z

    if-nez p1, :cond_2

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->r:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$filtersLauncher$2$1$2;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$filtersLauncher$2$1$2;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
