.class public final Lcom/batch/android/g0/c$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g0/c$g$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/batch/android/g0/d$g;

.field private final e:Lcom/batch/android/g0/d$f;

.field private final f:Lcom/batch/android/g0/c$g$a;

.field private final g:Lcom/batch/android/g0/d$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->d:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    iput-object p3, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    iput-object p4, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    iput-object p5, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;ILjava/lang/Object;)Lcom/batch/android/g0/c$g;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/batch/android/g0/c$g;->a(Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;)Lcom/batch/android/g0/c$g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;)Lcom/batch/android/g0/c$g;
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$g;

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/g0/c$g;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$g;

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    iget-object v3, p1, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    iget-object v3, p1, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    iget-object p1, p1, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    invoke-virtual {v1}, Lcom/batch/android/g0/d$g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    invoke-virtual {p0}, Lcom/batch/android/g0/d$b;->hashCode()I

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

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public final m()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final n()Lcom/batch/android/g0/c$g$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    return-object p0
.end method

.method public final o()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public final p()Lcom/batch/android/g0/c$g$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    return-object p0
.end method

.method public final q()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final s()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final t()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->d:Lcom/batch/android/g0/d$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->e:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$g;->f:Lcom/batch/android/g0/c$g$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/g0/c$g;->g:Lcom/batch/android/g0/d$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
