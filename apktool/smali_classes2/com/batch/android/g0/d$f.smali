.class public final Lcom/batch/android/g0/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, v0, v1, v0}, Lcom/batch/android/g0/d$f;-><init>([IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/batch/android/g0/d$f$a;

    invoke-direct {v0, p1}, Lcom/batch/android/g0/d$f$a;-><init>(I)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->l(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->w(Lkotlin/sequences/ConstrainedOnceSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->x0(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$f;-><init>([I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    filled-new-array {p1, p2, p1, p2}, [I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$f;-><init>([I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 29
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$f;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/g0/d$f;->b:[I

    return-void
.end method

.method public synthetic constructor <init>([IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 26
    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p2, p1, p2

    aput p2, p1, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    const/4 p3, 0x3

    aput p2, p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$f;-><init>([I)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/d$f;[IILjava/lang/Object;)Lcom/batch/android/g0/d$f;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/d$f;->b:[I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/g0/d$f;->a([I)Lcom/batch/android/g0/d$f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([I)Lcom/batch/android/g0/d$f;
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/d$f;

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$f;-><init>([I)V

    return-object p0
.end method

.method public final a()[I
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    return-object p0
.end method

.method public final b()F
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public final c()F
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public final d()Z
    .locals 4

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final e()F
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/batch/android/g0/d$f;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/batch/android/g0/d$f;

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    iget-object p1, p1, Lcom/batch/android/g0/d$f;->b:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public final f()F
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public final g()[I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Margin(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/g0/d$f;->b:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
