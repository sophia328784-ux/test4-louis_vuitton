.class public abstract Lcom/dynatrace/agent/communication/CommunicationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;,
        Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;,
        Lcom/dynatrace/agent/communication/CommunicationState$Inactive;,
        Lcom/dynatrace/agent/communication/CommunicationState$Off;,
        Lcom/dynatrace/agent/communication/CommunicationState$Offline;,
        Lcom/dynatrace/agent/communication/CommunicationState$PendingData;,
        Lcom/dynatrace/agent/communication/CommunicationState$Waiting;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u0082\u0001\u0006\t\n\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationState;",
        "",
        "ConnectionStatus",
        "ConfigAwaiting",
        "Waiting",
        "PendingData",
        "Inactive",
        "Offline",
        "Off",
        "Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;",
        "Lcom/dynatrace/agent/communication/CommunicationState$Inactive;",
        "Lcom/dynatrace/agent/communication/CommunicationState$Off;",
        "Lcom/dynatrace/agent/communication/CommunicationState$Offline;",
        "Lcom/dynatrace/agent/communication/CommunicationState$PendingData;",
        "Lcom/dynatrace/agent/communication/CommunicationState$Waiting;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
