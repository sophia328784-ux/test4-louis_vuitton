.class final Lcom/google/android/gms/measurement/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Long;

.field public B:J

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:J

.field public G:Ljava/lang/String;

.field public H:[B

.field public I:I

.field public J:J

.field public K:J

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:J

.field public Q:Ljava/lang/String;

.field public R:Z

.field public S:J

.field public T:J

.field public final a:Lcom/google/android/gms/measurement/internal/zzic;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/Boolean;

.field public r:J

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:J

.field public w:J

.field public x:I

.field public y:Z

.field public z:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzh;->b:Ljava/lang/String;

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->v:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->v:J

    return-void
.end method

.method public final B(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->w:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->w:J

    return-void
.end method

.method public final C(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->B:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->B:J

    return-void
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->C:Ljava/lang/String;

    return-object p0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final G(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->c:Ljava/lang/String;

    return-void
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final I(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzh;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->d:Ljava/lang/String;

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->e:Ljava/lang/String;

    return-void
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->f:Ljava/lang/String;

    return-void
.end method

.method public final M(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->h:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->h:J

    return-void
.end method

.method public final N(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->i:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->i:J

    return-void
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final P(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->j:Ljava/lang/String;

    return-void
.end method

.method public final Q()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->k:J

    return-wide v0
.end method

.method public final R(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->k:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->k:J

    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->l:Ljava/lang/String;

    return-void
.end method

.method public final T(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->m:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->m:J

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->n:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->n:J

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->r:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->r:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->r:J

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->o:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->o:Z

    return-void
.end method

.method public final e(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzh;->g:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->g:J

    return-void
.end method

.method public final f(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->S:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->S:J

    return-void
.end method

.method public final g(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->T:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->T:J

    return-void
.end method

.method public final h(J)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->g:J

    add-long/2addr v1, p1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzh;->b:Ljava/lang/String;

    if-lez v5, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v2, "Bundle index overflow. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    add-long/2addr v1, p1

    :cond_0
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->F:J

    const-wide/16 v7, 0x1

    add-long/2addr p1, v7

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string p2, "Delivery index overflow. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->g:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->F:J

    return-void
.end method

.method public final i(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->K:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->K:J

    return-void
.end method

.method public final j(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->L:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->L:J

    return-void
.end method

.method public final k(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->M:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->M:J

    return-void
.end method

.method public final l(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->N:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->N:J

    return-void
.end method

.method public final m(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->P:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->P:J

    return-void
.end method

.method public final n(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->O:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->O:J

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    return p0
.end method

.method public final p(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->D:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->D:I

    return-void
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->E:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->E:I

    return-void
.end method

.method public final r(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->F:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->F:J

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->G:Ljava/lang/String;

    return-object p0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->I:I

    return p0
.end method

.method public final u(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->J:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->J:J

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->Q:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzh;->Q:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzh;->Q:Ljava/lang/String;

    return-void
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final y(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->s:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->R:Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->s:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzh;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzh;->u:Z

    return p0
.end method
