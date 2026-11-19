.class public final Lcom/dynatrace/agent/view/ViewContextManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/view/ViewContextManagerApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/view/ViewContextManager;",
        "Lcom/dynatrace/agent/view/ViewContextManagerApi;",
        "Lcom/dynatrace/agent/events/EventFlowGovernor;",
        "flowGovernor",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/view/ViewSummarizer;",
        "viewSummarizer",
        "Lcom/dynatrace/agent/OneAgentEventDispatcher;",
        "eventDispatcher",
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "navigationTracker",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/useraction/UserActionController;)V",
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
.field public final a:Lcom/dynatrace/agent/events/EventFlowGovernor;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/view/ViewSummarizer;

.field public final d:Lcom/dynatrace/agent/OneAgentEventDispatcher;

.field public final e:Lcom/dynatrace/agent/view/NavigationTracker;

.field public final f:Lcom/dynatrace/agent/useraction/UserActionController;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager;->a:Lcom/dynatrace/agent/events/EventFlowGovernor;

    iput-object p2, p0, Lcom/dynatrace/agent/view/ViewContextManager;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iput-object p4, p0, Lcom/dynatrace/agent/view/ViewContextManager;->d:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iput-object p5, p0, Lcom/dynatrace/agent/view/ViewContextManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iput-object p6, p0, Lcom/dynatrace/agent/view/ViewContextManager;->f:Lcom/dynatrace/agent/useraction/UserActionController;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/view/ViewContext;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    return-object p0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/view/ViewContextManager$clearContext$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/view/ViewContextManager$clearContext$1;-><init>(Lcom/dynatrace/agent/view/ViewContextManager;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->a:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/dynatrace/agent/view/ViewContext;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/dynatrace/agent/view/ViewContext;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewContext;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dynatrace/agent/view/ViewContextManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/dynatrace/agent/view/NavigationTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/agent/view/NavigationEvent;

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/agent/view/ViewContextManager;->f()V

    return-void
.end method

.method public final d()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/view/ViewContextManager$resetContextForNewSession$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/view/ViewContextManager$resetContextForNewSession$1;-><init>(Lcom/dynatrace/agent/view/ViewContextManager;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->a:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;-><init>(Lcom/dynatrace/agent/view/ViewContextManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->a:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object v2, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/dynatrace/agent/view/ViewContextManager;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v2}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v2

    iget-object v4, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->a:Lcom/dynatrace/agent/view/ViewContextHistory;

    iget-object v4, v4, Lcom/dynatrace/agent/view/ViewContextHistory;->a:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    :goto_0
    check-cast v5, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->a:J

    iget-object v5, v5, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->b:Lcom/dynatrace/agent/view/ViewContext;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    invoke-direct {v10, v8, v9, v5, v7}, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;-><init>(JLcom/dynatrace/agent/view/ViewContext;Ljava/lang/Long;)V

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_1
    new-instance v11, Lcom/dynatrace/agent/view/ViewSummary;

    iget-wide v12, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->c:J

    sub-long v14, v2, v12

    iget-object v2, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->d:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    iget v3, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a:I

    iget v4, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b:I

    iget v5, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->c:I

    iget v7, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->d:I

    iget v8, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->e:I

    iget v9, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->f:I

    iget-boolean v2, v2, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->g:Z

    const/16 v23, 0x0

    move/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v11 .. v23}, Lcom/dynatrace/agent/view/ViewSummary;-><init>(JJIIIIIIZLorg/json/JSONObject;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "start_time"

    iget-wide v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "duration"

    iget-wide v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "characteristics.has_view_summary"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->c:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.exception_count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->d:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.http_4xx_count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.http_5xx_count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.http_other_count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->g:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error.request_other_count"

    iget v4, v11, Lcom/dynatrace/agent/view/ViewSummary;->h:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    iget-boolean v3, v11, Lcom/dynatrace/agent/view/ViewSummary;->i:Z

    if-eqz v3, :cond_2

    const-string v4, "error.has_crash"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v3, v11, Lcom/dynatrace/agent/view/ViewSummary;->j:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewContextManager;->d:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    invoke-virtual {v0, v2, v6}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->f(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    iput-object v6, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->c:J

    new-instance v0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-direct {v0}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;-><init>()V

    iput-object v0, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->d:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    const-string v0, "created a view summary and closed the current view context"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
