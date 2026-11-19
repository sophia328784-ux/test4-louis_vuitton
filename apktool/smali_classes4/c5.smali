.class public final synthetic Lc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;I)V
    .locals 0

    iput p2, p0, Lc5;->b:I

    iput-object p1, p0, Lc5;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc5;->b:I

    iget-object p0, p0, Lc5;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "IS_COUNTRY_LIST"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;-><init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;)V

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
