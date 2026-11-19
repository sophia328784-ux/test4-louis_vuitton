.class public final Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;",
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


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->q:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->eb(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;)V

    return-void
.end method
