.class public Lcom/networkbench/agent/impl/plugin/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/d/e$a;
    }
.end annotation


# static fields
.field public static a:I = 0xa

.field protected static final b:Lcom/networkbench/agent/impl/c/e;

.field private static final c:Ljava/lang/String; = "ping -c %d -s %d %s"

.field private static final d:Ljava/lang/String; = "ping -c 1 -t %d -s %d %s"

.field private static final e:Ljava/lang/String; = "(\\d+) packets transmitted, (\\d+) received[^\\n]*"

.field private static final f:Ljava/lang/String; = "[fF]rom (.*\\(.*\\)|.*): .*"

.field private static final g:Ljava/lang/String; = ".*\\((\\d+\\.\\d+\\.\\d+\\.\\d+).*"

.field private static final h:Ljava/lang/String; = "\\d+ bytes from (\\d+\\.\\d+.\\d+.\\d+):.*"

.field private static final i:I = 0x1e

.field private static final j:I = 0x38

.field private static final k:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/d/c$b;Z)Lcom/networkbench/agent/impl/plugin/d/c$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "error getStreamLine in traceOneStep"

    const-string v1, "get errorDesc in traceOneStep: "

    sget-object v2, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "traceOneStep begin********************** : "

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/networkbench/agent/impl/plugin/d/c$a;

    invoke-direct {v3}, Lcom/networkbench/agent/impl/plugin/d/c$a;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v4, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "ping -c 1 -t %d -s %d %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "command: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-static {v4}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/networkbench/agent/impl/plugin/d/c$b;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/networkbench/agent/impl/plugin/d/c$b;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v6, "trace find line : "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string v6, "can\'t find target ip"

    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ping"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, ".*\\((\\d+\\.\\d+\\.\\d+\\.\\d+).*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iput-object v8, p3, Lcom/networkbench/agent/impl/plugin/d/c$b;->a:Ljava/lang/String;

    const-string v9, "trace find target ip : "

    invoke-static {v9, v8, v5}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    goto :goto_3

    :cond_1
    invoke-static {v6}, Laz;->o(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_3
    const-string v8, "[fF]rom (.*\\(.*\\)|.*): .*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v1, 0x28

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7, v2, v4}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "trace find router ip : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " host: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_2

    :cond_4
    const-string v8, "\\d+ bytes from (\\d+\\.\\d+.\\d+.\\d+):.*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "trace find target ip: "

    invoke-static {v4, v1, v5}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    goto/16 :goto_2

    :cond_5
    invoke-static {v6}, Laz;->o(Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/lang/Process;)V

    iput-object v1, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    iput-object v2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->a:Ljava/lang/String;

    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "router ip:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string p0, ""

    if-eqz p4, :cond_7

    iget-object p1, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :try_start_2
    new-instance p1, Lcom/networkbench/agent/impl/plugin/e/b;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/plugin/e/b;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p4, "-c"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/networkbench/agent/impl/plugin/d/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    sget v0, Lcom/networkbench/agent/impl/plugin/d/e;->a:I

    invoke-virtual {p1, p4, p2, v0}, Lcom/networkbench/agent/impl/plugin/e/b;->a(Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->k()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p4, Lcom/networkbench/agent/impl/plugin/d/e;->a:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->m()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->l()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/e/b;->a()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/networkbench/agent/impl/plugin/d/c$b;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "PingManager in mtr error:"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    const-string p1, "100"

    iput-object p1, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/networkbench/agent/impl/plugin/d/e;->a:I

    invoke-static {p2, p0, p1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->d:Ljava/lang/String;

    :goto_5
    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "traceOneStep end********************** : "

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v3

    :catchall_2
    move-exception p0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 544
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 546
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/Process;)V
    .locals 0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 548
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/lang/String;ILcom/networkbench/agent/impl/plugin/d/c;Lcom/networkbench/agent/impl/plugin/d/e$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    new-instance v0, Lcom/networkbench/agent/impl/plugin/d/c$b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/d/c$b;-><init>()V

    .line 521
    iget-object v1, p2, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iput-object p0, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    .line 523
    :cond_0
    invoke-static {p0, v2, p1, v0, v1}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/d/c$b;Z)Lcom/networkbench/agent/impl/plugin/d/c$a;

    move-result-object v3

    .line 524
    sget-object v4, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result ip:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    if-ne v2, v1, :cond_1

    .line 525
    iget-object v4, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 526
    iget-object p0, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->a:Ljava/lang/String;

    .line 527
    :cond_1
    iget-object v4, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 528
    iget-object v4, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 529
    iget-object v4, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->e:Ljava/lang/String;

    invoke-interface {p3, p2, v4}, Lcom/networkbench/agent/impl/plugin/d/e$a;->a(Lcom/networkbench/agent/impl/plugin/d/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 530
    invoke-interface {p3, p2}, Lcom/networkbench/agent/impl/plugin/d/e$a;->a(Lcom/networkbench/agent/impl/plugin/d/c;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 531
    :cond_3
    :goto_0
    iget-object v3, v3, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    iput-boolean v1, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->d:Z

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    const/4 p0, 0x0

    .line 533
    iput-boolean p0, v0, Lcom/networkbench/agent/impl/plugin/d/c$b;->d:Z

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/networkbench/agent/impl/plugin/d/c;Lcom/networkbench/agent/impl/plugin/d/e$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/plugin/d/c;",
            "Lcom/networkbench/agent/impl/plugin/d/e$a;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "MTRPlugin NBSThreadExecutor.isExecutorServiceStop()"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    .line 536
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x38

    .line 537
    :try_start_0
    invoke-static {v0, v1, p1, p2}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/plugin/d/c;Lcom/networkbench/agent/impl/plugin/d/e$a;)V

    if-eqz p2, :cond_2

    .line 538
    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/plugin/d/e$a;->b(Lcom/networkbench/agent/impl/plugin/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    sget-object v1, Lcom/networkbench/agent/impl/plugin/d/e;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error trace:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/networkbench/agent/impl/plugin/d/e$a;->a(Lcom/networkbench/agent/impl/plugin/d/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
