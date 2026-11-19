.class public abstract Lcom/vuitton/android/presentation/common/AppAssetsVideoId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/AppAssetsVideoId$LoginVideoId;,
        Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/AppAssetsVideoId;",
        "",
        "OnboardingOnlyVideoId",
        "LoginVideoId",
        "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$LoginVideoId;",
        "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/common/AppAssetsVideoId;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/common/AppAssetsVideoId;->b:Ljava/lang/String;

    return-void
.end method
