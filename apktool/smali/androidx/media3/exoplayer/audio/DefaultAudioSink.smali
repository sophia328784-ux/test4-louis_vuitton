.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$OutputMode;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;
    }
.end annotation


# static fields
.field public static final c0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:Z

.field public F:Z

.field public G:J

.field public H:F

.field public I:Ljava/nio/ByteBuffer;

.field public J:I

.field public K:Ljava/nio/ByteBuffer;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Landroidx/media3/common/AuxEffectInfo;

.field public T:Landroid/media/AudioDeviceInfo;

.field public U:I

.field public V:Z

.field public W:J

.field public X:Z

.field public Y:Z

.field public Z:J

.field public final a:Landroid/content/Context;

.field public a0:J

.field public final b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

.field public b0:Landroid/os/Handler;

.field public final c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field public final d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

.field public final e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

.field public final f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

.field public final g:Lcom/google/common/collect/ImmutableList;

.field public final h:Ljava/util/ArrayDeque;

.field public i:I

.field public j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

.field public final k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

.field public final l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

.field public m:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

.field public o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public q:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

.field public s:Landroidx/media3/exoplayer/audio/c;

.field public t:Landroidx/media3/exoplayer/audio/AudioOutput;

.field public u:Landroidx/media3/common/AudioAttributes;

.field public v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public x:Landroidx/media3/common/PlaybackParameters;

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    sget-object v1, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    new-instance p1, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    new-instance v2, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    new-instance v3, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    new-instance v3, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:F

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    new-instance p1, Landroidx/media3/common/AuxEffectInfo;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroidx/media3/common/AuxEffectInfo;-><init>(IF)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v4, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    new-instance p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, -0x1

    if-lt p1, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    move v2, p1

    :cond_2
    :goto_1
    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:I

    return-void
.end method

