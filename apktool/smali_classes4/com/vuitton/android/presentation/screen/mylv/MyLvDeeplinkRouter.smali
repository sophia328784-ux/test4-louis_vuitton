.class public final Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;",
        "",
        "<init>",
        "()V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "list"

    const-class v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_3
    instance-of p1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;

    goto :goto_0

    :cond_0
    move-object p2, v4

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_8

    new-instance p2, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-direct {p2, p1, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    instance-of p1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;

    goto :goto_2

    :cond_2
    move-object p2, v4

    :goto_2
    if-eqz p2, :cond_3

    iget-object v4, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;->a:Ljava/lang/String;

    :cond_3
    if-eqz v4, :cond_8

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;

    invoke-direct {p1, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_6
    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    const/4 p2, 0x2

    invoke-static {p1, p0, v4, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_7
    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Certificate;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Certificate;

    goto :goto_3

    :cond_4
    move-object p2, v4

    :goto_3
    if-eqz p2, :cond_5

    iget-object v4, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Certificate;->a:Ljava/lang/String;

    :cond_5
    invoke-direct {p1, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;

    const/4 p2, 0x1

    invoke-direct {p1, v4, p2, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_a
    move-object v1, p0

    instance-of p0, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$OrderDetail;

    if-eqz p0, :cond_6

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$OrderDetail;

    goto :goto_4

    :cond_6
    move-object p2, v4

    :goto_4
    if-eqz p2, :cond_7

    iget-object v4, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$OrderDetail;->a:Ljava/lang/String;

    :cond_7
    if-eqz v4, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "rootScreen"

    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "shippingGroupId"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_5
    return-void

    :pswitch_b
    move-object v1, p0

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v4, v4}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_c
    move-object v1, p0

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;->r:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_d
    move-object v1, p0

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
