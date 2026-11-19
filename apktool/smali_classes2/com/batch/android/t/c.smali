.class public final Lcom/batch/android/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/t/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/t/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/batch/android/t/c;->a:I

    iput p2, p0, Lcom/batch/android/t/c;->b:I

    iput p3, p0, Lcom/batch/android/t/c;->c:I

    iput p4, p0, Lcom/batch/android/t/c;->d:I

    iput-object p5, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/t/c;IIIILjava/util/List;ILjava/lang/Object;)Lcom/batch/android/t/c;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/batch/android/t/c;->a:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/batch/android/t/c;->b:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/batch/android/t/c;->c:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/batch/android/t/c;->d:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    :cond_4
    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/batch/android/t/c;->a(IIIILjava/util/List;)Lcom/batch/android/t/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/batch/android/t/c;->a:I

    return p0
.end method

.method public final a(IIIILjava/util/List;)Lcom/batch/android/t/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "+",
            "Lcom/batch/android/t/a;",
            ">;)",
            "Lcom/batch/android/t/c;"
        }
    .end annotation

    .line 41
    new-instance p0, Lcom/batch/android/t/c;

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/t/c;-><init>(IIIILjava/util/List;)V

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->b:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->d:I

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/t/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/t/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/t/c;

    iget v1, p0, Lcom/batch/android/t/c;->a:I

    iget v3, p1, Lcom/batch/android/t/c;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/batch/android/t/c;->b:I

    iget v3, p1, Lcom/batch/android/t/c;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/batch/android/t/c;->c:I

    iget v3, p1, Lcom/batch/android/t/c;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/batch/android/t/c;->d:I

    iget v3, p1, Lcom/batch/android/t/c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/batch/android/t/c;->e:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/t/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->c:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->d:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/batch/android/t/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/batch/android/t/c;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/batch/android/t/c;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/batch/android/t/c;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->a:I

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/c;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuietHours(startHour="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/batch/android/t/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/t/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/t/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/t/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", daysOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/t/c;->e:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->m(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
