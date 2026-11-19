.class public final Lcom/batch/android/z0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/z0/y$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/batch/android/z0/f;
    .locals 1

    .line 82
    invoke-static {}, Lcom/batch/android/a1/c;->b0()Lcom/batch/android/z0/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/batch/android/z0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/f;"
        }
    .end annotation

    .line 71
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/batch/android/a1/c;->b0()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/batch/android/z0/x;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/batch/android/z0/x;

    .line 74
    new-instance v0, Lcom/batch/android/a1/c;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/c;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public static varargs a([Lcom/batch/android/z0/x;)Lcom/batch/android/z0/f;
    .locals 2

    .line 75
    array-length v0, p0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/batch/android/a1/c;->b0()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lcom/batch/android/a1/c;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/c;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public static a([Lcom/batch/android/z0/x;Z)Lcom/batch/android/z0/f;
    .locals 1

    .line 78
    array-length v0, p0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/batch/android/a1/c;->b0()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    new-instance p1, Lcom/batch/android/a1/c;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/c;-><init>([Lcom/batch/android/z0/x;)V

    return-object p1

    .line 81
    :cond_1
    new-instance p1, Lcom/batch/android/a1/c;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/batch/android/z0/x;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/c;-><init>([Lcom/batch/android/z0/x;)V

    return-object p1
.end method

.method public static a([B)Lcom/batch/android/z0/g;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/batch/android/z0/y;->a([BZ)Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/batch/android/z0/g;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, p2, v0}, Lcom/batch/android/z0/y;->a([BIIZ)Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method

.method public static a([BIIZ)Lcom/batch/android/z0/g;
    .locals 0

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    .line 67
    array-length p3, p0

    if-ne p2, p3, :cond_0

    .line 68
    new-instance p1, Lcom/batch/android/a1/e;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/e;-><init>([B)V

    return-object p1

    .line 69
    :cond_0
    new-instance p3, Lcom/batch/android/a1/e;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/batch/android/a1/e;-><init>([B)V

    return-object p3
.end method

.method public static a([BZ)Lcom/batch/android/z0/g;
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Lcom/batch/android/a1/e;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/e;-><init>([B)V

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Lcom/batch/android/a1/e;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/a1/e;-><init>([B)V

    return-object p1
.end method

.method public static a(Z)Lcom/batch/android/z0/h;
    .locals 0

    if-eqz p0, :cond_0

    .line 83
    sget-object p0, Lcom/batch/android/a1/f;->c:Lcom/batch/android/z0/h;

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/a1/f;->d:Lcom/batch/android/z0/h;

    return-object p0
.end method

.method public static a(B[B)Lcom/batch/android/z0/i;
    .locals 1

    .line 90
    new-instance v0, Lcom/batch/android/a1/h;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/a1/h;-><init>(B[B)V

    return-object v0
.end method

.method public static a(D)Lcom/batch/android/z0/j;
    .locals 1

    .line 62
    new-instance v0, Lcom/batch/android/a1/g;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/a1/g;-><init>(D)V

    return-object v0
.end method

.method public static a(F)Lcom/batch/android/z0/j;
    .locals 3

    .line 61
    new-instance v0, Lcom/batch/android/a1/g;

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a1/g;-><init>(D)V

    return-object v0
.end method

.method public static a(B)Lcom/batch/android/z0/k;
    .locals 3

    .line 56
    new-instance v0, Lcom/batch/android/a1/i;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a1/i;-><init>(J)V

    return-object v0
.end method

.method public static a(I)Lcom/batch/android/z0/k;
    .locals 3

    .line 58
    new-instance v0, Lcom/batch/android/a1/i;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a1/i;-><init>(J)V

    return-object v0
.end method

.method public static a(J)Lcom/batch/android/z0/k;
    .locals 1

    .line 59
    new-instance v0, Lcom/batch/android/a1/i;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/a1/i;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/math/BigInteger;)Lcom/batch/android/z0/k;
    .locals 1

    .line 60
    new-instance v0, Lcom/batch/android/a1/d;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/d;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static a(S)Lcom/batch/android/z0/k;
    .locals 3

    .line 57
    new-instance v0, Lcom/batch/android/a1/i;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a1/i;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lcom/batch/android/z0/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Lcom/batch/android/z0/x;",
            "V::",
            "Lcom/batch/android/z0/x;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/batch/android/z0/l;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/batch/android/z0/x;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/z0/x;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/z0/x;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/batch/android/a1/j;

    invoke-direct {p0, v0}, Lcom/batch/android/a1/j;-><init>([Lcom/batch/android/z0/x;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/batch/android/z0/p;
    .locals 1

    .line 70
    new-instance v0, Lcom/batch/android/a1/l;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs a([Ljava/util/Map$Entry;)Lcom/batch/android/z0/s;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/batch/android/z0/x;",
            "+",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/s;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 84
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/batch/android/z0/x;

    const/4 v1, 0x0

    .line 85
    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 86
    aget-object v4, p0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/z0/x;

    aput-object v4, v0, v2

    add-int/2addr v2, v3

    .line 87
    aget-object v3, p0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/z0/x;

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v0, v3}, Lcom/batch/android/z0/y;->b([Lcom/batch/android/z0/x;Z)Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/z0/x;Lcom/batch/android/z0/x;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ")",
            "Ljava/util/Map$Entry<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b()Lcom/batch/android/z0/l;
    .locals 1

    .line 39
    invoke-static {}, Lcom/batch/android/a1/j;->b0()Lcom/batch/android/z0/l;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lcom/batch/android/z0/x;)Lcom/batch/android/z0/l;
    .locals 2

    .line 35
    array-length v0, p0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/batch/android/a1/j;->b0()Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Lcom/batch/android/a1/j;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/j;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public static b([Lcom/batch/android/z0/x;Z)Lcom/batch/android/z0/l;
    .locals 1

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/batch/android/a1/j;->b0()Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/batch/android/a1/j;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/j;-><init>([Lcom/batch/android/z0/x;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/batch/android/a1/j;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/batch/android/z0/x;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/j;-><init>([Lcom/batch/android/z0/x;)V

    return-object p1
.end method

.method public static b([B)Lcom/batch/android/z0/p;
    .locals 1

    .line 38
    new-instance v0, Lcom/batch/android/a1/l;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/l;-><init>([B)V

    return-object v0
.end method

.method public static b([BII)Lcom/batch/android/z0/p;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/batch/android/z0/y;->b([BIIZ)Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0
.end method

.method public static b([BIIZ)Lcom/batch/android/z0/p;
    .locals 0

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    .line 32
    array-length p3, p0

    if-ne p2, p3, :cond_0

    .line 33
    new-instance p1, Lcom/batch/android/a1/l;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/l;-><init>([B)V

    return-object p1

    .line 34
    :cond_0
    new-instance p3, Lcom/batch/android/a1/l;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/batch/android/a1/l;-><init>([B)V

    return-object p3
.end method

.method public static b([BZ)Lcom/batch/android/z0/p;
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Lcom/batch/android/a1/l;

    invoke-direct {p1, p0}, Lcom/batch/android/a1/l;-><init>([B)V

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/batch/android/a1/l;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/a1/l;-><init>([B)V

    return-object p1
.end method

.method public static c()Lcom/batch/android/z0/y$a;
    .locals 1

    new-instance v0, Lcom/batch/android/z0/y$a;

    invoke-direct {v0}, Lcom/batch/android/z0/y$a;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/batch/android/z0/m;
    .locals 1

    invoke-static {}, Lcom/batch/android/a1/k;->b0()Lcom/batch/android/z0/m;

    move-result-object v0

    return-object v0
.end method
