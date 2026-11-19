.class public final Lcom/vuitton/android/presentation/link/models/LinkRoutingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/models/LinkRoutingData;",
        "",
        "",
        "",
        "excludedAppLinks",
        "storeLocatorUrl",
        "",
        "isExclusiveOfferEnabled",
        "isCertificatesEnabled",
        "<init>",
        "(Ljava/util/Set;Ljava/lang/String;ZZ)V",
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
.field public final a:Ljava/util/Set;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;-><init>(Ljava/util/Set;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;

    iget-object v1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    iget-object v3, p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkRoutingData(excludedAppLinks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeLocatorUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExclusiveOfferEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCertificatesEnabled="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
