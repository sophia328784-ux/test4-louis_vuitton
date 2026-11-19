.class public Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupKey"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iput-object v0, p1, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
