.class public final Lcom/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/service/feature/TwistFeature;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1",
        "Lcom/vuitton/android/domain/service/feature/TwistFeature;",
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
.field public final synthetic a:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1;->a:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1;->a:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;->a([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p0

    return p0
.end method
