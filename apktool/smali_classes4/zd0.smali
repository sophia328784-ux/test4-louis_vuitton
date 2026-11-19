.class public final synthetic Lzd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lzd0;->b:I

    iput-object p1, p0, Lzd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    iput-object p2, p0, Lzd0;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lzd0;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;

    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;

    iget-object v3, p0, Lzd0;->d:Landroid/content/Context;

    iget-object p0, p0, Lzd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
