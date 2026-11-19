.class public final Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/analytics/Hit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewSearchResultHit"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
        "additionalProperties",
        "",
        "searchTerm",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
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
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 18
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->c:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewSearchResultHit(additionalProperties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchTerm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
