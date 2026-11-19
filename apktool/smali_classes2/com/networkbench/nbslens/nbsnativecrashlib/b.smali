.class Lcom/networkbench/nbslens/nbsnativecrashlib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final u:Lcom/networkbench/nbslens/nbsnativecrashlib/b;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Ljava/util/regex/Pattern;

.field private final c:Ljava/util/regex/Pattern;

.field private final d:J

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

.field private r:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

.field private s:J

.field private t:Landroid/os/FileObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/b;-><init>()V

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->u:Lcom/networkbench/nbslens/nbsnativecrashlib/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a:Ljava/util/Date;

    const-string v0, "^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->b:Ljava/util/regex/Pattern;

    const-string v0, "^Cmd\\sline:\\s+(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->c:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->s:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->t:Landroid/os/FileObserver;

    return-void
.end method

.method public static a()Lcom/networkbench/nbslens/nbsnativecrashlib/b;
    .locals 1

    .line 296
    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->u:Lcom/networkbench/nbslens/nbsnativecrashlib/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 11

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 302
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 303
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-nez p1, :cond_9

    .line 304
    const-string v6, "----- pid "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 305
    iget-object v6, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 306
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 307
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_0

    if-nez v4, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    iget v7, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_3

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 311
    :cond_4
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v7, p2

    .line 312
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x3a98

    cmp-long v4, v7, v9

    if-lez v4, :cond_5

    goto :goto_0

    .line 313
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 314
    :cond_6
    iget-object v7, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 315
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-eq v8, v6, :cond_7

    goto :goto_0

    .line 316
    :cond_7
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 317
    iget-object v8, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    .line 318
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    const-string p1, "Mode: Watching /data/anr/*\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v6

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_0

    .line 320
    const-string v6, "----- end "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    .line 321
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 322
    :cond_b
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v2, :cond_c

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 324
    :catch_1
    :cond_c
    throw p0

    :catch_2
    move-object v3, v2

    :catch_3
    if-eqz v3, :cond_d

    .line 325
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_d
    return-object v2
.end method

.method private a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->i:Ljava/lang/String;

    const-string v4, "anr"

    invoke-static {v1, p1, v4, v2, v3}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->g:Ljava/lang/String;

    const-string p1, " <<<\n\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "\n+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n\n"

    .line 299
    invoke-static {v0, p0, p1, p2, v1}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/nbslens/nbsnativecrashlib/b;Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    const-string v1, "NBSAgent"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->s:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3a98

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->r:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, v3, v3}, Lcom/networkbench/nbslens/nbsnativecrashlib/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-boolean v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->e:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->s:J

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->e()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_9

    :cond_4
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v0

    const-string v4, "AnrHandler getEmergency failed"

    invoke-interface {v0, v1, v4, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_0
    :try_start_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/%s_%020d_%s__%s%s"

    iget-object v5, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->j:Ljava/lang/String;

    const-string v6, "tombstone"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->g:Ljava/lang/String;

    const-string v10, ".anr.nbscrash"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v2

    const-string v4, "AnrHandler createLogFile failed"

    invoke-interface {v2, v1, v4, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_b

    :try_start_3
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "rws"

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "UTF-8"

    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_2
    :try_start_5
    iget p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->n:I

    if-gtz p1, :cond_6

    iget v5, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->l:I

    if-gtz v5, :cond_6

    iget v5, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->m:I

    if-lez v5, :cond_7

    goto :goto_3

    :catch_4
    move-exception v0

    move-object p1, v3

    goto :goto_5

    :cond_6
    :goto_3
    iget v5, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->l:I

    iget v6, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->m:I

    invoke-static {p1, v5, v6}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_7
    iget-boolean p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->o:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_8
    iget-boolean p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->p:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_9
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    move-object p1, v3

    goto :goto_7

    :goto_4
    move-object v3, v4

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v4, v3

    :goto_5
    :try_start_7
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v5

    const-string v6, "AnrHandler write log file failed"

    invoke-interface {v5, v1, v6, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_b

    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :goto_6
    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_a
    throw p0

    :catch_8
    :cond_b
    :goto_7
    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->q:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    if-eqz p0, :cond_d

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-interface {p0, v3, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_d
    :goto_9
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZLcom/networkbench/nbslens/nbsnativecrashlib/g;Lcom/networkbench/nbslens/nbsnativecrashlib/g;)V
    .locals 0

    .line 297
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->t:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v2

    const-string v3, "NBSAgent"

    const-string v4, "AnrHandler fileObserver stopWatching failed"

    invoke-interface {v2, v3, v4, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->t:Landroid/os/FileObserver;

    return-void

    :goto_1
    iput-object v1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->t:Landroid/os/FileObserver;

    throw v0

    :cond_0
    return-void
.end method
