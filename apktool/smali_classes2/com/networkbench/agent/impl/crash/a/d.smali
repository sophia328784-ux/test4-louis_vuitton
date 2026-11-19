.class public Lcom/networkbench/agent/impl/crash/a/d;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/crash/a/d$a;
    }
.end annotation


# static fields
.field static final a:I = 0x2

.field static b:I = 0x400

.field static c:I = 0x64


# instance fields
.field public d:I

.field private e:J

.field private f:Lcom/networkbench/agent/impl/k/b;

.field private g:Ljava/util/Map;

.field private h:Ljava/lang/String;

.field private i:Lcom/networkbench/com/google/gson/JsonArray;

.field private j:Ljava/lang/String;

.field private k:Lcom/networkbench/com/google/gson/JsonArray;

.field private l:I

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:I

.field private s:Lcom/networkbench/com/google/gson/JsonArray;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;IIILjava/lang/String;Ljava/util/Map;Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->k:Lcom/networkbench/com/google/gson/JsonArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->r:I

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->s:Lcom/networkbench/com/google/gson/JsonArray;

    const-string v0, "ErrorInfo"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->p()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->f:Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/k/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/a/d;->i:Lcom/networkbench/com/google/gson/JsonArray;

    iput-object p3, p0, Lcom/networkbench/agent/impl/crash/a/d;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/crash/a/d;->q:J

    iput p4, p0, Lcom/networkbench/agent/impl/crash/a/d;->l:I

    iput p5, p0, Lcom/networkbench/agent/impl/crash/a/d;->r:I

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d;->n:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/a/d;->c()V

    iput p6, p0, Lcom/networkbench/agent/impl/crash/a/d;->d:I

    iput-object p7, p0, Lcom/networkbench/agent/impl/crash/a/d;->p:Ljava/lang/String;

    iput-object p8, p0, Lcom/networkbench/agent/impl/crash/a/d;->g:Ljava/util/Map;

    iput-object p9, p0, Lcom/networkbench/agent/impl/crash/a/d;->s:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/crash/a/d;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;IIILjava/lang/String;Ljava/util/Map;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/agent/impl/crash/a/d$1;)V
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p9}, Lcom/networkbench/agent/impl/crash/a/d;-><init>(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;IIILjava/lang/String;Ljava/util/Map;Lcom/networkbench/com/google/gson/JsonArray;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonElement;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/a/d;->i:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 8

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/crash/a/d;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "timestamp"

    if-gtz v1, :cond_0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/crash/a/d;->q:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/crash/a/d;->m:J

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "stack"

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->i:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "image"

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->s:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "bid"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "obv"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "meta"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a/d;->k:Lcom/networkbench/com/google/gson/JsonArray;

    if-nez v1, :cond_1

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :cond_1
    const-string v2, "trail"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "addit"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "sruuid"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/a/d;->f:Lcom/networkbench/agent/impl/k/b;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/crash/a/d;->e:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "custom"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->q:J

    return-wide v0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d;->k:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/networkbench/agent/impl/crash/a/d;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/crash/a/d;->q:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
