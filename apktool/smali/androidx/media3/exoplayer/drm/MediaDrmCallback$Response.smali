.class public final Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/MediaDrmCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/exoplayer/source/LoadEventInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->a:[B

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->a:[B

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->a:[B

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    return-void
.end method
