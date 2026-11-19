.class public Lcom/networkbench/agent/impl/harvest/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Lcom/networkbench/agent/impl/harvest/a/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Lcom/networkbench/agent/impl/c/e;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:J

.field private m:Lcom/networkbench/agent/impl/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/harvest/a/m;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/a/m;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/a/m;->g:Lcom/networkbench/agent/impl/harvest/a/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->c:Z

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->i:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->j:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->l:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->k:J

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/harvest/a/m;
    .locals 1

    .line 142
    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/m;->g:Lcom/networkbench/agent/impl/harvest/a/m;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .line 40
    :try_start_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    check-cast p1, Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 42
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "parseKeyDouble error!"

    invoke-interface {p0, v0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 p0, 0x0

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 137
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->k:J

    .line 138
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->q(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 139
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "error get dc time stamp, dc value is:"

    const-string v2, ", error:"

    .line 140
    invoke-static {v1, p1, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 141
    invoke-static {v0, p1, p0}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->j:Ljava/util/Map;

    const-string p1, "ak"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->b:Ljava/lang/String;

    const-string p1, "sk"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->a:Ljava/lang/String;

    const-string p1, "so_host"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->d:Ljava/lang/String;

    const-string p1, "tySm2Cert"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-boolean p1, p1, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "tySm2Cert config is empty"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    :cond_0
    const-string p1, "so_disabled"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->c:Z

    :try_start_0
    const-string p1, "tySecretKey"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string p1, "vd"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->i:Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->i:Z

    iput-boolean v0, p1, Lcom/networkbench/agent/impl/util/r;->D:Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/r;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/a/m;->c()Lcom/networkbench/agent/impl/util/g;

    return-void
.end method

.method public b()J
    .locals 6

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->l:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/harvest/a/m;->k:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public c()Lcom/networkbench/agent/impl/util/g;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/util/g;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->m:Lcom/networkbench/agent/impl/util/g;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/a/m;->m:Lcom/networkbench/agent/impl/util/g;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->a(Lcom/networkbench/agent/impl/util/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "generate encryptContent error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->m:Lcom/networkbench/agent/impl/util/g;

    return-object p0
.end method
