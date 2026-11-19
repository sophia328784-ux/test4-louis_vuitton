.class public final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutputProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field public final c:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

.field public final d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

.field public final e:F

.field public f:Landroidx/media3/common/util/ListenerSet;

.field public g:Landroidx/media3/common/util/Clock;

.field public h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field public j:Landroid/os/Looper;

.field public k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->e:F

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V
    .locals 8

    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->c:Landroid/media/AudioDeviceInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b()V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    const/4 v2, 0x0

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    if-nez v1, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    if-eqz v4, :cond_3

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    new-instance v5, Ls3;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v4, v5, p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-boolean p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->f:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->a:Landroid/content/ContentResolver;

    iget-object v4, p1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->d:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v0, v4, :cond_2

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroidx/media3/common/util/Util;->N(Landroid/content/Context;)Z

    move-result v0

    new-instance v4, Landroidx/media3/exoplayer/util/SpatializerWrapper;

    new-instance v6, Lz1;

    const/4 v7, 0x7

    invoke-direct {v6, v1, v7}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, p1, v6, v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    invoke-static {p1, v0, v3, v4, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_7

    if-eqz v0, :cond_5

    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iput-object v0, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    move-result-object v6

    sget-object v7, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v7, v5, v0, v6}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2, p1, v4, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_7
    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->j:Landroid/os/Looper;

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "null"

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v2, :cond_5

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->j:Landroid/os/Looper;

    return-void

    :cond_5
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s"

    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Landroidx/media3/common/util/Clock;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public final j(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
    .locals 7

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V

    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;-><init>()V

    iget-object v3, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget v4, v0, Landroidx/media3/common/Format;->I:I

    const-string v5, "audio/raw"

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    if-ne v4, v6, :cond_1

    :goto_0
    move v5, v6

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput v5, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->d:I

    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->a:Z

    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a:Z

    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->b:Z

    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->b:Z

    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->c:Z

    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->c:Z

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    move-result-object p0

    return-object p0
.end method

.method public final k(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    iget-boolean v3, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->d:Z

    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V

    iget-object v5, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget v11, v2, Landroidx/media3/common/Format;->H:I

    iget v6, v2, Landroidx/media3/common/Format;->I:I

    iget v7, v2, Landroidx/media3/common/Format;->G:I

    const-string v8, "audio/raw"

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v8, :cond_0

    invoke-static {v6}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-static {v7}, Landroidx/media3/common/util/Util;->t(I)I

    move-result v3

    invoke-static {v6}, Landroidx/media3/common/util/Util;->u(I)I

    move-result v8

    mul-int/2addr v8, v7

    move v10, v8

    move/from16 v7, v16

    move v12, v7

    move v8, v6

    move v6, v12

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    invoke-virtual {v6, v4, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v6

    goto :goto_0

    :cond_1
    sget-object v6, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    :goto_0
    if-eqz v3, :cond_2

    iget-boolean v3, v6, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->a:Z

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v5, v3}, Landroidx/media3/common/MimeTypes;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v7}, Landroidx/media3/common/util/Util;->t(I)I

    move-result v7

    iget-boolean v6, v6, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->b:Z

    move v8, v3

    move v3, v7

    move v10, v9

    move v7, v15

    move v12, v7

    goto :goto_1

    :cond_2
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v3, v4, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x2

    move v8, v6

    move v10, v9

    move/from16 v6, v16

    move v12, v6

    :goto_1
    iget v2, v2, Landroidx/media3/common/Format;->j:I

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    invoke-static {v5, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v2, v9, :cond_3

    const v2, 0xbb800

    :cond_3
    iget v5, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->h:I

    if-eq v5, v9, :cond_4

    move v2, v6

    move v9, v7

    move v0, v12

    goto :goto_5

    :cond_4
    move v5, v7

    invoke-static {v11, v3, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    const/4 v13, -0x2

    if-eq v7, v13, :cond_5

    move v13, v15

    goto :goto_2

    :cond_5
    move/from16 v13, v16

    :goto_2
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-eq v10, v9, :cond_6

    goto :goto_3

    :cond_6
    move v10, v15

    :goto_3
    if-eqz v12, :cond_7

    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    float-to-double v13, v9

    goto :goto_4

    :cond_7
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_4
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    move v9, v6

    move-object v6, v0

    move v0, v12

    move v12, v2

    move v2, v9

    move v9, v5

    invoke-interface/range {v6 .. v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->a(IIIIIID)I

    move-result v5

    :goto_5
    new-instance v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    invoke-direct {v6}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;-><init>()V

    iput v11, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->b:I

    iput v3, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->c:I

    iput v8, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->a:I

    iput v5, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->f:I

    iget v3, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->e:I

    iput v3, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    iput-object v4, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->g:Landroidx/media3/common/AudioAttributes;

    if-ne v9, v15, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v15, v16

    :goto_6
    iput-boolean v15, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->e:Z

    iget-boolean v3, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->g:Z

    iput-boolean v3, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->d:Z

    iput-boolean v0, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->j:Z

    iput-boolean v2, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->k:Z

    iget v0, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->f:I

    iput v0, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->i:I

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    return-object v0

    :cond_9
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to configure passthrough for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
    .locals 8

    :try_start_0
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->h:I

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->g:Landroidx/media3/common/AudioAttributes;

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->i:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x1

    const/16 v4, 0x22

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    if-eqz v3, :cond_2

    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    const/4 v2, 0x0

    move v7, v2

    move-object v2, v0

    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iget-boolean v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/common/AudioAttributes;->c()Landroid/media/AudioAttributes;

    move-result-object v1

    :goto_1
    new-instance v5, Landroid/media/AudioTrack$Builder;

    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v5, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    invoke-virtual {v1, v3}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setContext(Landroid/content/Context;)Landroid/media/AudioTrack$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v6, :cond_5

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    iget v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;FLandroidx/media3/common/util/Clock;)V

    return-object v0

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;-><init>()V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final m(Landroidx/media3/exoplayer/audio/c;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final release()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->d()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-static {v0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->d:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->e()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->f:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    :cond_4
    :goto_0
    return-void
.end method
