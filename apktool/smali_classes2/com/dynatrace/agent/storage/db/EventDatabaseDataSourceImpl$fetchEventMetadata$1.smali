.class final Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;
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
    c = "com.dynatrace.agent.storage.db.EventDatabaseDataSourceImpl"
    f = "EventDatabaseDataSourceImpl.kt"
    l = {
        0x2c
    }
    m = "fetchEventMetadata"
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public d:Lkotlin/collections/EmptyList;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->f:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    iget-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->f:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->e(ZILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
