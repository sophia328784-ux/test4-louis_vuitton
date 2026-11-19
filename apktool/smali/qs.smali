.class public final synthetic Lqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/NetworkTypeObserver$Listener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs;->a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    iget-object v1, p0, Lqs;->a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    sget-object p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    monitor-enter v1

    :try_start_0
    iget p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->n:I

    if-eqz p0, :cond_0

    iget-boolean v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    if-ne p0, p1, :cond_1

    :try_start_1
    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    iput p1, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->n:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    if-ne p1, p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;

    if-nez p0, :cond_4

    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->a:Landroid/content/Context;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/common/base/Ascii;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h(I)J

    move-result-wide p0

    iput-wide p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->d:Landroidx/media3/common/util/Clock;

    invoke-interface {p0}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide p0

    iget v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    const/4 v7, 0x0

    if-lez v0, :cond_5

    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    sub-long v2, p0, v2

    long-to-int v0, v2

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v7

    :goto_1
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i(IJJ)V

    iput-wide p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    const-wide/16 p0, 0x0

    iput-wide p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    iput-wide p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->k:J

    iput-wide p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->j:J

    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->f:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    iput v7, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->e:I

    iput v7, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :cond_6
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
