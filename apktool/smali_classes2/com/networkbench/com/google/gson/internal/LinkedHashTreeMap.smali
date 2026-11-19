.class public final Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;,
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;,
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;,
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;,
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;,
        Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic g:Z = true


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field private entrySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field f:I

.field private keySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a:Ljava/util/Comparator;

    new-instance p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->f:I

    return-void
.end method

.method public static a([Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)[",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 179
    new-array v1, v1, [Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 180
    new-instance v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;-><init>()V

    .line 181
    new-instance v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;-><init>()V

    .line 182
    new-instance v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;

    invoke-direct {v4}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_7

    .line 183
    aget-object v7, p0, v6

    if-nez v7, :cond_0

    goto :goto_4

    .line 184
    :cond_0
    invoke-virtual {v2, v7}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    move v8, v5

    move v9, v8

    .line 185
    :goto_1
    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 186
    iget v10, v10, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->g:I

    and-int/2addr v10, v0

    if-nez v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v3, v8}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a(I)V

    .line 188
    invoke-virtual {v4, v9}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a(I)V

    .line 189
    invoke-virtual {v2, v7}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    .line 190
    :goto_2
    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 191
    iget v10, v7, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->g:I

    and-int/2addr v10, v0

    if-nez v10, :cond_3

    .line 192
    invoke-virtual {v3, v7}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    goto :goto_2

    .line 193
    :cond_3
    invoke-virtual {v4, v7}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    if-lez v8, :cond_5

    .line 194
    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_6

    .line 195
    invoke-virtual {v4}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v7

    :cond_6
    aput-object v7, v1, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private doubleCapacity()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    invoke-static {v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a([Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->f:I

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private rebalance(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    iget-object v0, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v3, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    :cond_3
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_5

    :cond_4
    sget-boolean v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, La61;->h()V

    return-void

    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    :goto_6
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_8
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_7

    :cond_9
    move v3, v2

    :goto_7
    if-eqz v1, :cond_a

    iget v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    :cond_a
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_e

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    goto :goto_9

    :cond_b
    sget-boolean v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v1, :cond_d

    if-ne v2, v7, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {}, La61;->h()V

    return-void

    :cond_d
    :goto_8
    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    goto :goto_a

    :cond_e
    :goto_9
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    :goto_a
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    if-eqz p2, :cond_13

    goto :goto_c

    :cond_10
    sget-boolean v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v0, :cond_12

    if-eq v5, v7, :cond_12

    if-ne v5, v8, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {}, La61;->h()V

    return-void

    :cond_12
    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    if-nez p2, :cond_13

    goto :goto_c

    :cond_13
    iget-object p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto/16 :goto_0

    :cond_14
    :goto_c
    return-void
.end method

.method private replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :cond_0
    if-eqz v0, :cond_4

    iget-object p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-void

    :cond_1
    sget-boolean p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, La61;->h()V

    return-void

    :cond_3
    :goto_0
    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-void

    :cond_4
    iget p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->g:I

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    aput-object p2, p0, p1

    return-void
.end method

.method private rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v3, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v2, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    iput-object p1, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    return-void
.end method

.method private rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    iput-object p1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    return-void
.end method

.method private static secondaryHash(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v6

    array-length v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    and-int/2addr v2, v6

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    sget-object v5, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v5, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    iget-object v7, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->f:Ljava/lang/Object;

    if-eqz v5, :cond_1

    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    :goto_1
    if-nez v7, :cond_2

    return-object v3

    :cond_2
    if-gez v7, :cond_3

    iget-object v8, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_2

    :cond_3
    iget-object v8, v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :goto_2
    if-nez v8, :cond_4

    :goto_3
    move v10, v7

    goto :goto_4

    :cond_4
    move-object v3, v8

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :goto_4
    if-nez p2, :cond_6

    return-object v4

    :cond_6
    iget-object v7, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-nez v3, :cond_9

    sget-object p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, p2, :cond_7

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_8

    :cond_7
    move-object v4, v3

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, " is not Comparable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    new-instance v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v8, v7, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Ljava/lang/Object;ILcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    aput-object v3, v1, v2

    goto :goto_7

    :cond_9
    move-object v5, p1

    move-object v4, v3

    new-instance v3, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v8, v7, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Ljava/lang/Object;ILcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    if-gez v10, :cond_a

    iput-object v3, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_6

    :cond_a
    iput-object v3, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :goto_6
    invoke-direct {p0, v4, v9}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V

    :goto_7
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    iget p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->f:I

    if-le p1, p2, :cond_b

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    :cond_b
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    return-object v3
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 151
    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object p2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 152
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 153
    :cond_0
    iget-object p2, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 154
    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 155
    iget-object v2, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 156
    iget v2, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    iget v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    if-le v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p2

    .line 157
    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V

    .line 158
    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v1, :cond_2

    .line 159
    iget v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    .line 160
    iput-object v1, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 161
    iput-object p2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 162
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 163
    :goto_1
    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v1, :cond_3

    .line 164
    iget v3, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    .line 165
    iput-object v1, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 166
    iput-object p2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 167
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 168
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    .line 171
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    .line 173
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_2

    .line 174
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V

    .line 175
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V

    .line 176
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    .line 177
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    return-void
.end method

.method public b(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V

    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b:[Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    iget v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :goto_0
    if-eq v0, p0, :cond_0

    iget-object v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$c;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->h:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0

    iget-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->h:Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string p0, "key == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->b(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->h:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->d:I

    return p0
.end method
