.class public Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "",
        "Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;",
        "setUserPropertyUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;",
        "sendHitUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a:Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->b:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    return-void
.end method


# virtual methods
.method public a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->b:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public b(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a:Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;->a:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V

    return-void
.end method
