.class public final Lcom/google/android/exoplayer2/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/Cue$Builder;,
        Lcom/google/android/exoplayer2/text/Cue$VerticalType;,
        Lcom/google/android/exoplayer2/text/Cue$TextSizeType;,
        Lcom/google/android/exoplayer2/text/Cue$LineType;,
        Lcom/google/android/exoplayer2/text/Cue$AnchorType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Ljava/lang/CharSequence;

.field public final c:F

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:I

.field public final h:F

.field public final i:F

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->a()Lcom/google/android/exoplayer2/text/Cue;

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

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;FIIFIIFFFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue;->c:F

    iput p3, p0, Lcom/google/android/exoplayer2/text/Cue;->d:I

    iput p4, p0, Lcom/google/android/exoplayer2/text/Cue;->e:I

    iput p5, p0, Lcom/google/android/exoplayer2/text/Cue;->f:F

    iput p6, p0, Lcom/google/android/exoplayer2/text/Cue;->g:I

    iput p9, p0, Lcom/google/android/exoplayer2/text/Cue;->h:F

    iput p10, p0, Lcom/google/android/exoplayer2/text/Cue;->i:F

    iput p11, p0, Lcom/google/android/exoplayer2/text/Cue;->j:I

    iput p7, p0, Lcom/google/android/exoplayer2/text/Cue;->k:I

    iput p8, p0, Lcom/google/android/exoplayer2/text/Cue;->l:F

    iput p12, p0, Lcom/google/android/exoplayer2/text/Cue;->m:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->c:F

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->b:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->d:I

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->e:I

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->f:F

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->e:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->g:I

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->k:I

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->l:F

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->h:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->h:F

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->i:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->i:F

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->j:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->j:I

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->k:I

    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue;->m:I

    iput p0, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->l:I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class v1, Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/text/Cue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->c:F

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->d:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->d:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->e:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->e:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->f:F

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->g:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->g:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->h:F

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->h:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->i:F

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->i:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->j:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->j:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->k:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->k:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->l:F

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->l:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue;->m:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->m:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
