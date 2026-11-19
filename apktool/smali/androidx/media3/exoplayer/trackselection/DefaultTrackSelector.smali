.class public Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/RendererCapabilities$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/common/collect/Ordering;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public final e:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

.field public f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public g:Ljava/lang/Thread;

.field public h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

.field public i:Landroidx/media3/common/AudioAttributes;

.field public j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx5;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lx5;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->b(Lx5;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    .line 70
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 0

    .line 72
    invoke-direct {p0, p2, p3, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 1

    .line 69
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->F0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    instance-of p2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_1

    :cond_1
    sget-object p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->F0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->e(Landroidx/media3/common/TrackSelectionParameters;)V

    new-instance p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    :goto_1
    sget-object p1, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->A0:Z

    if-eqz p0, :cond_2

    if-nez p3, :cond_2

    const-string p0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static j(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-object v3, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Label;

    iget-object v3, v3, Landroidx/media3/common/Label;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method

.method public static k(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 7

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->D0:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->D0:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    array-length v6, v5

    if-eqz v6, :cond_1

    new-instance v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget v6, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v2

    iget v3, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->c:I

    invoke-direct {v4, v2, v5, v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    :cond_1
    aput-object v4, p2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static l(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget v1, v1, v0

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->E0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    aput-object v1, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static m(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 7

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5, p1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->n(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/HashMap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->f:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v4, p1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->n(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/HashMap;)V

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/TrackSelectionOverride;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    new-instance v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v5, v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    aput-object v5, p2, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static n(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/HashMap;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget v3, v2, Landroidx/media3/common/TrackGroup;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget v2, v2, Landroidx/media3/common/TrackGroup;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static o([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    iget v2, v2, Landroidx/media3/common/TrackGroup;->c:I

    if-ne v2, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Landroidx/media3/common/Format;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z
    .locals 2

    and-int/lit16 v0, p1, 0xe00

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->c:Z

    if-eqz v0, :cond_1

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->b:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    iget p0, p2, Landroidx/media3/common/Format;->J:I

    if-nez p0, :cond_3

    iget p0, p2, Landroidx/media3/common/Format;->K:I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v0
.end method

.method public static t(Landroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .locals 13

    iget-object v0, p2, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v4, v1

    move-object v3, v2

    move-object v5, v3

    :goto_0
    iget v6, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v1, v6, :cond_4

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    aget-object v7, p1, v1

    move v8, v0

    :goto_1
    iget v9, v6, Landroidx/media3/common/TrackGroup;->a:I

    if-ge v8, v9, :cond_3

    aget v9, v7, v8

    iget-boolean v10, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B0:Z

    invoke-static {v9, v10}, Landroidx/media3/exoplayer/RendererCapabilities;->k(IZ)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v9, v9, v8

    new-instance v10, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v11, v7, v8

    invoke-direct {v10, v9, v11}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Landroidx/media3/common/Format;I)V

    if-eqz v5, :cond_1

    iget-boolean v9, v10, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->c:Z

    iget-boolean v11, v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->c:Z

    sget-object v12, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    invoke-virtual {v12, v9, v11}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v9

    iget-boolean v11, v10, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->b:Z

    iget-boolean v12, v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->b:Z

    invoke-virtual {v9, v11, v12}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/ComparisonChain;->e()I

    move-result v9

    if-lez v9, :cond_2

    :cond_1
    move-object v3, v6

    move v4, v8

    move-object v5, v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    :goto_2
    return-object v2

    :cond_5
    new-instance p0, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    filled-new-array {v4}, [I

    move-result-object p1

    invoke-direct {p0, v3, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    return-object p0
.end method

.method public static u(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget v5, v5, v4

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v5, v5, v4

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    aget-object v9, p2, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v8, v9, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;->a(Landroidx/media3/common/TrackGroup;[II)Ljava/util/List;

    move-result-object v9

    iget v8, v8, Landroidx/media3/common/TrackGroup;->a:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    invoke-virtual {v13}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->a()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v16, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    :goto_3
    move/from16 v16, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    :goto_4
    if-ge v15, v8, :cond_4

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->a()I

    move-result v0

    move/from16 v16, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-boolean v17, v11, v15

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto :goto_4

    :cond_4
    move-object v13, v14

    goto :goto_3

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    move/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->d:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    new-instance v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->c:Landroidx/media3/common/TrackGroup;

    invoke-direct {v2, v3, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    iget v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    .locals 0

    return-object p0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    :cond_2
    invoke-super {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->e()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->q()V

    return-void
.end method

.method public final h(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    instance-of v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->v(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->e(Landroidx/media3/common/TrackSelectionParameters;)V

    new-instance p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->v(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final i(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g:Ljava/lang/Thread;

    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroid/content/Context;

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroidx/media3/common/util/Util;->N(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    :cond_0
    iget-boolean v4, v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->A0:Z

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x20

    if-lt v4, v7, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-nez v4, :cond_1

    new-instance v4, Landroidx/media3/exoplayer/util/SpatializerWrapper;

    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroid/content/Context;

    new-instance v8, Let;

    invoke-direct {v8, v0, v6}, Let;-><init>(Ljava/lang/Object;I)V

    iget-object v9, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    invoke-direct {v4, v7, v8, v9}, Landroidx/media3/exoplayer/util/SpatializerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    iput-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    :cond_1
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    new-array v7, v4, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->m(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroid/content/Context;

    iget v9, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v11, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    const/4 v12, 0x1

    invoke-static {v7, v12}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->o([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_3

    aget v15, v11, v13

    if-ne v6, v15, :cond_2

    aget-object v15, v10, v13

    iget v15, v15, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-lez v15, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    :goto_1
    new-instance v15, Landroidx/media3/exoplayer/trackselection/d;

    invoke-direct {v15, v0, v5, v13, v3}, Landroidx/media3/exoplayer/trackselection/d;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V

    new-instance v13, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v13, v6}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {v12, v1, v2, v15, v13}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->u(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 p4, 0x0

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v14, v7, v15

    goto :goto_2

    :cond_4
    const/16 p4, 0x0

    :goto_2
    if-nez v13, :cond_5

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v15, v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    iget-object v13, v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    aget v13, v13, p4

    iget-object v15, v15, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v13, v15, v13

    iget-object v13, v13, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    :goto_3
    invoke-static {v7, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->o([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v15

    const/4 v14, 0x4

    invoke-static {v7, v14}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->o([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v16

    if-nez v15, :cond_c

    if-nez v16, :cond_c

    iget-object v15, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v15, v15, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    if-ne v15, v6, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    iget-boolean v15, v5, Landroidx/media3/common/TrackSelectionParameters;->k:Z

    if-eqz v15, :cond_7

    if-eqz v8, :cond_7

    invoke-static {v8}, Landroidx/media3/common/util/Util;->x(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    new-instance v14, Landroidx/media3/exoplayer/trackselection/c;

    invoke-direct {v14, v5, v13, v3, v15}, Landroidx/media3/exoplayer/trackselection/c;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v3, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v3, v12}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {v6, v1, v2, v14, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->u(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    :goto_5
    iget-boolean v14, v5, Landroidx/media3/common/TrackSelectionParameters;->E:Z

    if-nez v14, :cond_9

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    iget-object v14, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v14, v14, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    if-ne v14, v6, :cond_a

    goto :goto_6

    :cond_a
    new-instance v14, Landroidx/media3/exoplayer/trackselection/a;

    invoke-direct {v14, v5}, Landroidx/media3/exoplayer/trackselection/a;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v15, Landroidx/media3/exoplayer/trackselection/b;

    move/from16 v12, p4

    invoke-direct {v15, v12}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    const/4 v12, 0x4

    invoke-static {v12, v1, v2, v14, v15}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->u(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v14

    :goto_8
    if-eqz v14, :cond_b

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v12, v7, v3

    goto :goto_9

    :cond_b
    if-eqz v3, :cond_c

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v3, v7, v12

    :cond_c
    :goto_9
    const/4 v3, 0x3

    invoke-static {v7, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->o([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v12

    if-nez v12, :cond_12

    iget-object v12, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v12, v12, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    if-ne v12, v6, :cond_d

    const/4 v8, 0x0

    goto :goto_c

    :cond_d
    iget-boolean v12, v5, Landroidx/media3/common/TrackSelectionParameters;->B:Z

    if-eqz v12, :cond_11

    if-nez v8, :cond_e

    goto :goto_a

    :cond_e
    const-string v12, "captioning"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/CaptioningManager;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v8

    if-nez v8, :cond_10

    goto :goto_a

    :cond_10
    sget-object v12, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v8, 0x0

    :goto_b
    new-instance v12, Landroidx/media3/exoplayer/trackselection/e;

    invoke-direct {v12, v5, v13, v8}, Landroidx/media3/exoplayer/trackselection/e;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v8, v3}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {v3, v1, v2, v12, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->u(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    :goto_c
    if-eqz v8, :cond_12

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v8, v7, v12

    :cond_12
    const/4 v12, 0x0

    invoke-static {v12, v12, v12, v12}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result v8

    iget-object v12, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v12, v12, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    if-ne v12, v6, :cond_13

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    goto/16 :goto_17

    :cond_13
    sget v12, Lcom/google/common/collect/ImmutableSet;->d:I

    new-instance v12, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v12}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v4, :cond_16

    aget-object v15, v7, v14

    if-eqz v15, :cond_15

    iget-object v3, v15, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    iget-object v6, v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->E0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, v5, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    iget v13, v3, Landroidx/media3/common/TrackGroup;->c:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, v3, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    const/4 v6, 0x0

    :goto_e
    iget-object v13, v15, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    array-length v2, v13

    if-ge v6, v2, :cond_15

    aget v2, v13, v6

    iget-object v13, v3, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v2, v13, v2

    iget-object v2, v2, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v12, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    :cond_14
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    goto :goto_e

    :cond_15
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/4 v6, 0x2

    goto :goto_d

    :cond_16
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableSet$Builder;->k()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v9, :cond_1b

    aget v13, v11, v12

    const/4 v14, 0x5

    if-eq v13, v14, :cond_18

    :cond_17
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move/from16 v19, v12

    goto :goto_12

    :cond_18
    aget-object v13, v10, v12

    const/4 v14, 0x0

    :goto_10
    iget v15, v13, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v14, v15, :cond_17

    invoke-virtual {v13, v14}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v17, p2, v12

    aget-object v17, v17, v14

    invoke-virtual/range {v17 .. v17}, [I->clone()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    check-cast v10, [I

    move-object/from16 v17, v11

    move/from16 v19, v12

    const/4 v11, 0x0

    :goto_11
    array-length v12, v10

    if-ge v11, v12, :cond_1a

    iget-object v12, v15, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v12, v12, v11

    iget-object v12, v12, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz v12, :cond_19

    invoke-virtual {v2, v12}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    aput v8, v10, v11

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move/from16 v12, v19

    goto :goto_10

    :goto_12
    add-int/lit8 v12, v19, 0x1

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    goto :goto_f

    :cond_1b
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v10, v2, [Landroidx/media3/common/TrackGroup;

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v2, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v10, v3, [[I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v9, :cond_1f

    aget v3, v17, v12

    const/4 v14, 0x5

    if-eq v3, v14, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-static {v2, v10, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->t(Landroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object v3

    aput-object v3, v7, v12

    if-eqz v3, :cond_1f

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v3

    aget-object v3, v10, v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([II)V

    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_1f
    :goto_17
    const/4 v12, 0x0

    :goto_18
    if-ge v12, v9, :cond_23

    aget v2, v17, v12

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    const/4 v6, 0x1

    if-eq v2, v6, :cond_21

    const/4 v6, 0x3

    const/4 v8, 0x4

    if-eq v2, v6, :cond_20

    const/4 v14, 0x5

    if-eq v2, v8, :cond_22

    if-eq v2, v14, :cond_22

    aget-object v2, v7, v12

    if-nez v2, :cond_22

    aget-object v2, v18, v12

    aget-object v10, p2, v12

    invoke-static {v2, v10, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->t(Landroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object v2

    aput-object v2, v7, v12

    goto :goto_1a

    :cond_20
    :goto_19
    const/4 v14, 0x5

    goto :goto_1a

    :cond_21
    const/4 v6, 0x3

    const/4 v8, 0x4

    goto :goto_19

    :cond_22
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    :cond_23
    const/4 v3, 0x2

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->m(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    invoke-static {v1, v5, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v7, v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;->a([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v0

    new-array v2, v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v12, 0x0

    :goto_1b
    if-ge v12, v4, :cond_27

    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget v6, v6, v12

    iget-object v7, v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->E0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v7, v5, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_1c

    :cond_24
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget v6, v6, v12

    const/4 v7, -0x2

    if-eq v6, v7, :cond_25

    aget-object v6, v0, v12

    if-eqz v6, :cond_26

    :cond_25
    sget-object v6, Landroidx/media3/exoplayer/RendererConfiguration;->c:Landroidx/media3/exoplayer/RendererConfiguration;

    goto :goto_1d

    :cond_26
    :goto_1c
    const/4 v6, 0x0

    :goto_1d
    aput-object v6, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    :cond_27
    iget-object v4, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v4, v4, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:I

    if-eqz v4, :cond_2e

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_1e
    iget v7, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    if-ge v12, v7, :cond_2b

    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    aget v7, v7, v12

    aget-object v8, v0, v12

    const/4 v9, 0x1

    if-eq v7, v9, :cond_28

    if-eqz v8, :cond_28

    goto :goto_22

    :cond_28
    if-ne v7, v9, :cond_29

    if-eqz v8, :cond_29

    invoke-interface {v8}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v7

    if-ne v7, v9, :cond_29

    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v7, v7, v12

    invoke-interface {v8}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v7

    aget-object v9, p2, v12

    aget-object v7, v9, v7

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result v10

    aget v7, v7, v10

    invoke-interface {v8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->s(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_2a

    add-int/lit8 v6, v6, 0x1

    move v4, v12

    goto :goto_1f

    :cond_29
    const/4 v9, 0x0

    :cond_2a
    :goto_1f
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v7, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_2e

    new-instance v1, Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v5, v5, Landroidx/media3/common/TrackSelectionParameters;->w:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v5, v5, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->b:Z

    if-eqz v5, :cond_2c

    move v6, v7

    goto :goto_20

    :cond_2c
    move v6, v3

    :goto_20
    aget-object v3, v2, v4

    if-eqz v3, :cond_2d

    iget-boolean v3, v3, Landroidx/media3/exoplayer/RendererConfiguration;->b:Z

    if-eqz v3, :cond_2d

    move v12, v7

    goto :goto_21

    :cond_2d
    move v12, v9

    :goto_21
    invoke-direct {v1, v6, v12}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    aput-object v1, v2, v4

    :cond_2e
    :goto_22
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->A0:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;->a()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->A0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
