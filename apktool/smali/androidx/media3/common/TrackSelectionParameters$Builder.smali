.class public Landroidx/media3/common/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A:Z

.field public B:Lcom/google/common/collect/ImmutableList;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Ljava/util/HashMap;

.field public I:Ljava/util/HashSet;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lcom/google/common/collect/ImmutableList;

.field public n:Lcom/google/common/collect/ImmutableList;

.field public o:Lcom/google/common/collect/ImmutableList;

.field public p:I

.field public q:Lcom/google/common/collect/ImmutableList;

.field public r:Lcom/google/common/collect/ImmutableList;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/google/common/collect/ImmutableList;

.field public w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public x:Z

.field public y:Lcom/google/common/collect/ImmutableList;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Z

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    iput v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Lcom/google/common/collect/ImmutableList;

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->d:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->x:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    iput v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->B:Lcom/google/common/collect/ImmutableList;

    iput v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->C:I

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->D:Z

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->E:Z

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->F:Z

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->G:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    return-void
.end method

.method public static f([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/TrackSelectionOverride;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    return-object v0
.end method

.method public c()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public d(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v1, v1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget v1, v1, Landroidx/media3/common/TrackGroup;->c:I

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final e(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->a:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->b:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->c:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->d:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->e:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->e:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->f:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->f:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->g:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->g:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->h:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->h:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->i:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->j:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->l:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->p:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->q:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->s:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->t:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->u:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->x:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->x:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->A:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->B:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->C:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->C:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->D:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->D:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->E:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->F:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->G:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    return-void
.end method

.method public g(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public h()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    const/4 v0, -0x3

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->C:I

    return-object p0
.end method

.method public i(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget v1, v0, Landroidx/media3/common/TrackGroup;->c:I

    invoke-virtual {p0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->d(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    iget-object v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->H:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->k([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs k([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->f([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->y:Lcom/google/common/collect/ImmutableList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    return-object p0
.end method

.method public l()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->z:I

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->A:Z

    return-object p0
.end method

.method public m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->I:Ljava/util/HashSet;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
