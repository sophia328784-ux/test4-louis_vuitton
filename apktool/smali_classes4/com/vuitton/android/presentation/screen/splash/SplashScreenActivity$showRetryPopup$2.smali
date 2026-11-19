.class public final Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
