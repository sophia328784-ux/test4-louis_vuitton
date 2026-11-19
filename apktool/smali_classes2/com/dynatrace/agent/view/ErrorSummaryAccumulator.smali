.class public final Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;",
        "",
        "<init>",
        "()V",
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
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "characteristics.has_request"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "characteristics.has_error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "characteristics.has_exception"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "characteristics.has_failed_request"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "http.response.status_code"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iget-boolean v5, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->g:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "characteristics.has_crash"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v6

    :goto_1
    iput-boolean p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->g:Z

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b:I

    :cond_2
    if-eqz v1, :cond_3

    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a:I

    :cond_3
    if-eqz v0, :cond_9

    const/16 p1, 0x1f4

    const/16 v0, 0x190

    if-gt v0, v4, :cond_4

    if-ge v4, p1, :cond_4

    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->c:I

    return-void

    :cond_4
    const/16 v1, 0x258

    if-gt p1, v4, :cond_5

    if-ge v4, v1, :cond_5

    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->d:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->d:I

    return-void

    :cond_5
    if-ltz v4, :cond_6

    if-ge v4, v0, :cond_6

    goto :goto_2

    :cond_6
    if-gt v1, v4, :cond_7

    const p1, 0x7fffffff

    if-gt v4, p1, :cond_7

    :goto_2
    if-eqz v3, :cond_9

    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->e:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->e:I

    return-void

    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    iget p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->f:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->f:I

    :cond_9
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "error.count"

    iget v1, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error.exception_count"

    iget v2, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error.http_4xx_count"

    iget v2, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error.http_5xx_count"

    iget v2, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error.http_other_count"

    iget v2, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error.request_other_count"

    iget v2, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean p0, p0, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->g:Z

    if-eqz p0, :cond_0

    const-string p0, "error.has_crash"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
