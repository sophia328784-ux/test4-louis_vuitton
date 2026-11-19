.class public final synthetic Lmb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V
    .locals 0

    iput p2, p0, Lmb0;->b:I

    iput-object p1, p0, Lmb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lmb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->h2(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->x:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->h2(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J:Landroidx/activity/result/ActivityResultLauncher;

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
