.class public Lcom/networkbench/agent/impl/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "tracestate"

.field private static final b:Ljava/lang/String; = "tysid="

.field private static c:Lcom/networkbench/agent/impl/util/j;


# instance fields
.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/j;->d:Z

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/util/j;
    .locals 2

    .line 33
    sget-object v0, Lcom/networkbench/agent/impl/util/j;->c:Lcom/networkbench/agent/impl/util/j;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/networkbench/agent/impl/util/j;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/util/j;->c:Lcom/networkbench/agent/impl/util/j;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/networkbench/agent/impl/util/j;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/util/j;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/util/j;->c:Lcom/networkbench/agent/impl/util/j;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/util/j;->c:Lcom/networkbench/agent/impl/util/j;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tysid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, ",tysid="

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, "tysid="

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object p1
.end method

.method public a(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/j;->d:Z

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/j;->d:Z

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/j;->d()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "tracestate"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/j;->a()Lcom/networkbench/agent/impl/util/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/j;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
