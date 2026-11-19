.class public final Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAnomalyHit"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;",
        "",
        "message",
        "",
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
        "additionalProperties",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;",
        "type",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;)V",
        "domain"
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

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 16
    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    return-object p0
.end method

.method public final getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", additionalProperties="

    const-string v1, ", type="

    const-string v2, "DefaultAnomalyHit(message="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->b:Ljava/util/List;

    invoke-static {v2, v3, v0, v4, v1}, Ld21;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
