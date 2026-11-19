.class public final Lcom/vuitton/android/data/analytics/builder/CrashlyticsAnalyticsHitBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
        "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/analytics/builder/CrashlyticsAnalyticsHitBuilder;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;",
        "<init>",
        "()V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;->getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;->a:Ljava/lang/String;

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
