.class public final Lcom/dynatrace/agent/communication/CommunicationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationContext;",
        "",
        "Lkotlin/time/Duration;",
        "waitingTime",
        "Lcom/dynatrace/agent/communication/CommunicationState;",
        "commState",
        "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;",
        "serverData",
        "<init>",
        "(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:J

.field public final b:Lcom/dynatrace/agent/communication/CommunicationState;

.field public final c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;


# direct methods
.method public constructor <init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->a:J

    iput-object p3, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/dynatrace/agent/communication/CommunicationContext;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/communication/CommunicationContext;

    iget-wide v0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->a:J

    iget-wide v2, p1, Lcom/dynatrace/agent/communication/CommunicationContext;->a:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->d(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    iget-object v1, p1, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    iget-wide v0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunicationContext(waitingTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->a:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
