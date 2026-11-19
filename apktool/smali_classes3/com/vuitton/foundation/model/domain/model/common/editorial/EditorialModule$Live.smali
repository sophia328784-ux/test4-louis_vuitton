.class public final Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;
.super Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Live"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;",
        "",
        "id",
        "title",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "asset",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;",
        "ratio",
        "surtitleAfter",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
        "video",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;",
        "targeting",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;",
        "format",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

.field public final d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

.field public final g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

.field public final h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_2

    move-object p7, v0

    .line 36
    :cond_2
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", asset="

    const-string v2, "Live(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surtitleAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
