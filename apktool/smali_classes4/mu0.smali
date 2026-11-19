.class public final synthetic Lmu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V
    .locals 0

    iput p2, p0, Lmu0;->b:I

    iput-object p1, p0, Lmu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmu0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lmu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->x:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->v:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "SEARCH_QUERY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01001f

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/activity/SystemBarStyle$Companion;->a()Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {}, Landroidx/activity/SystemBarStyle$Companion;->a()Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->x:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "RMS_CODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
