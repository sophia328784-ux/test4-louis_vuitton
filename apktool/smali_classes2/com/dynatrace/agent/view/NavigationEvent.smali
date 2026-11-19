.class public final Lcom/dynatrace/agent/view/NavigationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B9\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/view/NavigationEvent;",
        "",
        "",
        "sourceName",
        "detectedSourceName",
        "sourceInstanceId",
        "",
        "startTime",
        "",
        "isAutoSendable",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Z

.field public volatile f:Lcom/dynatrace/agent/view/ViewContext;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dynatrace/agent/view/NavigationEvent;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/dynatrace/agent/view/NavigationEvent;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/dynatrace/agent/view/NavigationEvent;->c:Ljava/lang/String;

    .line 19
    iput-wide p4, p0, Lcom/dynatrace/agent/view/NavigationEvent;->d:J

    .line 20
    iput-boolean p6, p0, Lcom/dynatrace/agent/view/NavigationEvent;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/view/NavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/agent/view/NavigationEvent;->f:Lcom/dynatrace/agent/view/ViewContext;

    iget-boolean v1, p0, Lcom/dynatrace/agent/view/NavigationEvent;->g:Z

    if-nez v1, :cond_0

    const-string p0, "Cannot convert incomplete NavigationEvent to JSON"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "start_time"

    iget-wide v3, p0, Lcom/dynatrace/agent/view/NavigationEvent;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "duration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "characteristics.has_navigation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/dynatrace/agent/view/NavigationEvent;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "view.source.instance_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/dynatrace/agent/view/NavigationEvent;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "view.source.name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p0, p0, Lcom/dynatrace/agent/view/NavigationEvent;->b:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v2, "view.source.detected_name"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v0, :cond_4

    const-string p0, "view.instance_id"

    iget-object v2, v0, Lcom/dynatrace/agent/view/ViewContext;->a:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "view.sequence_number"

    iget v2, v0, Lcom/dynatrace/agent/view/ViewContext;->d:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    if-eqz v0, :cond_5

    iget-object p0, v0, Lcom/dynatrace/agent/view/ViewContext;->c:Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string v2, "view.detected_name"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz v0, :cond_6

    iget-object p0, v0, Lcom/dynatrace/agent/view/ViewContext;->b:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string v0, "view.name"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-object v1
.end method
