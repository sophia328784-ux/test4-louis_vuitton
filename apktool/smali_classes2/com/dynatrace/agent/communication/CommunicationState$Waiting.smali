.class public final Lcom/dynatrace/agent/communication/CommunicationState$Waiting;
.super Lcom/dynatrace/agent/communication/CommunicationState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/communication/CommunicationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Waiting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationState$Waiting;",
        "Lcom/dynatrace/agent/communication/CommunicationState;",
        "Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;",
        "connectionStatus",
        "<init>",
        "(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/communication/CommunicationState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    sget-object p1, Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;->READY:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    :cond_0
    invoke-direct {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting(connectionStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
