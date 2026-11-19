.class public final Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;",
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

.method public static a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object p2, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LIST:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, v0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object p2, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, v0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;->REPAIR_DETAIL:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;

    instance-of v1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;->a:Ljava/lang/String;

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;Ljava/lang/String;)V

    return-void

    :pswitch_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;->REPAIR_CREATE:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;

    instance-of v1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;->a:Ljava/lang/String;

    :cond_3
    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;Ljava/lang/String;)V

    return-void

    :pswitch_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;->REPAIR_LIST:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;

    instance-of v1, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    if-eqz v1, :cond_4

    check-cast p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    goto :goto_2

    :cond_4
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;->a:Ljava/lang/String;

    :cond_5
    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;Ljava/lang/String;)V

    return-void

    :pswitch_5
    sget-object v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->SERVICES:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
