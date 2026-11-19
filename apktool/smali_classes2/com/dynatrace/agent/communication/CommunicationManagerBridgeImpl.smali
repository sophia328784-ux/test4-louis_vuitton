.class public final Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;",
        "Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;",
        "Lcom/dynatrace/agent/communication/CommunicationManager;",
        "communicationManager",
        "<init>",
        "(Lcom/dynatrace/agent/communication/CommunicationManager;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/CommunicationManager;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManager;->d(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/dynatrace/agent/communication/CommunicationManager;->c(Ljava/lang/Integer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "received external server id update to: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method
