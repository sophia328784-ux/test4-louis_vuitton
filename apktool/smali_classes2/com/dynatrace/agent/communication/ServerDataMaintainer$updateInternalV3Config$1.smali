.class final Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.communication.ServerDataMaintainer"
    f = "ServerDataMaintainer.kt"
    l = {
        0x83,
        0x79
    }
    m = "updateInternalV3Config"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

.field public c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

.field public d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public e:Lkotlinx/coroutines/sync/MutexImpl;

.field public f:Z

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/ServerDataMaintainer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->h:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->h:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    invoke-virtual {v1, p1, v0, p0}, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
