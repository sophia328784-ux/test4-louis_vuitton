.class public Lcom/networkbench/agent/impl/data/a;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/com/google/gson/JsonObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    .line 116
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    .line 117
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->b:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/networkbench/agent/impl/util/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->c:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/a;->d:J

    if-nez p2, :cond_0

    .line 120
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    return-void

    .line 121
    :cond_0
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    .line 122
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    .line 123
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    .line 124
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    .line 125
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    .line 126
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/networkbench/agent/impl/data/a;->d:J

    if-nez p2, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    return-void

    :cond_1
    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    iget-object p1, p2, Lcom/networkbench/agent/impl/k/b;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/util/r;Ljava/lang/String;J)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    .line 109
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->b:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/networkbench/agent/impl/util/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, p3, p4}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/networkbench/agent/impl/data/a;->d:J

    .line 114
    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/data/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "bname"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "suuid"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "view_name"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "action_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_4
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "view_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "view_features"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_5
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "features"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_6
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a;->i:Ljava/lang/String;

    return-object p0
.end method
