.class public final Landroidx/media3/common/MediaMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaMetadata$Builder;,
        Landroidx/media3/common/MediaMetadata$PictureType;,
        Landroidx/media3/common/MediaMetadata$FolderType;,
        Landroidx/media3/common/MediaMetadata$MediaType;
    }
.end annotation


# static fields
.field public static final L:Landroidx/media3/common/MediaMetadata;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

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


# instance fields
.field public final A:Ljava/lang/CharSequence;

.field public final B:Ljava/lang/CharSequence;

.field public final C:Ljava/lang/CharSequence;

.field public final D:Ljava/lang/Integer;

.field public final E:Ljava/lang/Integer;

.field public final F:Ljava/lang/CharSequence;

.field public final G:Ljava/lang/CharSequence;

.field public final H:Ljava/lang/CharSequence;

.field public final I:Ljava/lang/Integer;

.field public final J:Landroid/os/Bundle;

.field public final K:Lcom/google/common/collect/ImmutableList;

.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Ljava/lang/Long;

.field public final i:Landroidx/media3/common/Rating;

.field public final j:Landroidx/media3/common/Rating;

.field public final k:[B

.field public l:Landroidx/media3/common/BundleableByteArray;

.field public final m:Ljava/lang/Integer;

.field public final n:Landroid/net/Uri;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Integer;

.field public final r:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Boolean;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/Integer;

.field public final z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    sput-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->M:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->N:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->O:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->P:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->Q:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->R:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->S:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->T:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->U:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->V:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->W:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->X:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->Y:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->Z:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->a0:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->b0:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->c0:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->d0:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->e0:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->f0:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->g0:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->h0:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->i0:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->j0:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->k0:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->l0:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->m0:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->n0:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->o0:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->p0:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->q0:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->r0:Ljava/lang/String;

    const/16 v0, 0x21

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->s0:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->t0:Ljava/lang/String;

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->u0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    iget-object v2, p1, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v3, v5

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x2

    :goto_0
    :pswitch_6
    move v5, v3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const/16 v5, 0x14

    goto :goto_2

    :pswitch_7
    const/16 v5, 0x19

    goto :goto_2

    :pswitch_8
    const/16 v5, 0x18

    goto :goto_2

    :pswitch_9
    const/16 v5, 0x17

    goto :goto_2

    :pswitch_a
    const/16 v5, 0x16

    goto :goto_2

    :pswitch_b
    const/16 v5, 0x15

    :goto_2
    :pswitch_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    :goto_3
    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->h:Ljava/lang/Long;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->j:Landroidx/media3/common/Rating;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->k:[B

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->l:Landroidx/media3/common/BundleableByteArray;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->m:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->o:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->p:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    iput-object v1, p0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->t:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->u:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->v:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->w:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->x:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->y:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->z:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->A:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->B:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->C:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->D:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->E:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->F:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->G:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->J:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;
    .locals 7

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/MediaMetadata;->M:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->N:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->P:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->Q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->R:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->S:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->W:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->h0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->z:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->i0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->A:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->j0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->B:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->m0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->E:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->n0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->F:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->p0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->G:Ljava/lang/CharSequence;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->u0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->V:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/media3/common/MediaMetadata;->o0:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v3, 0x9

    if-lt p0, v3, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_8

    sget-object v1, Landroidx/media3/common/BundleableByteArray;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    instance-of v3, v1, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    if-eqz v3, :cond_2

    check-cast v1, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    iget-object p0, v1, Landroidx/media3/common/BundleableByteArray$InProcessBinder;->a:Landroidx/media3/common/BundleableByteArray;

    iget-object v4, p0, Landroidx/media3/common/BundleableByteArray;->a:[B

    goto :goto_3

    :cond_2
    sget-object v1, Landroidx/media3/common/BundleableByteArray;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/SharedMemory;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    move-object v4, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v3, v4

    :goto_1
    :try_start_2
    const-string v6, "Failed to read byte array from shared memory"

    invoke-static {v6, v5}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    :cond_4
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->a(Landroid/os/Bundle;)[B

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroidx/media3/common/MediaMetadata$Builder;->b([BLjava/lang/Integer;)V

    goto :goto_5

    :goto_4
    if-eqz v4, :cond_6

    invoke-static {v4}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    :cond_6
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    throw p0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/media3/common/MediaMetadata$Builder;->b([BLjava/lang/Integer;)V

    :cond_8
    :goto_5
    sget-object p0, Landroidx/media3/common/MediaMetadata;->T:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {p0}, Landroidx/media3/common/Rating;->a(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    :cond_9
    sget-object p0, Landroidx/media3/common/MediaMetadata;->U:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0}, Landroidx/media3/common/Rating;->a(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->j:Landroidx/media3/common/Rating;

    :cond_a
    sget-object p0, Landroidx/media3/common/MediaMetadata;->s0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->c(Ljava/lang/Long;)V

    :cond_b
    sget-object p0, Landroidx/media3/common/MediaMetadata;->X:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->o:Ljava/lang/Integer;

    :cond_c
    sget-object p0, Landroidx/media3/common/MediaMetadata;->Y:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->p:Ljava/lang/Integer;

    :cond_d
    sget-object p0, Landroidx/media3/common/MediaMetadata;->Z:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    :cond_e
    sget-object p0, Landroidx/media3/common/MediaMetadata;->r0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    :cond_f
    sget-object p0, Landroidx/media3/common/MediaMetadata;->a0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    :cond_10
    sget-object p0, Landroidx/media3/common/MediaMetadata;->b0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    :cond_11
    sget-object p0, Landroidx/media3/common/MediaMetadata;->c0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->u:Ljava/lang/Integer;

    :cond_12
    sget-object p0, Landroidx/media3/common/MediaMetadata;->d0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->v:Ljava/lang/Integer;

    :cond_13
    sget-object p0, Landroidx/media3/common/MediaMetadata;->e0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->w:Ljava/lang/Integer;

    :cond_14
    sget-object p0, Landroidx/media3/common/MediaMetadata;->f0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->x:Ljava/lang/Integer;

    :cond_15
    sget-object p0, Landroidx/media3/common/MediaMetadata;->g0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->y:Ljava/lang/Integer;

    :cond_16
    sget-object p0, Landroidx/media3/common/MediaMetadata;->k0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->C:Ljava/lang/Integer;

    :cond_17
    sget-object p0, Landroidx/media3/common/MediaMetadata;->l0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->D:Ljava/lang/Integer;

    :cond_18
    sget-object p0, Landroidx/media3/common/MediaMetadata;->q0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    :cond_19
    sget-object p0, Landroidx/media3/common/MediaMetadata;->t0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->J:Lcom/google/common/collect/ImmutableList;

    :cond_1a
    new-instance p0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p0, v0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->h:Ljava/lang/Long;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->j:Landroidx/media3/common/Rating;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->k:[B

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->l:Landroidx/media3/common/BundleableByteArray;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->m:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->o:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->p:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->u:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->v:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->w:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->x:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->y:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->z:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->A:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->B:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->C:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->D:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->E:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->F:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->G:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->J:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    return-object v0
.end method

.method public final c(I)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/MediaMetadata;->M:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->N:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/media3/common/MediaMetadata;->O:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    sget-object v2, Landroidx/media3/common/MediaMetadata;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    sget-object v2, Landroidx/media3/common/MediaMetadata;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    sget-object v2, Landroidx/media3/common/MediaMetadata;->R:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/media3/common/MediaMetadata;->S:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    sget-object v2, Landroidx/media3/common/MediaMetadata;->s0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    if-eqz v1, :cond_e

    const/16 v2, 0x9

    sget-object v3, Landroidx/media3/common/MediaMetadata;->V:Ljava/lang/String;

    if-lt p1, v2, :cond_d

    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    if-nez p1, :cond_8

    new-instance p1, Landroidx/media3/common/BundleableByteArray;

    invoke-direct {p1, v1}, Landroidx/media3/common/BundleableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    :cond_8
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Landroidx/media3/common/BundleableByteArray;->e:Ljava/lang/String;

    iget-object v4, p1, Landroidx/media3/common/BundleableByteArray;->b:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p1, Landroidx/media3/common/BundleableByteArray;->a:[B

    array-length v4, v2

    if-lez v4, :cond_b

    iget-object v4, p1, Landroidx/media3/common/BundleableByteArray;->c:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    if-nez v4, :cond_a

    const-string v4, "BundleableByteArray"

    const/4 v5, 0x0

    :try_start_0
    array-length v6, v2

    invoke-static {v4, v6}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v4, v6}, Landroid/os/SharedMemory;->setProtect(I)Z

    new-instance v6, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    invoke-direct {v6, v4}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;-><init>(Landroid/os/SharedMemory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v4, v5

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to allocate shared memory for byte array, size="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/os/SharedMemory;->close()V

    :cond_9
    :goto_1
    iput-object v5, p1, Landroidx/media3/common/BundleableByteArray;->c:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    :cond_a
    iget-object v4, p1, Landroidx/media3/common/BundleableByteArray;->c:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    if-eqz v4, :cond_b

    sget-object p1, Landroidx/media3/common/BundleableByteArray;->f:Ljava/lang/String;

    iget-object v2, v4, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->a:Landroid/os/SharedMemory;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_b
    iget-object v4, p1, Landroidx/media3/common/BundleableByteArray;->d:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    if-nez v4, :cond_c

    new-instance v4, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    invoke-direct {v4, v2}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;-><init>([B)V

    iput-object v4, p1, Landroidx/media3/common/BundleableByteArray;->d:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    :cond_c
    iget-object p1, p1, Landroidx/media3/common/BundleableByteArray;->d:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    sget v2, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/BundleableByteArray;->g:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->a:Landroidx/media3/common/BundleListRetriever;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_d
    array-length p1, v1

    const v2, 0x7a120

    if-gt p1, v2, :cond_e

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_e
    :goto_3
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    if-eqz p1, :cond_f

    sget-object v1, Landroidx/media3/common/MediaMetadata;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_f
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    if-eqz p1, :cond_10

    sget-object v1, Landroidx/media3/common/MediaMetadata;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_10
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    if-eqz p1, :cond_11

    sget-object v1, Landroidx/media3/common/MediaMetadata;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_11
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    if-eqz p1, :cond_12

    sget-object v1, Landroidx/media3/common/MediaMetadata;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_12
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    if-eqz p1, :cond_13

    sget-object v1, Landroidx/media3/common/MediaMetadata;->m0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_13
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    if-eqz p1, :cond_14

    sget-object v1, Landroidx/media3/common/MediaMetadata;->n0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_14
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    if-eqz p1, :cond_15

    sget-object v1, Landroidx/media3/common/MediaMetadata;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_15
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    if-eqz p1, :cond_16

    sget-object v1, Landroidx/media3/common/MediaMetadata;->T:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/media3/common/Rating;->c()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    if-eqz p1, :cond_17

    sget-object v1, Landroidx/media3/common/MediaMetadata;->U:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/media3/common/Rating;->c()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    if-eqz p1, :cond_18

    sget-object v1, Landroidx/media3/common/MediaMetadata;->X:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    if-eqz p1, :cond_19

    sget-object v1, Landroidx/media3/common/MediaMetadata;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    if-eqz p1, :cond_1a

    sget-object v1, Landroidx/media3/common/MediaMetadata;->Z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    if-eqz p1, :cond_1b

    sget-object v1, Landroidx/media3/common/MediaMetadata;->r0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1b
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    if-eqz p1, :cond_1c

    sget-object v1, Landroidx/media3/common/MediaMetadata;->a0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1c
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    if-eqz p1, :cond_1d

    sget-object v1, Landroidx/media3/common/MediaMetadata;->b0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    if-eqz p1, :cond_1e

    sget-object v1, Landroidx/media3/common/MediaMetadata;->c0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    if-eqz p1, :cond_1f

    sget-object v1, Landroidx/media3/common/MediaMetadata;->d0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    if-eqz p1, :cond_20

    sget-object v1, Landroidx/media3/common/MediaMetadata;->e0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_20
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    if-eqz p1, :cond_21

    sget-object v1, Landroidx/media3/common/MediaMetadata;->f0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_21
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    if-eqz p1, :cond_22

    sget-object v1, Landroidx/media3/common/MediaMetadata;->g0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    if-eqz p1, :cond_23

    sget-object v1, Landroidx/media3/common/MediaMetadata;->k0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_23
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    if-eqz p1, :cond_24

    sget-object v1, Landroidx/media3/common/MediaMetadata;->l0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_24
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    if-eqz p1, :cond_25

    sget-object v1, Landroidx/media3/common/MediaMetadata;->o0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    if-eqz p1, :cond_26

    sget-object v1, Landroidx/media3/common/MediaMetadata;->q0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Landroidx/media3/common/MediaMetadata;->t0:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_27
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    if-eqz p0, :cond_28

    sget-object p1, Landroidx/media3/common/MediaMetadata;->u0:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_28
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaMetadata;

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->k:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    iget-object v10, v0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    iget-object v11, v0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    iget-object v13, v0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    iget-object v14, v0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    iget-object v15, v0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    move-object/from16 v36, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    move-object/from16 v31, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    move-object/from16 v34, v0

    move-object/from16 v33, v1

    filled-new-array/range {v2 .. v36}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
