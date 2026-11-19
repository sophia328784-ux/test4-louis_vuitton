.class public abstract Lcom/batch/android/e/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/o0$c;,
        Lcom/batch/android/e/o0$d;,
        Lcom/batch/android/e/o0$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "Webservice"

.field private static final j:I = 0x1e7

.field private static final k:I = 0x3c

.field private static l:Lcom/batch/android/e/o0$b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/batch/android/e/m0;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/content/Context;

.field private f:Lcom/batch/android/e/o0$c;

.field protected g:Z

.field private h:Lcom/batch/android/v0/h;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/o0;->h:Lcom/batch/android/v0/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/o0;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/e/o0;->f:Lcom/batch/android/e/o0$c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    new-instance p1, Lcom/batch/android/e/m0;

    invoke-direct {p0}, Lcom/batch/android/e/o0;->q()Lcom/batch/android/e/m0$b;

    move-result-object p2

    invoke-direct {p1, p3, p2, p4}, Lcom/batch/android/e/m0;-><init>(Ljava/lang/String;Lcom/batch/android/e/m0$b;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/batch/android/e/o0;->c:Lcom/batch/android/e/m0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    iget-object p1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const-string p2, "ws.cipherv2.lastfailure"

    invoke-virtual {p1, p2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/batch/android/e/o0;->g:Z

    return-void

    :cond_1
    const-string p0, "Null type"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "null urlPattern"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "null context"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private E()Lcom/batch/android/e/b0;
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->F()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/batch/android/e/b0;

    invoke-direct {v0, p0}, Lcom/batch/android/e/b0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(I)Lcom/batch/android/e/o0$d$a;
    .locals 1

    .line 146
    invoke-static {p0}, Lcom/batch/android/e/o0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object p0, Lcom/batch/android/e/o0$d$a;->h:Lcom/batch/android/e/o0$d$a;

    return-object p0

    :cond_0
    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_1

    .line 148
    sget-object p0, Lcom/batch/android/e/o0$d$a;->d:Lcom/batch/android/e/o0$d$a;

    return-object p0

    :cond_1
    const/16 v0, 0x194

    if-ne p0, v0, :cond_2

    .line 149
    sget-object p0, Lcom/batch/android/e/o0$d$a;->e:Lcom/batch/android/e/o0$d$a;

    return-object p0

    :cond_2
    const/16 v0, 0x193

    if-ne p0, v0, :cond_3

    .line 150
    sget-object p0, Lcom/batch/android/e/o0$d$a;->i:Lcom/batch/android/e/o0$d$a;

    return-object p0

    .line 151
    :cond_3
    sget-object p0, Lcom/batch/android/e/o0$d$a;->c:Lcom/batch/android/e/o0$d$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 152
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 153
    :catch_0
    const-string p0, "UTF-8 encoding is not supported, can\'t build URL"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 173
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/e/o0$b;)V
    .locals 0

    .line 171
    return-void
.end method

.method private a(Lcom/batch/android/e/o0$d;)V
    .locals 3

    .line 135
    sget-object v0, Lcom/batch/android/e/q0;->f:Lcom/batch/android/e/q0;

    if-eqz p1, :cond_4

    .line 136
    sget-object v1, Lcom/batch/android/e/o0$a;->a:[I

    invoke-static {p1}, Lcom/batch/android/e/o0$d;->a(Lcom/batch/android/e/o0$d;)Lcom/batch/android/e/o0$d$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/batch/android/e/q0;->c:Lcom/batch/android/e/q0;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/batch/android/e/q0;->b:Lcom/batch/android/e/q0;

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    .line 140
    sget-object v0, Lcom/batch/android/e/q0;->d:Lcom/batch/android/e/q0;

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_4

    .line 142
    sget-object v0, Lcom/batch/android/e/q0;->e:Lcom/batch/android/e/q0;

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending retry signal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Webservice"

    invoke-static {v2, v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :cond_5
    invoke-virtual {p0, v0}, Lcom/batch/android/e/o0;->a(Lcom/batch/android/e/q0;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Lcom/batch/android/j1/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/batch/android/b1/g;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/b1/g<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Lcom/batch/android/b1/g;->g()[B

    move-result-object p1

    .line 155
    invoke-direct {p0}, Lcom/batch/android/e/o0;->u()Lcom/batch/android/e/p0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1, p0}, Lcom/batch/android/e/p0;->a([BLcom/batch/android/e/o0;)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 129
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 131
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v3

    new-instance v4, Lrh;

    const/4 v5, 0x7

    invoke-direct {v4, v2, v5}, Lrh;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v3, v4}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/c;)V

    .line 132
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 133
    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/batch/android/e/o0;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static b(I)Z
    .locals 1

    .line 55
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x18f

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(I)Z
    .locals 1

    const/4 p0, 0x1

    if-gtz p1, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v1, "ws.cipherv2.lastfailure"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private m()I
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "ws.defaultconnectTimeout"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private n()Lcom/batch/android/e/c;
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-boolean p0, p0, Lcom/batch/android/e/o0;->g:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-static {p0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/e/d;->a(I)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method private q()Lcom/batch/android/e/m0$b;
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/e/m0$b;->a(I)Lcom/batch/android/e/m0$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Error while getting cryptor mode for key : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webservice"

    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object p0, Lcom/batch/android/e/m0$b;->c:Lcom/batch/android/e/m0$b;

    return-object p0
.end method

.method private s()I
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "ws.defaultRetry"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private u()Lcom/batch/android/e/p0;
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->v()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-boolean p0, p0, Lcom/batch/android/e/o0;->g:Z

    if-eqz p0, :cond_2

    new-instance p0, Lcom/batch/android/e/p0;

    sget-object v0, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-direct {p0, v0}, Lcom/batch/android/e/p0;-><init>(Lcom/batch/android/e/d$b;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/batch/android/e/p0;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/e/p0;-><init>(I)V

    return-object p0
.end method

.method private x()Lcom/batch/android/e/p0;
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->y()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-boolean p0, p0, Lcom/batch/android/e/o0;->g:Z

    if-eqz p0, :cond_2

    new-instance p0, Lcom/batch/android/e/p0;

    sget-object v0, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-direct {p0, v0}, Lcom/batch/android/e/p0;-><init>(Lcom/batch/android/e/d$b;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/batch/android/e/p0;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/e/p0;-><init>(I)V

    return-object p0
.end method

.method private z()I
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "ws.defaultreadTimeout"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract A()Ljava/lang/String;
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method public abstract C()Ljava/lang/String;
.end method

.method public D()Lcom/batch/android/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/o0$d;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/g0;->a([B)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-string v2, "header"

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "body"

    invoke-virtual {v0, v3}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "DESACTIVATED_APIKEY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "INVALID_APIKEY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/batch/android/json/JSONException;

    const-string v0, "Status not OK : "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/batch/android/e/o0$d;

    sget-object v0, Lcom/batch/android/e/o0$d$a;->f:Lcom/batch/android/e/o0$d$a;

    invoke-direct {p0, v0}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/batch/android/e/o0$d;

    sget-object v0, Lcom/batch/android/e/o0$d$a;->g:Lcom/batch/android/e/o0$d$a;

    invoke-direct {p0, v0}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;)V

    throw p0

    :cond_2
    const-string v1, "ts"

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v4, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v4

    const-string v5, "ws.server.timestamp"

    invoke-virtual {v4, v5}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v1

    if-gez v4, :cond_3

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v6}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-wide v1, v7

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v6}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/batch/android/n/b0;->a()Lcom/batch/android/e/h0;

    move-result-object p0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v4}, Lcom/batch/android/e/h0;->a(Ljava/util/Date;)V

    :cond_5
    invoke-virtual {v0, v3}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Missing header status"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v1

    :cond_7
    const-string p0, "Missing body"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string p0, "Missing header"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-string p0, "Unable to parse the response as json"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract F()Ljava/lang/String;
.end method

.method public a(Ljava/net/HttpURLConnection;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/e/q0;)V
    .locals 1

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Retry webservice, cause : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Webservice"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/batch/android/e/o0;->c:Lcom/batch/android/e/m0;

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/e/m0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;[B)V
    .locals 7

    if-eqz p2, :cond_0

    .line 157
    invoke-static {p2}, Lcom/batch/android/e/b;->a([B)Ljava/lang/String;

    move-result-object p2

    .line 158
    const-string v0, "Content-SHA1"

    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/e/o0;->a(Ljava/net/HttpURLConnection;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/batch/android/e/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    const/16 v5, 0x20

    if-ge v4, v1, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    if-nez v3, :cond_1

    const/16 v3, 0x2c

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "X-Batch-Signature"

    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/batch/android/e/o0;->b:Ljava/lang/String;

    const-string v2, "X-Batch-Nonce"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/batch/android/e/o0;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v1, "X-Batch-Cipher-Downgraded"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "2"

    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v1, "X-Batch-Accept-Cipher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/e/o0;->f:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v0, "X-Batch-Content-Cipher"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 23
    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->r()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->t()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/batch/android/e/o0;->c:Lcom/batch/android/e/m0;

    invoke-virtual {v4, v2, v3}, Lcom/batch/android/e/m0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->h()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lcom/batch/android/e/j0;

    invoke-direct {v2}, Lcom/batch/android/e/j0;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/o0;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-direct {p0}, Lcom/batch/android/e/o0;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/e/o0;->f:Lcom/batch/android/e/o0$c;

    sget-object v2, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->w()Lcom/batch/android/b1/g;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/batch/android/b1/g;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/e/o0;->a(Lcom/batch/android/b1/g;)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/batch/android/e/o0;->a(Ljava/net/HttpURLConnection;[B)V

    if-eqz v1, :cond_4

    new-instance p0, Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_4
    return-object v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->c()V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->e()V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->b()V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->d()V

    return-void
.end method

.method public h()Ljava/net/URL;
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->g()V

    iget-object v0, p0, Lcom/batch/android/e/o0;->c:Lcom/batch/android/e/m0;

    invoke-direct {p0}, Lcom/batch/android/e/o0;->E()Lcom/batch/android/e/b0;

    move-result-object v1

    invoke-direct {p0}, Lcom/batch/android/e/o0;->n()Lcom/batch/android/e/c;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/e/m0;->a(Lcom/batch/android/e/b0;Lcom/batch/android/e/c;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/o0$d;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/o0;->h:Lcom/batch/android/v0/h;

    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/batch/android/e/o0$d;

    sget-object v0, Lcom/batch/android/e/o0$d$a;->j:Lcom/batch/android/e/o0$d$a;

    invoke-direct {p0, v0}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v0

    move v6, v1

    move-object v4, v2

    move-object v5, v4

    :goto_1
    if-lez v3, :cond_2

    invoke-direct {p0, v4}, Lcom/batch/android/e/o0;->a(Lcom/batch/android/e/o0$d;)V

    :cond_2
    new-instance v4, Lcom/batch/android/f/c;

    invoke-direct {v4}, Lcom/batch/android/f/c;-><init>()V

    invoke-static {v4}, Lcom/batch/android/n/h;->a(Lcom/batch/android/f/f;)Lcom/batch/android/f/a;

    move-result-object v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->f()Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->b(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->h(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto/16 :goto_12

    :catch_0
    move-exception v4

    :goto_2
    move-object v7, v2

    goto/16 :goto_e

    :catch_1
    move-exception v4

    goto/16 :goto_8

    :catch_2
    move-object v7, v2

    :goto_3
    :try_start_2
    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v6

    invoke-static {v6}, Lcom/batch/android/e/o0;->b(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->h()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/batch/android/f/a;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v8}, Lcom/batch/android/f/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Lcom/batch/android/f/a;->a()V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v4, v2

    :goto_4
    move-object v2, v7

    goto/16 :goto_12

    :catch_3
    move-exception v4

    goto/16 :goto_e

    :cond_3
    :goto_5
    invoke-virtual {v4}, Lcom/batch/android/f/a;->b()V

    const-string v4, "Content-Encoding"

    invoke-static {v4, v5}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v8, "gzip"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v4

    :cond_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v8, 0x2000

    :try_start_3
    new-array v9, v8, [B

    :goto_6
    invoke-virtual {v7, v9, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v1, :cond_5

    invoke-virtual {v4, v9, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :catchall_2
    move-exception p0

    goto/16 :goto_13

    :catch_4
    move-exception v8

    goto/16 :goto_f

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {p0}, Lcom/batch/android/e/o0;->x()Lcom/batch/android/e/p0;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9, v8, p0, v5}, Lcom/batch/android/e/p0;->a([BLcom/batch/android/e/o0;Ljava/net/HttpURLConnection;)[B

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_7

    :cond_6
    invoke-direct {p0}, Lcom/batch/android/e/o0;->j()V

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Unable to read encrypted data"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    :goto_7
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :catch_7
    return-object v8

    :cond_8
    :try_start_7
    invoke-static {v6}, Lcom/batch/android/e/o0;->a(I)Lcom/batch/android/e/o0$d$a;

    move-result-object v4

    new-instance v8, Lcom/batch/android/e/o0$d;

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v4, v9}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V

    sget-object v9, Lcom/batch/android/e/o0$d$a;->d:Lcom/batch/android/e/o0$d$a;

    if-ne v4, v9, :cond_a

    const-string v4, "Retry-After"

    sget-object v9, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_9
    const/16 v9, 0x3c

    invoke-virtual {v5, v4, v9}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/batch/android/e/o0$d;->a(I)V

    :cond_a
    const/16 v4, 0x1e7

    if-ne v6, v4, :cond_b

    invoke-direct {p0}, Lcom/batch/android/e/o0;->j()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    if-eqz v7, :cond_10

    goto/16 :goto_10

    :goto_8
    :try_start_8
    new-instance v7, Lcom/batch/android/e/o0$d;

    sget-object v8, Lcom/batch/android/e/o0$d$a;->b:Lcom/batch/android/e/o0$d$a;

    invoke-direct {v7, v8, v4}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v3, v3, 0x1

    :try_start_9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    move v6, v1

    move-object v4, v7

    goto/16 :goto_11

    :catch_9
    move-exception v4

    goto :goto_9

    :catch_a
    move-exception v7

    goto :goto_a

    :goto_9
    :try_start_a
    new-instance v7, Lcom/batch/android/e/o0$d;

    sget-object v8, Lcom/batch/android/e/o0$d$a;->h:Lcom/batch/android/e/o0$d$a;

    invoke-direct {v7, v8, v4}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V

    throw v7

    :goto_a
    new-instance v8, Lcom/batch/android/e/o0$d;

    sget-object v9, Lcom/batch/android/e/o0$d$a;->b:Lcom/batch/android/e/o0$d$a;

    invoke-direct {v8, v9, v7}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v3, v3, 0x1

    :try_start_b
    instance-of v6, v7, Ljava/net/UnknownHostException;

    if-nez v6, :cond_c

    instance-of v6, v7, Ljava/net/ConnectException;

    if-eqz v6, :cond_e

    goto :goto_b

    :catch_b
    move-exception v4

    move v6, v1

    goto/16 :goto_2

    :cond_c
    :goto_b
    iget-object v6, p0, Lcom/batch/android/e/o0;->c:Lcom/batch/android/e/m0;

    invoke-virtual {v6}, Lcom/batch/android/e/m0;->a()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/batch/android/f/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v4, v6}, Lcom/batch/android/f/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v4}, Lcom/batch/android/f/a;->d()V

    goto :goto_c

    :cond_d
    invoke-virtual {v4}, Lcom/batch/android/f/a;->e()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_c
    :try_start_c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    move v6, v1

    :goto_d
    move-object v4, v8

    goto :goto_11

    :goto_e
    move-object v8, v4

    move-object v4, v2

    :goto_f
    :try_start_d
    new-instance v9, Lcom/batch/android/e/o0$d;

    sget-object v10, Lcom/batch/android/e/o0$d$a;->h:Lcom/batch/android/e/o0$d$a;

    invoke-direct {v9, v10, v8}, Lcom/batch/android/e/o0$d;-><init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v4, :cond_f

    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    :catch_d
    :cond_f
    move-object v8, v9

    if-eqz v7, :cond_10

    :goto_10
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    :catch_e
    :cond_10
    :try_start_10
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    :catch_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :goto_11
    invoke-direct {p0}, Lcom/batch/android/e/o0;->s()I

    move-result v7

    if-gt v3, v7, :cond_11

    invoke-direct {p0, v6}, Lcom/batch/android/e/o0;->c(I)Z

    move-result v7

    if-eqz v7, :cond_11

    goto/16 :goto_1

    :cond_11
    throw v4

    :catchall_3
    move-exception p0

    goto/16 :goto_4

    :goto_12
    move-object v7, v2

    :goto_13
    if-eqz v4, :cond_12

    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    :catch_10
    :cond_12
    if-eqz v7, :cond_13

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    :catch_11
    :cond_13
    :try_start_13
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    :catch_12
    throw p0
.end method

.method public l()Lcom/batch/android/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/o0$d;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->k()[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/g0;->a([B)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Unable to parse the response as json"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public r()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public t()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract v()Ljava/lang/String;
.end method

.method public abstract w()Lcom/batch/android/b1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/g<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract y()Ljava/lang/String;
.end method
