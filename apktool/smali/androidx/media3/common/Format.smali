.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Format$Builder;,
        Landroidx/media3/common/Format$CueReplacementBehavior;
    }
.end annotation


# static fields
.field public static final A0:Ljava/lang/String;

.field public static final B0:Ljava/lang/String;

.field public static final C0:Ljava/lang/String;

.field public static final R:Landroidx/media3/common/Format;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field public static final U:Ljava/lang/String;

.field public static final V:Ljava/lang/String;

.field public static final W:Ljava/lang/String;

.field public static final X:Ljava/lang/String;

.field public static final Y:Ljava/lang/String;

.field public static final Z:Ljava/lang/String;

.field public static final a0:Ljava/lang/String;

.field public static final b0:Ljava/lang/String;

.field public static final c0:Ljava/lang/String;

.field public static final d0:Ljava/lang/String;

.field public static final e0:Ljava/lang/String;

.field public static final f0:Ljava/lang/String;

.field public static final g0:Ljava/lang/String;

.field public static final h0:Ljava/lang/String;

.field public static final i0:Ljava/lang/String;

.field public static final j0:Ljava/lang/String;

.field public static final k0:Ljava/lang/String;

.field public static final l0:Ljava/lang/String;

.field public static final m0:Ljava/lang/String;

.field public static final n0:Ljava/lang/String;

.field public static final o0:Ljava/lang/String;

.field public static final p0:Ljava/lang/String;

.field public static final q0:Ljava/lang/String;

.field public static final r0:Ljava/lang/String;

.field public static final s0:Ljava/lang/String;

.field public static final t0:Ljava/lang/String;

.field public static final u0:Ljava/lang/String;

.field public static final v0:Ljava/lang/String;

.field public static final w0:Ljava/lang/String;

.field public static final x0:Ljava/lang/String;

.field public static final y0:Ljava/lang/String;

.field public static final z0:Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:F

