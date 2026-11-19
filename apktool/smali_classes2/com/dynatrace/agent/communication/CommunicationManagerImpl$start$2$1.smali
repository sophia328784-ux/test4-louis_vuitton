.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/dynatrace/agent/common/connectivity/NetworkState;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "communication woken up by network state change to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while in communication state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->k:Lcom/dynatrace/agent/communication/CommunicationState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->k:Lcom/dynatrace/agent/communication/CommunicationState;

    sget-object v0, Lcom/dynatrace/agent/communication/CommunicationState$Offline;->a:Lcom/dynatrace/agent/communication/CommunicationState$Offline;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/dynatrace/agent/common/connectivity/NetworkState;->a:Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->g(Lcom/dynatrace/agent/communication/CommunicationContext;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
