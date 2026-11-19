.class public final synthetic Lfh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lfh0;->b:I

    iput-object p1, p0, Lfh0;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iput-object p2, p0, Lfh0;->d:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lfh0;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, Lfh0;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lfh0;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->zc()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    invoke-static {v3, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->zc()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;

    invoke-static {v3, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
