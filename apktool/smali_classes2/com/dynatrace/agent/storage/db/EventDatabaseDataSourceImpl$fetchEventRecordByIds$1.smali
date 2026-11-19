.class final Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;
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
        0x3b
    }
    m = "fetchEventRecordByIds"
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Lkotlin/collections/EmptyList;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->e:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    iget-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->e:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->f(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
