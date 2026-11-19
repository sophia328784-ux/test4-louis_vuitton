.class public final synthetic Lnu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V
    .locals 0

    iput p2, p0, Lnu0;->b:I

    iput-object p1, p0, Lnu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lnu0;->b:I

    const-string v1, "SEARCH_QUERY"

    iget-object p0, p0, Lnu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->DISMISS:Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->PSP:Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/content/Intent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->v:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    if-eqz p1, :cond_2

    const-string v0, "FILTER_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->g:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    move-object v3, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    sget-object v5, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v7, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;->SORT:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
