.class public final synthetic Lw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;I)V
    .locals 0

    iput p2, p0, Lw2;->b:I

    iput-object p1, p0, Lw2;->c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw2;->b:I

    iget-object p0, p0, Lw2;->c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;->LINK:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
