.class public final Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bi;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/bi;",
        "Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->a(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)I

    move-result p0

    if-gtz p0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->c(Ljava/lang/StringBuilder;)V

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->e(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid range: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$d;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$b;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)V

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/Comparable;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public final b()Ljava/lang/Comparable;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Comparable;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->d(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->d(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->c(Ljava/lang/StringBuilder;)V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->e(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
