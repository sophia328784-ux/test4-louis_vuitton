.class public final Lcom/batch/android/g0/c$d;
.super Lcom/batch/android/g0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/g0/c$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final c:I

.field private final d:Lcom/batch/android/g0/d$h;

.field private final e:Lcom/batch/android/g0/d$g;

.field private final f:Lcom/batch/android/g0/d$e;

.field private final g:Lcom/batch/android/g0/d$f;


# direct methods
.method public constructor <init>(ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->e:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/batch/android/g0/c$d;->c:I

    iput-object p2, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    iput-object p3, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    iput-object p4, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    iput-object p5, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$d;ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;ILjava/lang/Object;)Lcom/batch/android/g0/c$d;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/batch/android/g0/c$d;->c:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/batch/android/g0/c$d;->a(ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;)Lcom/batch/android/g0/c$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;)Lcom/batch/android/g0/c$d;
    .locals 0

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$d;

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/g0/c$d;-><init>(ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$d;

    iget v1, p0, Lcom/batch/android/g0/c$d;->c:I

    iget v3, p1, Lcom/batch/android/g0/c$d;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    iget-object v3, p1, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    iget-object v3, p1, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    iget-object p1, p1, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/batch/android/g0/c$d;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v1}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    invoke-virtual {p0}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$b$a;->a(Lcom/batch/android/g0/c$b;)Z

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$d;->c:I

    return p0
.end method

.method public final l()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final m()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public final n()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final o()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final p()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final q()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final r()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$d;->c:I

    return p0
.end method

.method public final t()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Divider(thickness="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/batch/android/g0/c$d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$d;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$d;->e:Lcom/batch/android/g0/d$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$d;->f:Lcom/batch/android/g0/d$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/g0/c$d;->g:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
