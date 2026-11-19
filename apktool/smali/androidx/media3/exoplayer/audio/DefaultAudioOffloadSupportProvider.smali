.class public final Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroidx/media3/common/Format;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v4, "offloadVariableRateSupported"

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "offloadVariableRateSupported=1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_2
    iget-object v1, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p2, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v1, v4}, Landroidx/media3/common/MimeTypes;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->s(I)I

    move-result v5

    if-ge v4, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    iget p2, p2, Landroidx/media3/common/Format;->G:I

    invoke-static {p2}, Landroidx/media3/common/util/Util;->t(I)I

    move-result p2

    if-nez p2, :cond_5

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_5
    :try_start_0
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x21

    if-lt v4, v0, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->c()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/media/AudioManager;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_6

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_6
    const/4 p2, 0x3

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_7

    move v2, v3

    :cond_7
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    iput-boolean v3, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    iput-boolean v2, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v0, 0x1f

    if-lt v4, v0, :cond_b

    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->c()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_9

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_9
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    const/16 v0, 0x20

    if-le v4, v0, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v3, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    iput-boolean v2, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    iput-boolean p0, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->c()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_c
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    iput-boolean v3, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0

    :catch_0
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_d
    :goto_3
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0
.end method
