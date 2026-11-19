.class final Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    return-void
.end method
