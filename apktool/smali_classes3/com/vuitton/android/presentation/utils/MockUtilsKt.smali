.class public abstract Lcom/vuitton/android/presentation/utils/MockUtilsKt;
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
.field public static final a:Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

.field public static final b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;

    new-instance v1, Lyc0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lyc0;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;-><init>(Ldagger/Lazy;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    new-instance v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    new-instance v3, Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V

    new-instance v3, Lyc0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lyc0;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;)V

    new-instance v2, Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;-><init>(Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;)V

    sput-object v2, Lcom/vuitton/android/presentation/utils/MockUtilsKt;->a:Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

    new-instance v0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    sput-object v0, Lcom/vuitton/android/presentation/utils/MockUtilsKt;->b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    return-void
.end method
