.class Lcom/batch/android/e/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "JY+Cn0qwsdiDNm7bRMKW8A=="

.field private static final c:Ljava/lang/String; = "cJCf4WfJaP7qOvOxkZmYCQ=="

.field private static final d:Ljava/lang/String; = "2"


# instance fields
.field private a:Lcom/batch/android/e/d$b;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/batch/android/e/d$b;->a(I)Lcom/batch/android/e/d$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/e/p0;-><init>(Lcom/batch/android/e/d$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/e/p0;->a:Lcom/batch/android/e/d$b;

    return-void

    :cond_0
    const-string p0, "Null type"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/16 v3, 0x61

    goto :goto_1

    :cond_0
    const/16 v3, 0x41

    :goto_1
    const/16 v4, 0x1a

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/batch/android/e/p0;->a(Lcom/batch/android/e/o0;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/batch/android/e/o0;)[B
    .locals 1

    .line 74
    const-string p0, "d2dIRA=="

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 75
    sget-object p1, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-static {p1}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;)Lcom/batch/android/e/c;

    move-result-object p1

    const-string v0, "JY+Cn0qwsdiDNm7bRMKW8A=="

    invoke-interface {p1, v0}, Lcom/batch/android/e/c;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lcom/batch/android/e/b;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/e/o0;)[B
    .locals 1

    .line 61
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/batch/android/e/p0;->a:Lcom/batch/android/e/d$b;

    invoke-direct {p0, p2, p4}, Lcom/batch/android/e/p0;->b(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    .line 63
    invoke-interface {p0, p3}, Lcom/batch/android/e/c;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    sget-object p1, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-direct {p0, p2, p4}, Lcom/batch/android/e/p0;->a(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    .line 65
    invoke-interface {p0, p3}, Lcom/batch/android/e/c;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/batch/android/e/p0;->b(Lcom/batch/android/e/o0;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/batch/android/e/o0;)[B
    .locals 1

    const-string p0, "amdmeA=="

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object p1, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    invoke-static {p1}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;)Lcom/batch/android/e/c;

    move-result-object p1

    const-string v0, "cJCf4WfJaP7qOvOxkZmYCQ=="

    invoke-interface {p1, v0}, Lcom/batch/android/e/c;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/b;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/batch/android/e/p0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BLcom/batch/android/e/o0;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p2, Lcom/batch/android/e/o0;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-static {v0, p2}, Lcom/batch/android/e/p0;->c(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/p0;->a:Lcom/batch/android/e/d$b;

    invoke-direct {p0, v0, p2}, Lcom/batch/android/e/p0;->a(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    invoke-static {v0, p2}, Lcom/batch/android/e/p0;->c(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/p0;->a:Lcom/batch/android/e/d$b;

    invoke-direct {p0, v0, p2}, Lcom/batch/android/e/p0;->b(Ljava/lang/String;Lcom/batch/android/e/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    :goto_0
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/batch/android/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public a([BLcom/batch/android/e/o0;Ljava/net/HttpURLConnection;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 66
    invoke-static {p1}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "X-Batch-Content-Cipher"

    invoke-static {v1, p3}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/batch/android/e/p0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/e/o0;)[B

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    const-string p0, "The data as string should be at least 9 char long"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_1
    const-string p0, "Null data"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method
