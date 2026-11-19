.class public final Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;,
        Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$Type;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c:Ljava/util/ArrayList;

    const/4 p0, -0x1

    if-eq p4, p0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->a:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->b:Landroidx/media3/common/Format;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->d:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->d(Landroid/net/Uri;Ljava/lang/String;ILjava/util/ArrayList;Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->b:Landroidx/media3/common/Format;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->h:Ljava/lang/String;

    invoke-direct {v4, v1, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a:Landroid/net/Uri;

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->d(Landroid/net/Uri;Ljava/lang/String;ILjava/util/ArrayList;Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/util/HashMap;Ljava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/net/Uri;Ljava/lang/String;ILjava/util/ArrayList;Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 8

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p6, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_0
    new-instance p6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    invoke-direct {p6, p4, p1, p0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p1, :cond_7

    invoke-virtual {p6, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v3

    if-gt p1, v3, :cond_4

    if-ltz p1, :cond_2

    move v2, v3

    :cond_2
    const-string p5, "invalid count: %s"

    invoke-static {p1, p5, v2}, Lcom/google/common/base/Preconditions;->b(ILjava/lang/String;Z)V

    if-nez p1, :cond_3

    const-string p5, ""

    goto :goto_1

    :cond_3
    move-object p5, v1

    goto :goto_1

    :cond_4
    int-to-long v4, p1

    long-to-int p5, v4

    int-to-long v6, p5

    cmp-long v6, v6, v4

    if-nez v6, :cond_6

    new-array v4, p5, [C

    invoke-virtual {v1, v2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    sub-int v1, p5, v3

    if-ge v3, v1, :cond_5

    invoke-static {v4, v2, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, v4}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p6, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p5

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Required array size too large: "

    invoke-static {v4, v5, p1}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object p4, p3, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    if-eqz p4, :cond_9

    invoke-virtual {p0, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Different playlist URLs are found for pathway ID "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " within the HlsRedundantGroup"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_3
    iget-object p4, p3, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    invoke-virtual {p4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, -0x1

    if-eq p2, p0, :cond_a

    iget-object p0, p3, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method


# virtual methods
.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
