.class public final Lcom/batch/android/g0/c$c;
.super Lcom/batch/android/g0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final c:[F

.field private final d:I

.field private final e:Lcom/batch/android/g0/d$f;

.field private final f:Lcom/batch/android/g0/d$i;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$i;",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/g0/c$b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->f:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/batch/android/g0/c$c;->c:[F

    iput p2, p0, Lcom/batch/android/g0/c$c;->d:I

    iput-object p3, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    iput-object p4, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    iput-object p5, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p0

    array-length p2, p1

    if-ne p0, p2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    array-length p2, p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    aget p5, p1, p4

    add-float/2addr p3, p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const-string p0, "Sum of ratio must be 1 or 100"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "Number of ratios must match the number of children"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$c;[FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;ILjava/lang/Object;)Lcom/batch/android/g0/c$c;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/c$c;->c:[F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/batch/android/g0/c$c;->d:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/batch/android/g0/c$c;->a([FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;)Lcom/batch/android/g0/c$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;)Lcom/batch/android/g0/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$i;",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/g0/c$b;",
            ">;)",
            "Lcom/batch/android/g0/c$c;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$c;

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/g0/c$c;-><init>([FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/batch/android/g0/c$c;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/batch/android/g0/c$c;

    iget-object v1, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/c$c;->c:[F

    iget-object v3, p1, Lcom/batch/android/g0/c$c;->c:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/batch/android/g0/c$c;->d:I

    iget v3, p1, Lcom/batch/android/g0/c$c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    iget-object p1, p1, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/c$c;->c:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/batch/android/g0/c$c;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final k()[F
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->c:[F

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$c;->d:I

    return p0
.end method

.method public final m()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final n()Lcom/batch/android/g0/d$i;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    return-object p0
.end method

.method public final p()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    return-object p0
.end method

.method public final q()Lcom/batch/android/g0/d$i;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    return-object p0
.end method

.method public final r()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final s()[F
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->c:[F

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$c;->d:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Columns(ratios="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/c$c;->c:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/g0/c$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$c;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$c;->f:Lcom/batch/android/g0/d$i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->m(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 3

    iget-object p0, p0, Lcom/batch/android/g0/c$c;->g:Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/g0/c$b;

    instance-of v2, v0, Lcom/batch/android/g0/c$g;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/batch/android/g0/c$g;

    invoke-virtual {v2}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$g;->f()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    instance-of v2, v0, Lcom/batch/android/g0/c$h;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/batch/android/g0/c$h;

    invoke-virtual {v0}, Lcom/batch/android/g0/c$h;->l()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method
