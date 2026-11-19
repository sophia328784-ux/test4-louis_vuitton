.class public abstract Lcom/networkbench/agent/impl/plugin/h;
.super Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;
.source "SourceFile"


# static fields
.field protected static f:Lcom/networkbench/agent/impl/c/e; = null

.field protected static final g:I = 0x3c


# instance fields
.field private a:J

.field public h:Ljava/lang/String;

.field public i:Lcom/networkbench/agent/impl/data/c/d;

.field public j:Lcom/networkbench/agent/impl/plugin/a;

.field public k:I

.field public l:Z

.field public m:Z

.field protected n:Ljava/lang/String;

.field protected o:Z

.field public p:I

.field protected q:Lcom/networkbench/agent/impl/plugin/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/h;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iput-object p3, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->m:Z

    new-instance p2, Lcom/networkbench/agent/impl/plugin/d;

    invoke-direct {p2}, Lcom/networkbench/agent/impl/plugin/d;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/h;->j:Lcom/networkbench/agent/impl/plugin/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/h;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/h;->n:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/plugin/h;->a:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance p0, Lcom/networkbench/agent/impl/plugin/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c;->a()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error getDnsServer e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    .line 46
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/f/i;)Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->j:Lcom/networkbench/agent/impl/plugin/a;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/plugin/a;->a(Lcom/networkbench/agent/impl/plugin/f/i;)Z

    move-result p0

    return p0
.end method

.method public abstract b()Z
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/plugin/h;->a:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->n:Ljava/lang/String;

    return-object p0
.end method

.method public e()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/plugin/f/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/plugin/f/e;->b:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/plugin/h;->a:J

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/h;->a()V

    return-void
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->j:Lcom/networkbench/agent/impl/plugin/a;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/plugin/a;->a()Z

    move-result p0

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :catch_0
    sget-object p0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Unable to initialize SHA-1 hash algorithm"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginObserver{action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/d;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
