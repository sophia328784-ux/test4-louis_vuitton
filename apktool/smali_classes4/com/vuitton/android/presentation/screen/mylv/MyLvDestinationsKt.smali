.class public abstract Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;->r:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->q:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->s:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairDetailPage;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairDetailPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairDetailPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "REPAIR_DETAIL"

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairPreliminaryAssessmentConfirmationPage;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairPreliminaryAssessmentConfirmationPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairPreliminaryAssessmentConfirmationPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PRELIMINARY_ASSESSMENT_CONFIRMATION"

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAddressConfirmationPage;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAddressConfirmationPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAddressConfirmationPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ADDRESS_CONFIRMATION"

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAwaitingPaymentPage;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAwaitingPaymentPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAwaitingPaymentPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PAYMENT_CONFIRMATION"

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LIST:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APPOINTMENT_LIST:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->r:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "list"

    invoke-static {p1, p0, v1, v1}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "detail"

    invoke-static {p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;->a:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, p1, p0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_e
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;->q:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;

    if-eqz v0, :cond_10

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x78

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_10
    move-object v3, p1

    sget-object p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;

    if-eqz p1, :cond_12

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;->q:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    invoke-direct {p0, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_13
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;

    if-eqz p1, :cond_14

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x7c

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_14
    sget-object p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;->q:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    invoke-direct {p0, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_15
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method
