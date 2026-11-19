.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Format$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/List;

.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:F

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/4 v0, 0x7

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/16 v0, 0x11

    const/16 v1, 0x12

    const/16 v2, 0xe

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/16 v0, 0x16

    const/16 v1, 0x17

    const/16 v2, 0x13

    const/16 v3, 0x14

    const/16 v4, 0x15

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/16 v0, 0x1b

    const/16 v1, 0x1c

    const/16 v2, 0x18

    const/16 v3, 0x19

    const/16 v4, 0x1a

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->d:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format$Builder;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->f:I

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format;->h:J

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/Format;->k:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/Format;->l:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->n:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->t:I

    if-eqz v3, :cond_2

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->t:I

    if-eqz v4, :cond_2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->b:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->c:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->c:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->f:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->f:I

    if-ne v3, v4, :cond_6

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Format;->h:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/Format;->h:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->i:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->i:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->m:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->n:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->n:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->p:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->p:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->q:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->q:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->r:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->r:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->s:I

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->s:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->k:F

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->k:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/google/android/exoplayer2/util/Util;->a:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    if-nez v0, :cond_1

    const/16 v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    const v1, 0xe1781

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Format;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->p:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    :cond_1
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format(null, null, null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", null, ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->k:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", null], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    const-string v1, "])"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
