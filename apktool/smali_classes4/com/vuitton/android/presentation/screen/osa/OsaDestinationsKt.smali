.class public abstract Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->SERVICE:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->OSA:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;->OSA:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_WITH_PREFILLED_EMAIL:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->OSA:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->c(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->SERVICE:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->OSA:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToPrivacyPolicy;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToPrivacyPolicy;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->r:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;

    invoke-direct {p0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_5

    const-string p1, "EXTRA_ORIGIN"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_5
    return-object p0

    :cond_6
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
