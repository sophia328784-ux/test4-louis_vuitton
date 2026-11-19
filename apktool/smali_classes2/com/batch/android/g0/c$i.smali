.class public final Lcom/batch/android/g0/c$i;
.super Lcom/batch/android/g0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/g0/c$f;
.implements Lcom/batch/android/g0/c$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/batch/android/g0/d$h;

.field private final e:Lcom/batch/android/g0/d$f;

.field private final f:Lcom/batch/android/g0/d$e;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$e;",
            "Ljava/util/Set<",
            "+",
            "Lcom/batch/android/g0/d$c;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->b:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    iput-object p3, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    iput-object p4, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    iput-object p5, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    iput p6, p0, Lcom/batch/android/g0/c$i;->h:I

    iput p7, p0, Lcom/batch/android/g0/c$i;->i:I

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$i;Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;IIILjava/lang/Object;)Lcom/batch/android/g0/c$i;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget p6, p0, Lcom/batch/android/g0/c$i;->h:I

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget p7, p0, Lcom/batch/android/g0/c$i;->i:I

    :cond_6
    move p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/batch/android/g0/c$i;->a(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)Lcom/batch/android/g0/c$i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->a(Lcom/batch/android/g0/c$f;)I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)Lcom/batch/android/g0/c$i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$e;",
            "Ljava/util/Set<",
            "+",
            "Lcom/batch/android/g0/d$c;",
            ">;II)",
            "Lcom/batch/android/g0/c$i;"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$i;

    invoke-direct/range {p0 .. p7}, Lcom/batch/android/g0/c$i;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V

    return-object p0
.end method

.method public b()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->c(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->f(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->e(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->b(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$i;

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    iget-object v3, p1, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/batch/android/g0/c$i;->h:I

    iget v3, p1, Lcom/batch/android/g0/c$i;->h:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/batch/android/g0/c$i;->i:I

    iget p1, p1, Lcom/batch/android/g0/c$i;->i:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public g()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->d(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public h()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v2}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/batch/android/g0/c$i;->h:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/batch/android/g0/c$i;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$b$a;->a(Lcom/batch/android/g0/c$b;)Z

    move-result p0

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final m()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final n()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final o()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    return-object p0
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$i;->h:I

    return p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$i;->i:I

    return p0
.end method

.method public final r()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$i;->h:I

    return p0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontDecorations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$i;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/g0/c$i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/batch/android/g0/c$i;->i:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final v()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$i;->i:I

    return p0
.end method

.method public final w()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$i;->f:Lcom/batch/android/g0/d$e;

    return-object p0
.end method
