.class public final Lcom/networkbench/agent/impl/plugin/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/g/a/b$b;,
        Lcom/networkbench/agent/impl/plugin/g/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/networkbench/agent/impl/plugin/g/a/c;

.field private final d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->c:Lcom/networkbench/agent/impl/plugin/g/a/c;

    iput-object p4, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;

    return-void
.end method

.method private a()V
    .locals 10

    const-string v1, "nslookup server invalid : "

    const-string v0, "nslookup "

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v3, Lcom/networkbench/agent/impl/plugin/g/a/b$b;

    const-string v7, "dns has an error ."

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/plugin/g/a/b$b;-><init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/b$1;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;

    invoke-interface {p0, v3}, Lcom/networkbench/agent/impl/plugin/g/a/b$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->c:Lcom/networkbench/agent/impl/plugin/g/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/a/d;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/plugin/g/a/a/d;-><init>(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->a(Ljava/lang/String;)[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    array-length v0, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, v7, v1

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->c:Lcom/networkbench/agent/impl/plugin/g/a/c;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;

    move-wide v1, v3

    new-instance v4, Lcom/networkbench/agent/impl/plugin/g/a/b$b;

    long-to-int v6, v1

    sget-object v1, Lcom/networkbench/agent/impl/plugin/g/a/a/b;->a:Lcom/networkbench/agent/impl/plugin/g/a/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/g/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/networkbench/agent/impl/plugin/g/a/b$b;-><init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/b$1;)V

    invoke-interface {v0, v4}, Lcom/networkbench/agent/impl/plugin/g/a/b$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v4, v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;

    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/b$b;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/plugin/g/a/b$b;-><init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/b$1;)V

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/plugin/g/a/b$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/networkbench/agent/impl/plugin/g/a/b$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/plugin/g/a/b$b;-><init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/b$1;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->c:Lcom/networkbench/agent/impl/plugin/g/a/c;

    const-string v1, "nslookup server invalid"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/b;->d:Lcom/networkbench/agent/impl/plugin/g/a/b$a;

    invoke-interface {p0, v2}, Lcom/networkbench/agent/impl/plugin/g/a/b$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string v0, "NsLookup run has an error , "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/g/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V
    .locals 1

    if-nez p1, :cond_0

    .line 201
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a/a;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 202
    aget-object p1, v0, p1

    .line 203
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/plugin/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V

    .line 204
    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/g/a/b;->a()V

    return-void
.end method
