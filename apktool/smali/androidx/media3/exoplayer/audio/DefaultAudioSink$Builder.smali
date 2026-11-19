.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

.field public d:Z

.field public e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

.field public f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

.field public g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    .line 13
    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/audio/DefaultAudioSink;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->d:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    new-array v3, v2, [Landroidx/media3/common/audio/AudioProcessor;

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    if-nez v3, :cond_1

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    if-nez v1, :cond_2

    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->a:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :goto_0
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->a:Landroid/content/Context;

    if-nez v2, :cond_4

    iput-object v0, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iput-object v0, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    iput-object v3, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    if-nez v0, :cond_5

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    :cond_5
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_3
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V

    return-object v0
.end method
