.class final Lcom/vuitton/android/data/repository/CrashReportingTree;
.super Ltimber/log/Timber$Tree;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CrashReportingTree;",
        "Ltimber/log/Timber$Tree;",
        "Lkotlin/Function1;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;",
        "",
        "sendHit",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
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


# instance fields
.field public final b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CrashReportingTree;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {v4, p2}, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, " "

    invoke-static {p3, p2, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CrashReportingTree;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
