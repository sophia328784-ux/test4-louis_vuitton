.class public Lcom/batch/android/e0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[BZ)Lcom/batch/android/e0/c;
    .locals 2

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/batch/android/e0/h;

    new-instance v1, Lcom/batch/android/e0/a;

    invoke-direct {v1}, Lcom/batch/android/e0/a;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/batch/android/e0/h;-><init>(Lcom/batch/android/e0/b$a;Ljava/nio/ByteBuffer;)V

    .line 42
    new-instance p1, Lcom/batch/android/e0/c;

    invoke-direct {p1, p0, v0}, Lcom/batch/android/e0/c;-><init>(Landroid/content/Context;Lcom/batch/android/e0/b;)V

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/batch/android/e0/c;->start()V

    :cond_0
    return-object p1
.end method

.method public static a([I)Z
    .locals 4

    const-string v0, "US-ASCII"

    array-length v1, p0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    const-string v1, "GIF87a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/batch/android/e0/g;->a([I[B)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GIF89a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/batch/android/e0/g;->a([I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v3
.end method

.method private static a([I[B)Z
    .locals 4

    .line 37
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 39
    aget-byte v1, p1, v0

    aget v3, p0, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
