.class public final Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;,
        Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;,
        Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;,
        Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
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

.field static final synthetic f:Z = true


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field private keySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

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

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;-><init>()V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a:Ljava/util/Comparator;

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

.method private rebalance(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    iget-object v0, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    :cond_3
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_5

    :cond_4
    sget-boolean v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->f:Z

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, La61;->h()V

    return-void

    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    :goto_6
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_8
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_7

    :cond_9
    move v3, v2

    :goto_7
    if-eqz v1, :cond_a

    iget v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    :cond_a
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_e

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    goto :goto_9

    :cond_b
    sget-boolean v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->f:Z

    if-nez v1, :cond_d

    if-ne v2, v7, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {}, La61;->h()V

    return-void

    :cond_d
    :goto_8
    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    goto :goto_a

    :cond_e
    :goto_9
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    :goto_a
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    if-eqz p2, :cond_13

    goto :goto_c

    :cond_10
    sget-boolean v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->f:Z

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

    iput v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    if-nez p2, :cond_13

    goto :goto_c

    :cond_13
    iget-object p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto/16 :goto_0

    :cond_14
    :goto_c
    return-void
.end method

.method private replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    :cond_0
    if-eqz v0, :cond_4

    iget-object p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    return-void

    :cond_1
    sget-boolean p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->f:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, La61;->h()V

    return-void

    :cond_3
    :goto_0
    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    return-void

    :cond_4
    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    return-void
.end method

.method private rotateLeft(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v2, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    iput-object p1, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    return-void
.end method

.method private rotateRight(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    iput-object p1, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    return-void
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
.method public a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->f:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    iget-object v5, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    iget-object p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v2, 0x1

    if-nez v1, :cond_9

    sget-object v3, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
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

    :cond_8
    :goto_4
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Ljava/lang/Object;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v3, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Ljava/lang/Object;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    if-gez v4, :cond_a

    iput-object v0, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_5

    :cond_a
    iput-object v0, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    :goto_5
    invoke-direct {p0, v1, v2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V

    :goto_6
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 123
    iget-object p2, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 124
    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 125
    :cond_0
    iget-object p2, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 126
    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 127
    iget-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 128
    iget v1, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    iget v4, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    if-le v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b()Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a()Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p2

    .line 129
    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V

    .line 130
    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v0, :cond_2

    .line 131
    iget v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    .line 132
    iput-object v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 133
    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 134
    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 135
    :goto_1
    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v0, :cond_3

    .line 136
    iget v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    .line 137
    iput-object v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 138
    iput-object p2, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 139
    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    .line 140
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->h:I

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    .line 143
    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    .line 145
    iput-object v3, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    goto :goto_2

    .line 146
    :cond_6
    invoke-direct {p0, p1, v3}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;)V

    .line 147
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V

    .line 148
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    .line 149
    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    return-void
.end method

.method public b(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V

    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    iget v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

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

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$a;

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

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->g:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->keySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->keySet:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$b;

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

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;Z)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p0

    iget-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->g:Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->b(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->g:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->c:I

    return p0
.end method
