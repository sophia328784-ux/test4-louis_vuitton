.class public final Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gesture"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;",
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;",
        "Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;",
        "interaction",
        "",
        "durationMs",
        "downTimestamp",
        "upTimestamp",
        "Lcom/dynatrace/agent/userinteraction/model/TouchEvent;",
        "upEvent",
        "Landroid/view/ViewGroup;",
        "rootView",
        "Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;",
        "composeEvent",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;JJJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V",
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
.field public final a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

.field public final f:Landroid/view/ViewGroup;

.field public final g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;JJJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    iput-wide p2, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    iput-wide p4, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    iput-wide p6, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    iput-object p8, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iput-object p9, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->f:Landroid/view/ViewGroup;

    iput-object p10, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/userinteraction/model/TouchEvent;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    return-object p0
.end method

.method public final b()Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    iget-wide v5, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    iget-wide v5, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    iget-wide v5, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->f:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->f:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    iget-object p1, p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    invoke-virtual {v0}, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    invoke-virtual {v2}, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gesture(interaction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", upTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", upEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->e:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rootView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", composeEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->g:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
