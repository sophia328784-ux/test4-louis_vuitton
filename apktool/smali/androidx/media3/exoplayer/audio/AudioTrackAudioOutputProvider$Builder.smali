.class public final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

.field public c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field public d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->a:Landroid/content/Context;

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->a:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    if-nez p1, :cond_1

    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :cond_1
    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->e:F

    return-void
.end method
