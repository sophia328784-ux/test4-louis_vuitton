.class public Landroidx/media3/common/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/TrackSelectionParameters$Builder;,
        Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
    }
.end annotation


# static fields
.field public static final J:Landroidx/media3/common/TrackSelectionParameters;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

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

.field public static final v0:Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:I

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Lcom/google/common/collect/ImmutableMap;

.field public final I:Lcom/google/common/collect/ImmutableSet;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/google/common/collect/ImmutableList;

.field public final n:Lcom/google/common/collect/ImmutableList;

.field public final o:Lcom/google/common/collect/ImmutableList;

.field public final p:I

.field public final q:Lcom/google/common/collect/ImmutableList;

.field public final r:Lcom/google/common/collect/ImmutableList;

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Lcom/google/common/collect/ImmutableList;

.field public final w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public final x:Z

.field public final y:Lcom/google/common/collect/ImmutableList;

.field public final z:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct {v1, v0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    sput-object v1, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->K:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->L:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->M:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->N:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->O:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->P:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->Q:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->R:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->S:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->T:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->U:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->V:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->W:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->X:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->Y:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->Z:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->a0:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->b0:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->c0:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->d0:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->e0:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->f0:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->g0:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->h0:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->i0:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->j0:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->k0:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->l0:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->m0:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->n0:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->o0:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->p0:Ljava/lang/String;

    const/16 v0, 0x21

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->q0:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->r0:Ljava/lang/String;

    const/16 v0, 0x23

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->s0:Ljava/lang/String;

    invoke-static {v1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->t0:Ljava/lang/String;

    const/16 v0, 0x25

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->u0:Ljava/lang/String;

    const/16 v0, 0x26

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->v0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->a:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->b:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->c:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->d:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->e:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->e:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->f:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->f:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->g:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->g:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->h:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->h:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->i:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->j:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->p:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->s:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->t:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->u:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->x:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->A:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->B:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->C:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->C:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->D:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->E:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->F:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->G:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->c(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 9

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    iget v2, v1, Landroidx/media3/common/TrackSelectionParameters;->a:I

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->P:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->Q:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->b:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->R:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->c:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->S:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->d:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->T:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->e:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->e:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->U:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->f:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->f:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->V:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->g:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->g:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->W:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->h:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->h:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->X:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->i:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->Y:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->j:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:I

    iget v3, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-ne v3, v6, :cond_0

    if-ne v2, v6, :cond_0

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->q0:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->Z:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->a0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->t0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->p0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->i0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->p:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->K:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->f([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->u0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->L:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->s:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->b0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->t:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->c0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->u:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->d0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->n0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->d:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    new-instance v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;

    invoke-direct {v3}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;-><init>()V

    sget-object v6, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->e:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->d:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v8, v7, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    invoke-virtual {v2, v6, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->a:I

    sget-object v6, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->f:Ljava/lang/String;

    iget-boolean v8, v7, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->b:Z

    invoke-virtual {v2, v6, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->b:Z

    sget-object v6, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->g:Ljava/lang/String;

    iget-boolean v7, v7, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->c:Z

    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->c:Z

    new-instance v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-direct {v2, v3}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;-><init>(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;

    invoke-direct {v2}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;-><init>()V

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->d:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v6, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    sget-object v7, Landroidx/media3/common/TrackSelectionParameters;->k0:Ljava/lang/String;

    invoke-virtual {p0, v7, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->a:I

    sget-object v6, Landroidx/media3/common/TrackSelectionParameters;->l0:Ljava/lang/String;

    iget-boolean v7, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->b:Z

    invoke-virtual {p0, v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->b:Z

    sget-object v6, Landroidx/media3/common/TrackSelectionParameters;->m0:Ljava/lang/String;

    iget-boolean v3, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->c:Z

    invoke-virtual {p0, v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->c:Z

    new-instance v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-direct {v3, v2}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;-><init>(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)V

    move-object v2, v3

    :goto_1
    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->s0:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->x:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->M:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->f([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->N:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->A:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    iget-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    if-nez v2, :cond_2

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->r0:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iput-boolean v4, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->j0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/TrackSelectionParameters;->C:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->C:I

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->v0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->B:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->O:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->D:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->o0:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->E:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->e0:Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->F:Z

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->f0:Ljava/lang/String;

    iget-boolean v1, v1, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->G:Z

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->g0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v3, v5

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/media3/common/TrackSelectionOverride;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/media3/common/TrackGroup;->a(Landroid/os/Bundle;)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/TrackSelectionOverride;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v4}, Lcom/google/common/primitives/Ints;->a([I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v6, v4}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    move v2, v5

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v4, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    iget-object v6, v3, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->h0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    new-array v1, v5, [I

    invoke-static {p0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    array-length v1, p0

    :goto_6
    if-ge v5, v1, :cond_6

    aget v2, p0, v5

    iget-object v3, v0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    new-instance p0, Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct {p0, v0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->e(Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->P:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->Q:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->R:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->S:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->T:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->U:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->V:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->W:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->X:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->Y:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->q0:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->Z:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->a0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->p0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->t0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->i0:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->p:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->K:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->L:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->s:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->b0:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->t:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->c0:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->u:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->u0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->d0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->s0:Ljava/lang/String;

    iget-boolean v3, p0, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->M:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->N:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->A:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->r0:Ljava/lang/String;

    iget-boolean v3, p0, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->v0:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->j0:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->O:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v2, v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->k0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v2, v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->b:Z

    sget-object v3, Landroidx/media3/common/TrackSelectionParameters;->l0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v3, v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->c:Z

    sget-object v4, Landroidx/media3/common/TrackSelectionParameters;->m0:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->e:Ljava/lang/String;

    iget v1, v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->f:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->g:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->n0:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->o0:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->e0:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->f0:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->o()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/media3/common/TrackSelectionOverride;->c:Ljava/lang/String;

    iget-object v6, v3, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v6}, Landroidx/media3/common/TrackGroup;->d()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v5, Landroidx/media3/common/TrackSelectionOverride;->d:Ljava/lang/String;

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object p0

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/TrackSelectionParameters;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->a:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->b:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->c:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->d:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->e:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->f:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->g:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->h:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->h:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->i:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->j:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->j:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->p:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->p:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->s:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->t:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->t:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->u:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->u:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->A:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->A:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->C:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->C:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->a:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->b:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->g:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->h:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->i:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->j:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->p:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->s:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->t:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->u:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->A:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->C:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
