.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Ljava/util/UUID;

.field public c:Laz;

.field public d:Z

.field public e:Z

.field public final f:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

.field public final g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->a:Ljava/util/HashMap;

    sget-object v0, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->b:Ljava/util/UUID;

    sget-object v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->d:Laz;

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->c:Laz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->e:Z

    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->f:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->g:J

    return-void
.end method
