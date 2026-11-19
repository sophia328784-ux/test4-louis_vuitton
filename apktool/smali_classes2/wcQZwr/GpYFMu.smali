.class public LwcQZwr/GpYFMu;
.super Ljava/lang/Object;


# static fields
.field public static final a:LwcQZwr/GpYFMu;

.field public static b:[C


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LwcQZwr/GpYFMu;

    invoke-direct {v0}, LwcQZwr/GpYFMu;-><init>()V

    sput-object v0, LwcQZwr/GpYFMu;->a:LwcQZwr/GpYFMu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "h{H\""

    invoke-static {v0}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit16 v3, v2, 0xfa0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\u0010\u001a"

    const-string v6, "z[jl9"

    if-lt v3, v4, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v5}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v1, v1, 0xfa0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v5}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v1, v1, 0xfa0

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LwcQZwr/GpYFMu;->a:LwcQZwr/GpYFMu;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, LwcQZwr/GpYFMu;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LwcQZwr/GpYFMu;->a:LwcQZwr/GpYFMu;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1, p2}, LwcQZwr/GpYFMu;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LwcQZwr/GpYFMu;->a:LwcQZwr/GpYFMu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, LwcQZwr/GpYFMu;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, LwcQZwr/GpYFMu;->b:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x7fff

    new-array v2, v0, [C

    sput-object v2, LwcQZwr/GpYFMu;->b:[C

    const/4 v2, 0x3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    xor-int v4, v2, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x63

    rem-int/lit8 v2, v2, 0x3f

    sget-object v4, LwcQZwr/GpYFMu;->b:[C

    int-to-char v5, v2

    aput-char v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    aget-char v3, v0, v1

    aget-char v4, v2, v1

    sget-object v5, LwcQZwr/GpYFMu;->b:[C

    aget-char v5, v5, v1

    xor-int/2addr v4, v5

    int-to-char v4, v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LwcQZwr/GpYFMu;->a:LwcQZwr/GpYFMu;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, LwcQZwr/GpYFMu;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final varargs a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 0

    if-nez p2, :cond_0

    :try_start_0
    const-string p0, "doTTFNZ["

    invoke-static {p0}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    const-string p0, "DOtt9wh{"

    invoke-static {p0}, LwcQZwr/GpYFMu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const/4 p0, 0x3

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    array-length p0, p4

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    aget-object p3, p4, p3

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, LwcQZwr/GpYFMu;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->b(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
