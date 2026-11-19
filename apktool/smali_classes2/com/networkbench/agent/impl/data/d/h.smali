.class public Lcom/networkbench/agent/impl/data/d/h;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/a/a;


# static fields
.field public static a:Lcom/networkbench/agent/impl/data/d/c; = null

.field private static final b:Ljava/lang/String; = "NBSPageData"

.field private static final c:Lcom/networkbench/agent/impl/c/e;

.field private static final d:J = 0x2710L

.field private static final e:J = 0x4650L


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/networkbench/agent/impl/k/b;

.field private j:I

.field private k:Lcom/networkbench/agent/impl/data/d/c;

.field private l:Lcom/networkbench/agent/impl/data/type/p;

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/d/h;->c:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(IJJLcom/networkbench/agent/impl/data/d/c;Lcom/networkbench/agent/impl/data/type/p;Lcom/networkbench/agent/impl/k/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/networkbench/agent/impl/data/d/h;->h:Z

    .line 46
    iput p1, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    .line 47
    const-string p1, "OverLapPage"

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    .line 49
    iput-object p7, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    .line 50
    iput-object p8, p0, Lcom/networkbench/agent/impl/data/d/h;->i:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/d/h;->h:Z

    iput p1, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/b;->c()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    new-instance p1, Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/h;->i:Lcom/networkbench/agent/impl/k/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    iput-object p0, p1, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(J)I
    .locals 3

    .line 38
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    iget-wide v1, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->calcState(JJ)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/data/d/h;->j:I

    return p1
.end method

.method private s()Z
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/d/h;->j:I

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private t()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->s()Z

    move-result p0

    return p0
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    if-ne v2, v1, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->a(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/i/f;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    if-ne v2, v1, :cond_4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/i/g;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/i/g;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/networkbench/agent/impl/data/d/h;->h:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    const-string v0, "setPageLoadingEndTime"

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->ASYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/networkbench/agent/impl/data/type/p;->a(JLjava/lang/String;Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz p4, :cond_0

    sget-object p2, Lcom/networkbench/agent/impl/i/e;->c:Lcom/networkbench/agent/impl/i/e;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/networkbench/agent/impl/i/e;->a:Lcom/networkbench/agent/impl/i/e;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/i/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/d/h;->h:Z

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->q()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 8

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/networkbench/agent/impl/i/f;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/data/d/h;->a(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->u()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/data/type/p;->v()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v3, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_2
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v3, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-object v5, p0, Lcom/networkbench/agent/impl/data/d/h;->i:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->l()J

    move-result-wide v6

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    iget v3, p0, Lcom/networkbench/agent/impl/data/d/h;->f:I

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "view_state"

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/i/g;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v5, "view_coverage"

    invoke-virtual {p0, v5, v4}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/i/g;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/data/type/p;->x()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/p;->z()Lcom/networkbench/agent/impl/i/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/e;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v3, v4}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    const-string p0, "NBSPageData"

    const-string v1, "statusCalc == null, please check"

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPageDatas()Lcom/networkbench/agent/impl/data/d/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/d/i;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->c()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/asyncaction/e;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 6

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->o()J

    move-result-wide v2

    const-wide/16 v4, 0x4650

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->n()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public d()Lcom/networkbench/agent/impl/k/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->i:Lcom/networkbench/agent/impl/k/b;

    return-object p0
.end method

.method public e()Lcom/networkbench/agent/impl/data/type/p;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/d/h;->j:I

    return p0
.end method

.method public g()Lcom/networkbench/agent/impl/data/d/c;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/type/p;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->k:Lcom/networkbench/agent/impl/data/d/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    const-string v0, "setCustomPageName"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/d;->a:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/type/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method public l()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/p;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Z
    .locals 4

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/h;->l:Lcom/networkbench/agent/impl/data/type/p;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/p;->y()Z

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 8

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-ltz v4, :cond_2

    const-wide/16 v6, 0x2710

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/d/h;->n:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    const-wide/16 v2, 0x4650

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v5
.end method

.method public r()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->v()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/d/h;->w()V

    return-void
.end method
