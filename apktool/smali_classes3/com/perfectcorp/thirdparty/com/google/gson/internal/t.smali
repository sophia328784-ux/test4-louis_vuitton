.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;,
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;,
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;,
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;
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
.field public static final i:Ljava/util/Comparator;


# instance fields
.field public final b:Ljava/util/Comparator;

.field public c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public d:I

.field public e:I

.field public final f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public g:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;

.field public h:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->i:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v1, 0x0

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->i:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_4

    if-ne v3, v2, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    return-object v0

    :cond_2
    if-gez v5, :cond_3

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :goto_2
    if-eqz v6, :cond_5

    move-object v0, v6

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :cond_5
    if-nez p2, :cond_6

    return-object v1

    :cond_6
    const/4 p2, 0x1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-nez v0, :cond_9

    if-ne v3, v2, :cond_8

    instance-of v2, p1, Ljava/lang/Comparable;

    if-eqz v2, :cond_7

    goto :goto_3

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
    :goto_3
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_5

    :cond_9
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    if-gez v5, :cond_a

    iput-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_4

    :cond_a
    iput-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :goto_4
    invoke-virtual {p0, v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->g(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    :goto_5
    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    return-object v2
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V
    .locals 4

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V
    .locals 2

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :cond_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void

    :cond_1
    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void

    :cond_2
    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void
.end method

.method public final e(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :cond_0
    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    iget v4, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    if-le v1, v4, :cond_1

    :goto_0
    iget-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p2

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz p2, :cond_4

    iget v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz p2, :cond_5

    iget v2, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->g(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->g:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->g:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$a;

    return-object v0
.end method

.method public final f(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V
    .locals 4

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    return-void
.end method

.method public final g(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    if-nez p2, :cond_e

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v1, :cond_8

    iget v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->c(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    :cond_a
    :goto_6
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V

    if-nez p2, :cond_e

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    if-eqz p2, :cond_d

    goto :goto_8

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    if-eqz p2, :cond_e

    :cond_d
    :goto_7
    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    goto :goto_0

    :cond_e
    :goto_8
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->h:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->h:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object p0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string p0, "key == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    return p0
.end method
