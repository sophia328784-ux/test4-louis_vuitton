.class public final Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;",
        "",
        "",
        "assetIcon",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;",
        "content",
        "identifier",
        "title",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "versions",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V",
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

.field public final b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    .line 28
    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SectionWatchfaces(assetIcon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    const-string v2, ", versions="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
