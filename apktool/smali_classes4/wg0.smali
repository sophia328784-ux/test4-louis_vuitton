.class public final synthetic Lwg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;I)V
    .locals 0

    iput p2, p0, Lwg0;->b:I

    iput-object p1, p0, Lwg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwg0;->b:I

    iget-object p0, p0, Lwg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->H(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
