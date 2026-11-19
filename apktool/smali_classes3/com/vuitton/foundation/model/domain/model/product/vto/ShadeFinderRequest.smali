.class public final Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;",
        "cheekbone",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;",
        "eyelid",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;",
        "eyebrow",
        "",
        "faceShape",
        "",
        "lipShape",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;",
        "nose",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;",
        "color",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;",
        "metadata",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

.field public final b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

.field public final c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

.field public final g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

.field public final h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;",
            "Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShadeFinderRequest(cheekbone="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eyelid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eyebrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", faceShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lipShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
