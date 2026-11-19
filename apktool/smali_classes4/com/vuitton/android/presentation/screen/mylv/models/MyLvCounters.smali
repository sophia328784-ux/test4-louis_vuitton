.class public final Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;",
        "",
        "",
        "repairsCounter",
        "ordersCounter",
        "certificatesCounter",
        "exclusiveOfferCounter",
        "appointmentsCounter",
        "experiencesCounter",
        "<init>",
        "(IIIIII)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 42
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    .line 37
    iput p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    .line 38
    iput p3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    .line 39
    iput p4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    .line 40
    iput p5, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    .line 41
    iput p6, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;-><init>(IIIIII)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget p4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    :cond_3
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget p5, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    :cond_4
    move v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    iget p6, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    :cond_5
    move v6, p6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;-><init>(IIIIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", ordersCounter="

    const-string v1, ", certificatesCounter="

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    const-string v4, "MyLvCounters(repairsCounter="

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exclusiveOfferCounter="

    const-string v2, ", appointmentsCounter="

    iget v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    iget v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    invoke-static {v3, v4, v1, v2, v0}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", experiencesCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