.method public static I(ILjava/nio/ByteBuffer;)I
    .locals 10

    const/16 v0, 0x14

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v0, :cond_19

    const/16 v0, 0x1e

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    const/16 v7, 0xa

    packed-switch p0, :pswitch_data_0

    const/16 v1, 0x10

    packed-switch p0, :pswitch_data_1

    const-string p1, "Unexpected audio encoding: "

    invoke-static {p0, p1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v3

    :pswitch_0
    new-array p0, v1, [B

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {p1, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {p1}, Landroidx/media3/extractor/Ac4Util;->c(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->c:I

    return p0

    :pswitch_1
    const/16 p0, 0x200

    return p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, v7

    move v2, p0

    :goto_0
    if-gt v2, v0, :cond_2

    add-int/lit8 v7, v2, 0x4

    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    :goto_1
    and-int/2addr v7, v5

    const v8, -0x78d9046

    if-ne v7, v8, :cond_1

    sub-int/2addr v2, p0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_2
    if-ne v2, v6, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xbb

    if-ne p0, v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    if-eqz v3, :cond_5

    const/16 v0, 0x9

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    mul-int/2addr p0, v1

    return p0

    :pswitch_3
    const/16 p0, 0x800

    return p0

    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :goto_4
    const/high16 p1, -0x200000

    and-int v2, p0, p1

    if-ne v2, p1, :cond_7

    ushr-int/lit8 p1, p0, 0x13

    and-int/2addr p1, v0

    if-ne p1, v4, :cond_8

    :cond_7
    :goto_5
    move p0, v6

    goto :goto_6

    :cond_8
    ushr-int/lit8 v2, p0, 0x11

    and-int/2addr v2, v0

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    ushr-int/lit8 v5, p0, 0xc

    const/16 v8, 0xf

    and-int/2addr v5, v8

    ushr-int/2addr p0, v7

    and-int/2addr p0, v0

    if-eqz v5, :cond_7

    if-eq v5, v8, :cond_7

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 p0, 0x480

    if-eq v2, v4, :cond_c

    if-eq v2, v1, :cond_e

    if-ne v2, v0, :cond_b

    const/16 p0, 0x180

    goto :goto_6

    :cond_b
    invoke-static {}, Lct0;->c()V

    return v3

    :cond_c
    if-ne p1, v0, :cond_d

    goto :goto_6

    :cond_d
    const/16 p0, 0x240

    :cond_e
    :goto_6
    if-eq p0, v6, :cond_f

    return p0

    :cond_f
    invoke-static {}, Lct0;->c()V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xf8

    shr-int/2addr p0, v0

    if-le p0, v7, :cond_11

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xc0

    shr-int/lit8 p0, p0, 0x6

    if-ne p0, v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v0, p0, 0x4

    :goto_7
    sget-object p0, Landroidx/media3/extractor/Ac3Util;->a:[I

    aget p0, p0, v0

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_11
    const/16 p0, 0x600

    return p0

    :cond_12
    :pswitch_6
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0xde4bec0

    if-eq p0, v0, :cond_18

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, 0x25205864

    if-ne p0, v0, :cond_14

    const/16 p0, 0x1000

    return p0

    :cond_14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v5, :cond_17

    if-eq v0, v6, :cond_16

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_15

    add-int/lit8 v0, p0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_8
    and-int/lit16 p0, p0, 0xfc

    :goto_9
    shr-int/2addr p0, v1

    or-int/2addr p0, v0

    goto :goto_b

    :cond_15
    add-int/lit8 v0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_a
    and-int/lit8 p0, p0, 0x3c

    goto :goto_9

    :cond_16
    add-int/lit8 v0, p0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_a

    :cond_17
    add-int/lit8 v0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_8

    :goto_b
    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_18
    :goto_c
    :pswitch_7
    const/16 p0, 0x400

    return p0

    :cond_19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_1a

    move v2, v3

    goto :goto_f

    :cond_1a
    const/16 p0, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    const/16 v0, 0x1c

    move v2, v0

    move v1, v3

    :goto_d
    if-ge v1, p0, :cond_1b

    add-int/lit8 v5, v1, 0x1b

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 p0, v2, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    move v1, v3

    :goto_e
    if-ge v1, p0, :cond_1c

    add-int/lit8 v5, v2, 0x1b

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    add-int/2addr v2, v0

    :goto_f
    add-int/lit8 p0, v2, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    add-int/lit8 p0, p0, 0x1b

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p0

    if-le v1, v4, :cond_1d

    add-int/2addr p0, v4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    :cond_1d
    invoke-static {v0, v3}, Landroidx/media3/container/OpusUtil;->b(BB)J

    move-result-wide p0

    const-wide/32 v0, 0xbb80

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final A(Landroidx/media3/common/Format;)I
    .locals 5

    iget v0, p1, Landroidx/media3/common/Format;->I:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/media3/common/Format;->I:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iput v1, p1, Landroidx/media3/common/Format$Builder;->H:I

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object p1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object p0

    invoke-interface {v4, p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->j(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    move-result-object p0

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->d:I

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final B(Z)V
    .locals 6

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void
.end method

.method public final C(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/media3/common/AuxEffectInfo;->a:I

    iget v1, p1, Landroidx/media3/common/AuxEffectInfo;->b:F

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    iget v3, v3, Landroidx/media3/common/AuxEffectInfo;->a:I

    if-eq v3, v0, :cond_1

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->l(I)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->n(F)V

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    return-void
.end method

.method public final D(J)V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->I:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->c:Landroidx/media3/common/audio/SonicAudioProcessor;

    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/4 v7, 0x1

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v6, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_1

    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    :cond_1
    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v5, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_4

    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    :cond_4
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_5
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    goto :goto_3

    :goto_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->I:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    iput-boolean v0, v2, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->o:Z

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J()J

    move-result-wide v7

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-static {p1, v7, v8}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->a()V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz p2, :cond_7

    new-instance v0, Lac;

    invoke-direct {v0, p1, p0, v1}, Lac;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final E(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;
    .locals 10

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->l(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object v9, v0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget v6, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-boolean v8, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIIILandroidx/media3/common/Format;ZLjava/lang/Exception;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    :cond_0
    throw v1
.end method

.method public final F(J)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    iget v8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:I

    invoke-interface {v6, v8, p1, p2, v7}, Landroidx/media3/exoplayer/audio/AudioOutput;->q(IJLjava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutput$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:J

    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    iput-boolean v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    if-nez v2, :cond_5

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->a()V

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    :cond_6
    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    int-to-long v2, p1

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    :cond_8
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    :cond_9
    :goto_2
    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->c:Z

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    goto :goto_3

    :cond_c
    move v4, v5

    :goto_3
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->b:I

    invoke-direct {v1, p1, v2, v4}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/Format;Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p0, :cond_d

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    :cond_d
    if-nez p2, :cond_e

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a(Ljava/lang/Exception;)V

    return-void

    :cond_e
    throw v1
.end method

.method public final G()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F(J)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    iget-object v0, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessor;->i()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v3
.end method

.method public final H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;-><init>(Landroidx/media3/common/Format;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->b:Landroidx/media3/common/AudioAttributes;

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->d:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroid/media/AudioDeviceInfo;

    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->c:Landroid/media/AudioDeviceInfo;

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    iput p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->e:I

    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    iput-boolean p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->g:Z

    const/4 p1, -0x1

    iput p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->h:I

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:I

    iput p0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->f:I

    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)V

    return-object p0
.end method

.method public final J()J
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    return-wide v0
.end method

.method public final K()Z
    .locals 13

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    :goto_0
    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    :goto_2
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const v5, 0xf4240

    if-le v0, v5, :cond_f

    div-int/lit8 v0, v0, 0x2

    iget v5, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    rem-int v6, v0, v5

    if-eqz v6, :cond_4

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    goto :goto_4

    :cond_4
    move v5, v0

    :goto_4
    iget-object v0, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v0

    iput v5, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->f:I

    new-instance v11, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    :try_start_1
    invoke-virtual {p0, v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    new-instance v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v7, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-object v8, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    iget v9, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    iget v10, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    iget-object v12, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V

    iput-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v4, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-direct {v3, p0, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget v4, v0, Landroidx/media3/common/Format;->J:I

    iget v0, v0, Landroidx/media3/common/Format;->K:I

    invoke-interface {v3, v4, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->f(II)V

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    if-eqz v0, :cond_6

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->h(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:F

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/audio/AudioOutput;->g(F)V

    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    iget v0, v0, Landroidx/media3/common/AuxEffectInfo;->a:I

    if-eqz v0, :cond_8

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->l(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Landroidx/media3/common/AuxEffectInfo;

    iget v3, v3, Landroidx/media3/common/AuxEffectInfo;->b:F

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/audio/AudioOutput;->n(F)V

    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_9

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_9
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getAudioSessionId()I

    move-result v0

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    if-eq v0, v3, :cond_a

    move v2, v1

    :cond_a
    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_e

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    new-instance v4, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v5, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget v6, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    iget v7, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    iget-boolean v8, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z

    iget-boolean v9, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    iget v10, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;-><init>(IIIZZI)V

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v3, :cond_b

    new-instance v5, Lyb;

    invoke-direct {v5, v0, v4, v1}, Lyb;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    if-eqz v2, :cond_e

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    iput v3, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    new-instance v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-direct {v9, v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    new-instance v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    iget v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    iget v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    iget-object v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_c

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    iput v3, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    new-instance v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-direct {v9, v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    new-instance v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    iget v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    iget v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    iget-object v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :cond_c
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_d

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->M1:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;->d(I)V

    :cond_d
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v2, :cond_e

    new-instance v3, Lt6;

    invoke-direct {v3, v0, p0, v1}, Lt6;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v0, v5

    goto/16 :goto_2

    :cond_f
    iget-object v0, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    :goto_6
    throw v3
.end method

.method public final L()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F(J)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->e(Ljava/nio/ByteBuffer;)V

    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v0

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final N()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->k(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v7
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    iget v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    iget-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    invoke-direct {v1, v0, p0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    invoke-static {v1}, Lbm;->i(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public final O(Ljava/nio/ByteBuffer;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v3

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    int-to-long v5, v1

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :goto_1
    move-object/from16 v3, p1

    goto/16 :goto_9

    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v7, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v7, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_1b

    if-ge v2, v1, :cond_1b

    const/high16 v16, 0x4f000000

    const/high16 v17, -0x31000000

    const/high16 v10, 0x50000000

    const-wide v18, 0x41dfffffffc00000L    # 2.147483647E9

    const/high16 v11, 0x10000000

    const/16 v12, 0x16

    const-wide/high16 v20, -0x3e20000000000000L    # -2.147483648E9

    const/16 v13, 0x15

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v9, 0x2

    if-eq v7, v9, :cond_f

    if-eq v7, v15, :cond_e

    if-eq v7, v14, :cond_c

    if-eq v7, v13, :cond_b

    if-eq v7, v12, :cond_a

    if-eq v7, v11, :cond_9

    if-eq v7, v10, :cond_8

    const/high16 v10, 0x60000000

    if-eq v7, v10, :cond_7

    const/high16 v10, 0x70000000

    if-ne v7, v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpg-double v13, v11, v13

    if-gez v13, :cond_5

    neg-double v11, v11

    mul-double v11, v11, v20

    :goto_3
    double-to-int v11, v11

    goto/16 :goto_7

    :cond_5
    mul-double v11, v11, v18

    goto :goto_3

    :cond_6
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    :goto_4
    or-int/2addr v11, v12

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    goto :goto_4

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    :goto_5
    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v13}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_d

    neg-float v11, v11

    mul-float v11, v11, v17

    :goto_6
    float-to-int v11, v11

    goto :goto_7

    :cond_d
    mul-float v11, v11, v16

    goto :goto_6

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    goto :goto_7

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    goto :goto_5

    :goto_7
    int-to-long v11, v11

    int-to-long v13, v2

    mul-long/2addr v11, v13

    div-long/2addr v11, v4

    long-to-int v11, v11

    if-eq v7, v9, :cond_1a

    if-eq v7, v15, :cond_19

    const/4 v9, 0x4

    if-eq v7, v9, :cond_17

    const/16 v9, 0x15

    if-eq v7, v9, :cond_16

    const/16 v9, 0x16

    if-eq v7, v9, :cond_15

    const/high16 v10, 0x10000000

    if-eq v7, v10, :cond_14

    const/high16 v9, 0x50000000

    if-eq v7, v9, :cond_13

    const/high16 v10, 0x60000000

    if-eq v7, v10, :cond_12

    const/high16 v10, 0x70000000

    if-ne v7, v10, :cond_11

    if-gez v11, :cond_10

    int-to-double v9, v11

    neg-double v9, v9

    div-double v9, v9, v20

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_10
    int-to-double v9, v11

    div-double v9, v9, v18

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_11
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_12
    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v9, v11

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_13
    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_14
    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_15
    int-to-byte v9, v11

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_16
    shr-int/lit8 v9, v11, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_17
    if-gez v11, :cond_18

    int-to-float v9, v11

    neg-float v9, v9

    div-float v9, v9, v17

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_18
    int-to-float v9, v11

    div-float v9, v9, v16

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_19
    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_1a
    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int v10, v8, v6

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_9
    iput-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final P()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->j:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final b(Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A(Landroidx/media3/common/Format;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->c()V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result v0

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-static {p1, v2, v3}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result p1

    invoke-direct {v1, v0, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioOutput;->f(II)V

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    new-instance v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:I

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->a()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->release()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    iput-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    iput-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroid/os/Handler;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final g(F)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:F

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:F

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->g(F)V

    :cond_0
    return-void
.end method

.method public final h(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public final i(Landroidx/media3/common/util/Clock;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->i(Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public final j(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    return-void
.end method

.method public final k(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->j(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    move-result-object p0

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->a:Z

    iput-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->b:Z

    iput-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->c:Z

    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0
.end method

.method public final l()Z
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->i()J

    move-result-wide v3

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->k()I

    move-result p0

    int-to-long v5, p0

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final m(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    if-ne v0, p1, :cond_2

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Z

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    :cond_2
    return-void
.end method

.method public final n()J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->p()J

    move-result-wide v1

    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->p()J

    move-result-wide v1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-static {p0}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    move-result p0

    const v0, -0x7fffffff

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    int-to-long v5, p0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final o(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->pause()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    :cond_0
    return-void
.end method

.method public final r(Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->release()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Landroidx/media3/exoplayer/audio/c;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->m(Landroidx/media3/exoplayer/audio/c;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->release()V

    return-void
.end method

.method public final reset()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->reset()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->reset()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    move v3, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/audio/AudioProcessor;

    sget-object v5, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->b:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    invoke-interface {v4, v5}, Landroidx/media3/common/audio/AudioProcessor;->h(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    invoke-interface {v4}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-boolean v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    return-void
.end method

.method public final s(I)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    return-void
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroid/media/AudioDeviceInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_0
    return-void
.end method

.method public final t()J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->i()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J()J

    move-result-wide v3

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->c:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->c:J

    sub-long/2addr v0, v4

    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->a:Landroidx/media3/common/PlaybackParameters;

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-static {v3, v0, v1}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    if-eqz v2, :cond_3

    iget-object v2, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->c:Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v2}, Landroidx/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->a(J)J

    move-result-wide v0

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v6, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->b:J

    add-long/2addr v6, v0

    sub-long/2addr v0, v3

    iput-wide v0, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->d:J

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->b:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->d:J

    add-long v6, v1, v3

    :goto_1
    iget-object v0, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->q:J

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    sub-long v4, v0, v4

    iget-object v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v6, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    invoke-static {v6, v4, v5}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v4

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroid/os/Handler;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroid/os/Handler;

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/audio/d;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/audio/d;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-wide v2

    :cond_6
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final u()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->stop()V

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Z

    :cond_2
    return-void
.end method

.method public final v(IJLjava/nio/ByteBuffer;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    invoke-virtual {v9, v5}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    if-nez v5, :cond_4

    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    :cond_3
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioOutput;->stop()V

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    :cond_6
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioOutput;->o()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioOutput;->m()V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget v10, v9, Landroidx/media3/common/Format;->J:I

    iget v9, v9, Landroidx/media3/common/Format;->K:I

    invoke-interface {v5, v10, v9}, Landroidx/media3/exoplayer/audio/AudioOutput;->f(II)V

    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    :cond_7
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    :cond_8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v5

    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    if-nez v5, :cond_a

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K()Z

    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_a

    goto/16 :goto_7

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->c:Z

    if-nez v1, :cond_9

    invoke-virtual {v9, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a(Ljava/lang/Exception;)V

    return v7

    :cond_9
    throw v0

    :cond_a
    iput-object v8, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    iput-wide v10, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_c

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {v5, v11}, Landroidx/media3/exoplayer/audio/AudioOutput;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioOutput;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    :cond_b
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c()V

    :cond_c
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_18

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_d

    move v5, v6

    goto :goto_3

    :cond_d
    move v5, v7

    :goto_3
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_4

    :cond_e
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-nez v5, :cond_f

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    if-nez v5, :cond_f

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-static {v5, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    if-nez v5, :cond_f

    :goto_4
    return v6

    :cond_f
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_11

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G()Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    :cond_11
    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    iget-object v15, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v15, v15, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    move-wide/from16 v16, v9

    int-to-long v9, v15

    div-long/2addr v13, v9

    goto :goto_5

    :cond_12
    move-wide/from16 v16, v9

    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    :goto_5
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget-wide v9, v9, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    sub-long/2addr v13, v9

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->H:I

    invoke-static {v5, v13, v14}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v9

    add-long/2addr v9, v11

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    if-nez v5, :cond_14

    sub-long v11, v9, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x30d40

    cmp-long v5, v11, v13

    if-lez v5, :cond_14

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_13

    new-instance v11, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v11, v2, v3, v9, v10}, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {v5, v11}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    :cond_13
    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    :cond_14
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    if-eqz v5, :cond_16

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G()Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    sub-long v9, v2, v9

    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    add-long/2addr v11, v9

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_16

    cmp-long v9, v9, v16

    if-eqz v9, :cond_16

    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S1:Z

    :cond_16
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    goto :goto_6

    :cond_17
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v11, v9

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    :goto_6
    iput-object v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    iput v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:I

    :cond_18
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_19

    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    iput v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:I

    return v6

    :cond_19
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "Resetting stalled audio output"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_1a
    :goto_7
    return v7
.end method

.method public final w(Landroidx/media3/common/Format;[I)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Landroidx/media3/exoplayer/audio/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/c;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/c;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Landroidx/media3/exoplayer/audio/c;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->m(Landroidx/media3/exoplayer/audio/c;)V

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget v1, p1, Landroidx/media3/common/Format;->I:I

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v0, p1, Landroidx/media3/common/Format;->G:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->u(I)I

    move-result v1

    mul-int/2addr v1, v0

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->a:[Landroidx/media3/common/audio/AudioProcessor;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->i([Ljava/lang/Object;)V

    new-instance v3, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v3, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    :cond_1
    iget v0, p1, Landroidx/media3/common/Format;->J:I

    iget v4, p1, Landroidx/media3/common/Format;->K:I

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iput v0, v5, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->i:I

    iput v4, v5, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->j:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    iput-object p2, v0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->i:[I

    new-instance p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {p2, p1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    :try_start_0
    iget-object v0, v3, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    sget-object v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p2, v4}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v5, p2}, Landroidx/media3/common/audio/AudioProcessor;->j(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v6

    invoke-interface {v5}, Landroidx/media3/common/audio/AudioProcessor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v6, p2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->q(Z)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v0, p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    iget v4, p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v4, v5, Landroidx/media3/common/Format$Builder;->H:I

    iget p2, p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iput p2, v5, Landroidx/media3/common/Format$Builder;->G:I

    iput v0, v5, Landroidx/media3/common/Format$Builder;->F:I

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-static {v4}, Landroidx/media3/common/util/Util;->u(I)I

    move-result v4

    mul-int/2addr v4, v0

    move-object v6, p2

    move v7, v1

    move v8, v4

    :goto_1
    move-object v10, v3

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p2}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {p2, p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw p2

    :cond_5
    new-instance v3, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {v3, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, -0x1

    move-object v6, p1

    move v7, v1

    move v8, v7

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object p2

    iget-object v0, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    :try_start_2
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v1, p2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->k(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v9
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    iget p2, v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget-boolean v1, v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    const-string v3, ")"

    if-eqz p2, :cond_8

    iget p2, v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    if-eqz p2, :cond_7

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    new-instance v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    :cond_6
    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    :cond_7
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    const-string p1, "Invalid output channel config (isOffload="

    invoke-static {p1, v3, v1}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw p0

    :cond_8
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    const-string p1, "Invalid output encoding (isOffload="

    invoke-static {p1, v3, v1}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw p0

    :catch_1
    move-exception v0

    move-object v5, p1

    move-object p0, v0

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {p1, p0, v5}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw p1
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    return-void
.end method

.method public final y()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()V

    :cond_0
    return-void
.end method

.method public final z()Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    instance-of v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
