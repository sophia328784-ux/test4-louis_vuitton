.class public final Lcom/dynatrace/agent/userinteraction/model/GesturePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GesturePosition;",
        "",
        "",
        "x",
        "y",
        "",
        "pointerId",
        "",
        "relativeStartTimeMs",
        "",
        "released",
        "<init>",
        "(FFIJZ)V",
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
.field public final a:F

.field public final b:F

.field public final c:I

.field public final d:J

.field public final e:Z


# direct methods
.method public constructor <init>(FFIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    iput p2, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    iput p3, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    iput-wide p4, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    iput-boolean p6, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;

    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    iget v3, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    iget v3, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    iget v3, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    iget-wide v5, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    iget-boolean p1, p1, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-boolean p0, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GesturePosition(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", relativeStartTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", released="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
