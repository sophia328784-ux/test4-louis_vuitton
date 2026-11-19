.class public final synthetic Lb61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;I)V
    .locals 0

    iput p2, p0, Lb61;->b:I

    iput-object p1, p0, Lb61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lb61;->b:I

    const v1, 0x7f0a0204

    const v2, 0x7f01003a

    const v3, 0x7f010035

    const v4, 0x7f010020

    const v5, 0x7f010037

    const/4 v6, 0x0

    iget-object p0, p0, Lb61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    const/4 v7, 0x1

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->j:I

    const/4 v8, 0x2

    if-ne p0, v8, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v5, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "WATCHFACE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "DISPLAY_TOOLBAR"

    invoke-virtual {v2, p1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "HOW_TO_GET"

    invoke-virtual {v2, p1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "IS_V2"

    invoke-virtual {v2, p1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "SHOULD_TRACK_PAGE"

    invoke-virtual {v2, p1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->N:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;->a(Landroidx/appcompat/app/AppCompatActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllTravelsClickEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllTravelsClickEvent;

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v5, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FROM_DEEPLINK"

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->N:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
