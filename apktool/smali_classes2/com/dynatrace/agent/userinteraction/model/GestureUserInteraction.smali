.class public final Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u00002\u00020\u0001B7\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;",
        "",
        "",
        "Lcom/dynatrace/agent/userinteraction/model/GesturePosition;",
        "positions",
        "Lcom/dynatrace/agent/userinteraction/model/GestureIntention;",
        "intention",
        "",
        "intentionScore",
        "",
        "durationMillis",
        "pointers",
        "<init>",
        "(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/GestureIntention;Ljava/lang/Integer;JI)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public final c:Ljava/lang/Integer;

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/GestureIntention;Ljava/lang/Integer;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dynatrace/agent/userinteraction/model/GesturePosition;",
            ">;",
            "Lcom/dynatrace/agent/userinteraction/model/GestureIntention;",
            "Ljava/lang/Integer;",
            "JI)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    iput-wide p4, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    iput p6, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    iget-wide v5, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    iget p1, p1, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    invoke-static {v2, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GestureUserInteraction(positions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentionScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pointers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