.field public final C:[B

.field public final D:I

.field public final E:Landroidx/media3/common/ColorInfo;

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public Q:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/common/collect/ImmutableList;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Landroidx/media3/common/Metadata;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:I

.field public final q:I

.field public final r:Ljava/util/List;

.field public final s:Landroidx/media3/common/DrmInitData;

.field public final t:J

.field public final u:Z

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    sput-object v1, Landroidx/media3/common/Format;->R:Landroidx/media3/common/Format;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->S:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->T:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->U:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->V:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->W:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->X:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->Y:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->Z:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->a0:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->b0:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->c0:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->d0:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->e0:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->f0:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->g0:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->h0:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->i0:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->j0:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->k0:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->l0:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->m0:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->n0:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->o0:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->p0:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->q0:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->r0:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->s0:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->t0:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->u0:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->v0:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->w0:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->x0:Ljava/lang/String;

    const/16 v0, 0x21

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->y0:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->z0:Ljava/lang/String;

    const/16 v0, 0x23

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->A0:Ljava/lang/String;

    invoke-static {v1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->B0:Ljava/lang/String;

    const/16 v0, 0x25

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->C0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/common/Label;

    iget-object v4, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v1, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Label;

    iget-object v6, v5, Landroidx/media3/common/Label;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v5, Landroidx/media3/common/Label;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Label;

    iget-object v0, v0, Landroidx/media3/common/Label;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    :goto_1
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_2
    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Label;

    iget-object v1, v1, Landroidx/media3/common/Label;->b:Ljava/lang/String;

    iget-object v4, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    :goto_4
    iget v0, p1, Landroidx/media3/common/Format$Builder;->e:I

    iput v0, p0, Landroidx/media3/common/Format;->e:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->g:I

    if-eqz v0, :cond_8

    iget v0, p1, Landroidx/media3/common/Format$Builder;->f:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v2

    :goto_6
    const-string v1, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget v0, p1, Landroidx/media3/common/Format$Builder;->f:I

    iput v0, p0, Landroidx/media3/common/Format;->f:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->g:I

    iput v0, p0, Landroidx/media3/common/Format;->g:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->h:I

    iput v0, p0, Landroidx/media3/common/Format;->h:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->i:I

    iput v1, p0, Landroidx/media3/common/Format;->i:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    move v0, v1

    :cond_9
    iput v0, p0, Landroidx/media3/common/Format;->j:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/Format$Builder;->o:I

    iput v0, p0, Landroidx/media3/common/Format;->p:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->p:I

    iput v0, p0, Landroidx/media3/common/Format;->q:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    if-nez v0, :cond_a

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_a
    iput-object v0, p0, Landroidx/media3/common/Format;->r:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    iget-wide v5, p1, Landroidx/media3/common/Format$Builder;->s:J

    iput-wide v5, p0, Landroidx/media3/common/Format;->t:J

    iget-boolean v1, p1, Landroidx/media3/common/Format$Builder;->t:Z

    iput-boolean v1, p0, Landroidx/media3/common/Format;->u:Z

    iget v1, p1, Landroidx/media3/common/Format$Builder;->u:I

    iput v1, p0, Landroidx/media3/common/Format;->v:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->v:I

    iput v1, p0, Landroidx/media3/common/Format;->w:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->w:I

    iput v1, p0, Landroidx/media3/common/Format;->x:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->x:I

    iput v1, p0, Landroidx/media3/common/Format;->y:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->y:F

    iput v1, p0, Landroidx/media3/common/Format;->z:F

    iget v1, p1, Landroidx/media3/common/Format$Builder;->z:I

    if-ne v1, v4, :cond_b

    move v1, v3

    :cond_b
    iput v1, p0, Landroidx/media3/common/Format;->A:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->A:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v1, v5

    if-nez v5, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_c
    iput v1, p0, Landroidx/media3/common/Format;->B:F

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->B:[B

    iput-object v1, p0, Landroidx/media3/common/Format;->C:[B

    iget v1, p1, Landroidx/media3/common/Format$Builder;->C:I

    iput v1, p0, Landroidx/media3/common/Format;->D:I

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    iput-object v1, p0, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iget v1, p1, Landroidx/media3/common/Format$Builder;->E:I

    iput v1, p0, Landroidx/media3/common/Format;->F:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->F:I

    iput v1, p0, Landroidx/media3/common/Format;->G:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->G:I

    iput v1, p0, Landroidx/media3/common/Format;->H:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->H:I

    iput v1, p0, Landroidx/media3/common/Format;->I:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->I:I

    if-ne v1, v4, :cond_d

    move v1, v3

    :cond_d
    iput v1, p0, Landroidx/media3/common/Format;->J:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->J:I

    if-ne v1, v4, :cond_e

    goto :goto_7

    :cond_e
    move v3, v1

    :goto_7
    iput v3, p0, Landroidx/media3/common/Format;->K:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->K:I

    iput v1, p0, Landroidx/media3/common/Format;->L:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->L:I

    iput v1, p0, Landroidx/media3/common/Format;->M:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->M:I

    iput v1, p0, Landroidx/media3/common/Format;->N:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->N:I

    iput v1, p0, Landroidx/media3/common/Format;->O:I

    iget p1, p1, Landroidx/media3/common/Format$Builder;->O:I

    if-nez p1, :cond_f

    if-eqz v0, :cond_f

    iput v2, p0, Landroidx/media3/common/Format;->P:I

    return-void

    :cond_f
    iput p1, p0, Landroidx/media3/common/Format;->P:I

    return-void
.end method

.method public static c(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    iget v1, v0, Landroidx/media3/common/Format;->e:I

    iget-object v2, v0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v3, v0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget v4, v0, Landroidx/media3/common/Format;->H:I

    iget v5, v0, Landroidx/media3/common/Format;->G:I

    iget v6, v0, Landroidx/media3/common/Format;->F:I

    iget v7, v0, Landroidx/media3/common/Format;->z:F

    iget-object v8, v0, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iget v9, v0, Landroidx/media3/common/Format;->B:F

    iget v10, v0, Landroidx/media3/common/Format;->y:I

    iget v11, v0, Landroidx/media3/common/Format;->x:I

    iget v12, v0, Landroidx/media3/common/Format;->w:I

    iget v13, v0, Landroidx/media3/common/Format;->v:I

    iget-object v14, v0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    iget-object v15, v0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    move/from16 v16, v1

    iget v1, v0, Landroidx/media3/common/Format;->j:I

    move-object/from16 v17, v2

    iget-object v2, v0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    move/from16 v19, v4

    iget v4, v0, Landroidx/media3/common/Format;->f:I

    move/from16 v20, v4

    new-instance v4, Lcom/google/common/base/Joiner;

    const/16 v21, 0x2c

    move/from16 v22, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    const-string v5, "id="

    invoke-static {v5}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v21, v6

    iget-object v6, v0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v6, ", container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, ", primaryGroupId="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v3, ", bitrate="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v15, :cond_4

    const-string v1, ", codecs="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v14, :cond_b

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget v6, v14, Landroidx/media3/common/DrmInitData;->e:I

    if-ge v3, v6, :cond_a

    iget-object v6, v14, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    sget-object v15, Landroidx/media3/common/C;->c:Ljava/util/UUID;

    invoke-virtual {v6, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v6, "cenc"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v15, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    invoke-virtual {v6, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v6, "clearkey"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v15, Landroidx/media3/common/C;->f:Ljava/util/UUID;

    invoke-virtual {v6, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v6, "playready"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-object v15, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {v6, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v6, "widevine"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v15, Landroidx/media3/common/C;->b:Ljava/util/UUID;

    invoke-virtual {v6, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v6, "universal"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "unknown ("

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_a
    const-string v2, ", drm=["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    const/16 v1, 0x5d

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "x"

    const/4 v2, -0x1

    if-eq v13, v2, :cond_c

    if-eq v12, v2, :cond_c

    const-string v3, ", res="

    invoke-static {v13, v12, v3, v1, v5}, Ltr;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_c
    if-eq v11, v2, :cond_d

    if-eq v10, v2, :cond_d

    const-string v2, ", decRes="

    invoke-static {v11, v10, v2, v1, v5}, Ltr;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_d
    float-to-double v1, v9

    sget v3, Lcom/google/common/math/DoubleMath;->a:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v12, v1, v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v12, v14

    if-lez v3, :cond_f

    cmpl-double v3, v1, v10

    if-eqz v3, :cond_f

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2

    :cond_e
    const-string v1, ", par="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.3f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_2
    if-eqz v8, :cond_13

    iget v1, v8, Landroidx/media3/common/ColorInfo;->f:I

    iget v2, v8, Landroidx/media3/common/ColorInfo;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    if-eq v1, v3, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_3
    const-string v3, ", color="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo;->d()Z

    move-result v3

    const-string v6, "/"

    if-eqz v3, :cond_11

    iget v3, v8, Landroidx/media3/common/ColorInfo;->a:I

    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->b(I)Ljava/lang/String;

    move-result-object v3

    iget v9, v8, Landroidx/media3/common/ColorInfo;->b:I

    invoke-static {v9}, Landroidx/media3/common/ColorInfo;->a(I)Ljava/lang/String;

    move-result-object v9

    iget v8, v8, Landroidx/media3/common/ColorInfo;->c:I

    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->c(I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    const/4 v8, -0x1

    goto :goto_5

    :cond_11
    const-string v3, "NA/NA/NA"

    goto :goto_4

    :goto_5
    if-eq v2, v8, :cond_12

    if-eq v1, v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_12
    const-string v1, "NA/NA"

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_14

    const-string v1, ", fps="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_14
    move/from16 v1, v21

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const-string v3, ", maxSubLayers="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_15
    move/from16 v1, v22

    if-eq v1, v2, :cond_16

    const-string v3, ", channels="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_16
    move/from16 v1, v19

    if-eq v1, v2, :cond_17

    const-string v2, ", sample_rate="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_17
    if-eqz v18, :cond_18

    const-string v1, ", language="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "]"

    if-nez v1, :cond_19

    const-string v1, ", labels=["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Luh;

    invoke-direct {v1, v2}, Luh;-><init>(I)V

    move-object/from16 v6, v17

    invoke-static {v1, v6}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/4 v1, 0x2

    if-eqz v16, :cond_1d

    const-string v6, ", selectionFlags=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v7, v16, 0x4

    if-eqz v7, :cond_1a

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    and-int/lit8 v7, v16, 0x1

    if-eqz v7, :cond_1b

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    and-int/lit8 v7, v16, 0x2

    if-eqz v7, :cond_1c

    const-string v7, "forced"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const v6, 0x8000

    if-eqz v20, :cond_2e

    const-string v7, ", roleFlags=["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v8, v20, 0x1

    if-eqz v8, :cond_1e

    const-string v8, "main"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    and-int/lit8 v8, v20, 0x2

    if-eqz v8, :cond_1f

    const-string v8, "alt"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    and-int/lit8 v8, v20, 0x4

    if-eqz v8, :cond_20

    const-string v8, "supplementary"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v8, v20, 0x8

    if-eqz v8, :cond_21

    const-string v8, "commentary"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v8, v20, 0x10

    if-eqz v8, :cond_22

    const-string v8, "dub"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v8, v20, 0x20

    if-eqz v8, :cond_23

    const-string v8, "emergency"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v8, v20, 0x40

    if-eqz v8, :cond_24

    const-string v8, "caption"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    move/from16 v8, v20

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_25

    const-string v9, "subtitle"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit16 v9, v8, 0x100

    if-eqz v9, :cond_26

    const-string v9, "sign"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v9, v8, 0x200

    if-eqz v9, :cond_27

    const-string v9, "describes-video"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v9, v8, 0x400

    if-eqz v9, :cond_28

    const-string v9, "describes-music"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v9, v8, 0x800

    if-eqz v9, :cond_29

    const-string v9, "enhanced-intelligibility"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v9, v8, 0x1000

    if-eqz v9, :cond_2a

    const-string v9, "transcribes-dialog"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v9, v8, 0x2000

    if-eqz v9, :cond_2b

    const-string v9, "easy-read"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v9, v8, 0x4000

    if-eqz v9, :cond_2c

    const-string v9, "trick-play"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int v9, v8, v6

    if-eqz v9, :cond_2d

    const-string v9, "auxiliary"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_2e
    move/from16 v8, v20

    :goto_7
    and-int v3, v8, v6

    if-eqz v3, :cond_34

    const-string v3, ", auxiliaryTrackType="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/media3/common/Format;->g:I

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-eqz v0, :cond_33

    const/4 v3, 0x1

    if-eq v0, v3, :cond_32

    if-eq v0, v1, :cond_31

    if-eq v0, v2, :cond_30

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2f

    const-string v0, "depth metadata"

    goto :goto_8

    :cond_2f
    const-string v0, "Unsupported auxiliary track type"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_30
    const-string v0, "depth-inverse"

    goto :goto_8

    :cond_31
    const-string v0, "depth-linear"

    goto :goto_8

    :cond_32
    const-string v0, "original"

    goto :goto_8

    :cond_33
    const-string v0, "undefined"

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/media3/common/Format$Builder;
    .locals 3

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->e:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->e:I

    iget v1, p0, Landroidx/media3/common/Format;->f:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->f:I

    iget v1, p0, Landroidx/media3/common/Format;->h:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->h:I

    iget v1, p0, Landroidx/media3/common/Format;->i:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->i:I

    iget-object v1, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iget-object v1, p0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->p:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->o:I

    iget v1, p0, Landroidx/media3/common/Format;->q:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->p:I

    iget-object v1, p0, Landroidx/media3/common/Format;->r:Ljava/util/List;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iget-wide v1, p0, Landroidx/media3/common/Format;->t:J

    iput-wide v1, v0, Landroidx/media3/common/Format$Builder;->s:J

    iget-boolean v1, p0, Landroidx/media3/common/Format;->u:Z

    iput-boolean v1, v0, Landroidx/media3/common/Format$Builder;->t:Z

    iget v1, p0, Landroidx/media3/common/Format;->v:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->u:I

    iget v1, p0, Landroidx/media3/common/Format;->w:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->v:I

    iget v1, p0, Landroidx/media3/common/Format;->x:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->w:I

    iget v1, p0, Landroidx/media3/common/Format;->y:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->x:I

    iget v1, p0, Landroidx/media3/common/Format;->z:F

    iput v1, v0, Landroidx/media3/common/Format$Builder;->y:F

    iget v1, p0, Landroidx/media3/common/Format;->A:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->z:I

    iget v1, p0, Landroidx/media3/common/Format;->B:F

    iput v1, v0, Landroidx/media3/common/Format$Builder;->A:F

    iget-object v1, p0, Landroidx/media3/common/Format;->C:[B

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->B:[B

    iget v1, p0, Landroidx/media3/common/Format;->D:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->C:I

    iget-object v1, p0, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    iget v1, p0, Landroidx/media3/common/Format;->F:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->E:I

    iget v1, p0, Landroidx/media3/common/Format;->G:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->F:I

    iget v1, p0, Landroidx/media3/common/Format;->H:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->G:I

    iget v1, p0, Landroidx/media3/common/Format;->I:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->H:I

    iget v1, p0, Landroidx/media3/common/Format;->J:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->I:I

    iget v1, p0, Landroidx/media3/common/Format;->K:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->J:I

    iget v1, p0, Landroidx/media3/common/Format;->L:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->K:I

    iget v1, p0, Landroidx/media3/common/Format;->M:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->L:I

    iget v1, p0, Landroidx/media3/common/Format;->N:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->M:I

    iget v1, p0, Landroidx/media3/common/Format;->O:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->N:I

    iget p0, p0, Landroidx/media3/common/Format;->P:I

    iput p0, v0, Landroidx/media3/common/Format$Builder;->O:I

    return-object v0
.end method

.method public final b(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/common/Format;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final d(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iget v5, v1, Landroidx/media3/common/Format;->N:I

    iget v6, v1, Landroidx/media3/common/Format;->O:I

    iget-object v7, v1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eq v2, v8, :cond_3

    if-ne v2, v9, :cond_4

    :cond_3
    iget-object v8, v1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    :goto_2
    const/4 v10, -0x1

    iget v11, v0, Landroidx/media3/common/Format;->h:I

    if-ne v11, v10, :cond_5

    iget v11, v1, Landroidx/media3/common/Format;->h:I

    :cond_5
    iget v12, v0, Landroidx/media3/common/Format;->i:I

    if-ne v12, v10, :cond_6

    iget v12, v1, Landroidx/media3/common/Format;->i:I

    :cond_6
    iget-object v10, v0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    if-nez v10, :cond_7

    iget-object v13, v1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v2, v13}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/common/util/Util;->c0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v9, :cond_7

    move-object v10, v13

    :cond_7
    iget-object v9, v0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    iget-object v9, v1, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    :goto_3
    iget-object v13, v1, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iget-object v14, v0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v14, v13}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v13

    :goto_4
    const/high16 v14, -0x40800000    # -1.0f

    iget v15, v0, Landroidx/media3/common/Format;->z:F

    cmpl-float v14, v15, v14

    if-nez v14, :cond_a

    const/4 v14, 0x2

    if-ne v2, v14, :cond_a

    iget v15, v1, Landroidx/media3/common/Format;->z:F

    :cond_a
    iget v2, v0, Landroidx/media3/common/Format;->e:I

    iget v14, v1, Landroidx/media3/common/Format;->e:I

    or-int/2addr v2, v14

    iget v14, v0, Landroidx/media3/common/Format;->f:I

    move-object/from16 v16, v4

    iget v4, v1, Landroidx/media3/common/Format;->f:I

    or-int/2addr v4, v14

    iget-object v1, v1, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v6

    if-eqz v1, :cond_d

    iget-object v6, v1, Landroidx/media3/common/DrmInitData;->d:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    move-object/from16 p1, v6

    array-length v6, v1

    move-object/from16 v20, v1

    move/from16 v1, v17

    :goto_5
    if-ge v1, v6, :cond_c

    move/from16 v21, v1

    aget-object v1, v20, v21

    move/from16 v22, v6

    iget-object v6, v1, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    if-eqz v6, :cond_b

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v21, 0x1

    move/from16 v6, v22

    goto :goto_5

    :cond_c
    move-object/from16 v6, p1

    goto :goto_6

    :cond_d
    move-object/from16 v6, v18

    :goto_6
    iget-object v1, v0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    if-eqz v1, :cond_13

    if-nez v6, :cond_e

    iget-object v6, v1, Landroidx/media3/common/DrmInitData;->d:Ljava/lang/String;

    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v1, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    move-object/from16 p1, v6

    array-length v6, v1

    move-object/from16 v20, v1

    move/from16 v1, v17

    :goto_7
    if-ge v1, v6, :cond_12

    move/from16 v21, v1

    aget-object v1, v20, v21

    move/from16 v22, v6

    iget-object v6, v1, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    if-eqz v6, :cond_11

    iget-object v6, v1, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    move/from16 v23, v5

    move/from16 v5, v17

    :goto_8
    if-ge v5, v0, :cond_10

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v0

    move-object/from16 v0, v24

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v0, v0, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    invoke-virtual {v0, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v25

    goto :goto_8

    :cond_10
    move/from16 v25, v0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    move/from16 v25, v0

    move/from16 v23, v5

    :goto_9
    add-int/lit8 v1, v21, 0x1

    move/from16 v6, v22

    move/from16 v5, v23

    move/from16 v0, v25

    goto :goto_7

    :cond_12
    move-object/from16 v6, p1

    :cond_13
    move/from16 v23, v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object/from16 v0, v18

    goto :goto_a

    :cond_14
    new-instance v0, Landroidx/media3/common/DrmInitData;

    invoke-direct {v0, v6, v14}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iput-object v7, v1, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v8, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput v2, v1, Landroidx/media3/common/Format$Builder;->e:I

    iput v4, v1, Landroidx/media3/common/Format$Builder;->f:I

    iput v11, v1, Landroidx/media3/common/Format$Builder;->h:I

    iput v12, v1, Landroidx/media3/common/Format$Builder;->i:I

    iput-object v10, v1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput-object v13, v1, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iput-object v9, v1, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iput v15, v1, Landroidx/media3/common/Format$Builder;->y:F

    move/from16 v0, v23

    iput v0, v1, Landroidx/media3/common/Format$Builder;->M:I

    move/from16 v0, v19

    iput v0, v1, Landroidx/media3/common/Format$Builder;->N:I

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const-class v1, Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    iget v1, p0, Landroidx/media3/common/Format;->Q:I

    if-eqz v1, :cond_2

    iget v2, p1, Landroidx/media3/common/Format;->Q:I

    if-eqz v2, :cond_2

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Landroidx/media3/common/Format;->e:I

    iget v2, p1, Landroidx/media3/common/Format;->e:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->f:I

    iget v2, p1, Landroidx/media3/common/Format;->f:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->g:I

    iget v2, p1, Landroidx/media3/common/Format;->g:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->h:I

    iget v2, p1, Landroidx/media3/common/Format;->h:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->i:I

    iget v2, p1, Landroidx/media3/common/Format;->i:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->p:I

    iget v2, p1, Landroidx/media3/common/Format;->p:I

    if-ne v1, v2, :cond_3

    iget-wide v1, p0, Landroidx/media3/common/Format;->t:J

    iget-wide v3, p1, Landroidx/media3/common/Format;->t:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->v:I

    iget v2, p1, Landroidx/media3/common/Format;->v:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->w:I

    iget v2, p1, Landroidx/media3/common/Format;->w:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->x:I

    iget v2, p1, Landroidx/media3/common/Format;->x:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->y:I

    iget v2, p1, Landroidx/media3/common/Format;->y:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->A:I

    iget v2, p1, Landroidx/media3/common/Format;->A:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->D:I

    iget v2, p1, Landroidx/media3/common/Format;->D:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->F:I

    iget v2, p1, Landroidx/media3/common/Format;->F:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->G:I

    iget v2, p1, Landroidx/media3/common/Format;->G:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->H:I

    iget v2, p1, Landroidx/media3/common/Format;->H:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->I:I

    iget v2, p1, Landroidx/media3/common/Format;->I:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->J:I

    iget v2, p1, Landroidx/media3/common/Format;->J:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->K:I

    iget v2, p1, Landroidx/media3/common/Format;->K:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->L:I

    iget v2, p1, Landroidx/media3/common/Format;->L:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->N:I

    iget v2, p1, Landroidx/media3/common/Format;->N:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->O:I

    iget v2, p1, Landroidx/media3/common/Format;->O:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->P:I

    iget v2, p1, Landroidx/media3/common/Format;->P:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->z:F

    iget v2, p1, Landroidx/media3/common/Format;->z:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->B:F

    iget v2, p1, Landroidx/media3/common/Format;->B:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->C:[B

    iget-object v2, p1, Landroidx/media3/common/Format;->C:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iget-object v2, p1, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iget-object v2, p1, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    iget-object v2, p1, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->b(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroidx/media3/common/Format;->Q:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->e:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->f:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->g:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->h:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->i:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v2, p0, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->p:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Format;->t:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->v:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->w:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->x:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->y:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->z:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->B:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->D:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->F:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->G:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->H:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->I:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->J:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->K:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->L:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->N:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->O:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->P:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/Format;->Q:I

    :cond_8
    iget p0, p0, Landroidx/media3/common/Format;->Q:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->G:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/Format;->H:I

    const-string v1, "])"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
