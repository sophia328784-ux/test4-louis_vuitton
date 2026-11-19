.class public Lcom/networkbench/agent/impl/m/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x500000


# instance fields
.field private b:Lcom/networkbench/agent/impl/crash/j;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/crash/j;

    invoke-direct {v0, p1, p2}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    iput-object p1, p0, Lcom/networkbench/agent/impl/m/d;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/crash/j;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "_"

    invoke-static {p2, p1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c()J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sp file path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/d;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/m/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 8

    const-string v0, "single store Info over max_sp_size, storeInfo length is "

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/d;->c()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-string v3, ""

    if-nez v2, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/agent/impl/crash/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget v4, Lcom/networkbench/agent/impl/m/d;->a:I

    if-lt v2, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", and max_sp_size is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/networkbench/agent/impl/m/d;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/d;->c()J

    move-result-wide v4

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget v0, Lcom/networkbench/agent/impl/m/d;->a:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/crash/j;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/crash/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/crash/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/agent/impl/crash/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/b/a;->c:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/d;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->d()V

    return-void
.end method
