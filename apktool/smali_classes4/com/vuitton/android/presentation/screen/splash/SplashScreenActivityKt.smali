.class public abstract Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivityKt;
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


# static fields
.field public static final a:Ljava/time/LocalDate;

.field public static final b:Ljava/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x4

    const/16 v2, 0x7ea

    invoke-static {v2, v0, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivityKt;->a:Ljava/time/LocalDate;

    const/16 v0, 0xc

    const/16 v1, 0x1b

    invoke-static {v2, v0, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivityKt;->b:Ljava/time/LocalDate;

    return-void
.end method
