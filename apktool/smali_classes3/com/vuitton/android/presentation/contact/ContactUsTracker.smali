.class public final Lcom/vuitton/android/presentation/contact/ContactUsTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/contact/ContactUsTracker;",
        "",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    const-string p1, ""

    iput-object p1, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;-><init>(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;

    iget-object v1, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method
