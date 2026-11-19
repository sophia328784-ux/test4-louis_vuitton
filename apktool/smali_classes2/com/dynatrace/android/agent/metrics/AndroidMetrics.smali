.class public Lcom/dynatrace/android/agent/metrics/AndroidMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

.field public final c:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public volatile g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;

.field public volatile i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public volatile n:Ljava/lang/String;

.field public o:I

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/String;

.field public r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

.field public s:Ljava/lang/String;

.field public t:Lcom/dynatrace/agent/metrics/AppVersion;

.field public u:J

.field public final v:Lcom/dynatrace/android/agent/TimeLineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OFFLINE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->k:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->o:I

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->u:J

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->c:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    new-instance v1, Lcom/dynatrace/android/agent/util/SdkVersionProviderImpl;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/util/SdkVersionProviderImpl;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;-><init>(Landroid/content/Context;Lcom/dynatrace/android/agent/util/SdkVersionProvider;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->c:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    invoke-static {p1}, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->b(Landroid/content/Context;)Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    :goto_0
    sget-object p1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    return-void
.end method

.method public static a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    if-nez v0, :cond_1

    const-class v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    sget-object v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/net/NetworkInfo;
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lz1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->q:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "_"

    invoke-static {v1, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v2, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->d:Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v5, "/proc/meminfo"

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v5, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_2
    :goto_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_5

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception p0

    :goto_2
    move-object v4, v1

    goto :goto_6

    :catch_2
    move v6, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v5, v4

    goto :goto_2

    :catch_3
    move v6, v3

    move-object v5, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v5, v4

    goto :goto_6

    :catch_4
    move v6, v3

    move-object v1, v4

    move-object v5, v1

    :catch_5
    :goto_3
    :try_start_6
    sget-boolean v7, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_5
    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->d:Ljava/lang/Integer;

    goto :goto_9

    :goto_6
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_7
    :goto_8
    throw p0

    :cond_8
    :goto_9
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Verbose metrics updated in "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->d()V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->e()V

    iget-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "Could not find a default Display"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    iget v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->k:I

    invoke-static {v0, v1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector;->b(Landroid/view/Display;I)Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    move-result-object v4

    :cond_c
    :goto_a
    iput-object v4, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    sget-object p0, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/dynatrace/agent/di/CoreComponent;->e:Lcom/dynatrace/agent/metrics/MetricsRepository;

    invoke-virtual {p0, v4}, Lcom/dynatrace/agent/metrics/MetricsRepository;->b(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;)V

    :cond_d
    return-void
.end method

.method public final d()V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v2, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->h:Ljava/lang/String;

    :try_start_0
    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v3, 0xfa

    invoke-static {v3, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Basic metrics updated in "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OTHER:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->LAN:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->WIFI:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->MOBILE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OFFLINE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    :goto_1
    iput-object v2, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    sget-object v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics$1;->a:[I

    iget-object v3, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    iput-object v4, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v1, "Ethernet"

    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_4
    const-string v1, "5G"

    goto :goto_2

    :pswitch_5
    const-string v1, "4G"

    goto :goto_2

    :pswitch_6
    const-string v1, "3G"

    goto :goto_2

    :pswitch_7
    const-string v1, "2G"

    :goto_2
    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v1, "802.11x"

    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->k:I

    :cond_6
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->a()I

    move-result v1

    iput v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->o:I

    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_8
    move-object v1, v4

    :goto_4
    if-nez v1, :cond_9

    iput-object v4, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->p:Ljava/lang/Integer;

    goto :goto_5

    :cond_9
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v5, 0x100000

    div-long/2addr v1, v5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->p:Ljava/lang/Integer;

    :goto_5
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->c:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->a()Lcom/dynatrace/agent/metrics/AppVersion;

    move-result-object v1

    iget-wide v2, v1, Lcom/dynatrace/agent/metrics/AppVersion;->a:J

    const-wide/16 v5, 0x1

    cmp-long v2, v2, v5

    if-ltz v2, :cond_b

    iget-object v2, v1, Lcom/dynatrace/agent/metrics/AppVersion;->b:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    iput-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->t:Lcom/dynatrace/agent/metrics/AppVersion;

    goto :goto_7

    :cond_b
    :goto_6
    iput-object v4, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->t:Lcom/dynatrace/agent/metrics/AppVersion;

    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->u:J

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Common metrics updated in "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
