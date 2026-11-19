.class final Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;
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
        0x4d
    }
    m = "deleteAllBefore"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->c(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
