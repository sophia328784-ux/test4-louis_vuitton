.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Landroidx/media3/common/Format;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field public final f:Landroidx/media3/common/audio/AudioProcessingPipeline;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    iput p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    iput-object p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iput-object p6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    return-void
.end method

.method public static a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
