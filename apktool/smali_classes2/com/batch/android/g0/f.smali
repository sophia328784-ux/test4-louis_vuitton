.class public final Lcom/batch/android/g0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/batch/android/g0/d$h;

.field private final d:Lcom/batch/android/g0/d$f;

.field private final e:Lcom/batch/android/g0/d$b;

.field private final f:Lcom/batch/android/g0/d$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/g0/c;",
            ">;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$b;",
            "Lcom/batch/android/g0/d$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    iput-object p3, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    iput-object p4, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    iput-object p5, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/f;Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;ILjava/lang/Object;)Lcom/batch/android/g0/f;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/batch/android/g0/f;->a(Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;)Lcom/batch/android/g0/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;)Lcom/batch/android/g0/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/g0/c;",
            ">;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$b;",
            "Lcom/batch/android/g0/d$a;",
            ")",
            "Lcom/batch/android/g0/f;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/f;

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/g0/f;-><init>(Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;)V

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final c()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final d()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public final e()Lcom/batch/android/g0/d$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/f;

    iget-object v1, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    iget-object v3, p1, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    iget-object p1, p1, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final g()Lcom/batch/android/g0/d$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    invoke-virtual {v1}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/g0/d$a;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final j()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RootContainer(children="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/f;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/f;->c:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/f;->d:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/f;->e:Lcom/batch/android/g0/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", border="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/g0/f;->f:Lcom/batch/android/g0/d$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
