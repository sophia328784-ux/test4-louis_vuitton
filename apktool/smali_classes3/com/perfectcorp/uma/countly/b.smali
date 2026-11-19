.class final Lcom/perfectcorp/uma/countly/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/perfectcorp/uma/countly/p;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:Landroid/content/Context;

.field public d:Ljava/util/concurrent/Future;

.field public e:Lcom/perfectcorp/uma/internal/b;

.field public f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/uma/countly/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/b;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/perfectcorp/uma/internal/b;->a:Lcom/perfectcorp/uma/internal/b$a;

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    const-string v0, "http://undefined"

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    const-string v0, "undefined"

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/uma/countly/u;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/perfectcorp/uma/countly/u;->a:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&tz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perfectcorp/uma/countly/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&metrics="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perfectcorp/uma/countly/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {p0}, Lcom/perfectcorp/uma/internal/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/b;->d()V

    new-instance v0, Lcom/perfectcorp/uma/countly/u;

    invoke-direct {v0}, Lcom/perfectcorp/uma/countly/u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/uma/countly/b;->a(Lcom/perfectcorp/uma/countly/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&end_session=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_0

    const-string v1, "&session_duration="

    invoke-static {p1, v0, v1}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {p1}, Lcom/perfectcorp/uma/internal/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/uma/countly/p;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/b;->e()V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/b;->c:Landroid/content/Context;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_carrier"

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "CountlyDeviceInfo"

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v2, "No carrier found"

    invoke-static {v4, v2}, Lcom/perfectcorp/uma/b$d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_resolution"

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_density"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0x78

    if-eq v2, v5, :cond_a

    const/16 v5, 0xa0

    if-eq v2, v5, :cond_9

    const/16 v5, 0xd5

    if-eq v2, v5, :cond_8

    const/16 v5, 0xf0

    if-eq v2, v5, :cond_7

    const/16 v5, 0x140

    if-eq v2, v5, :cond_6

    const/16 v5, 0x190

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1e0

    if-eq v2, v5, :cond_4

    const/16 v5, 0x280

    if-eq v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "XXXHDPI"

    goto :goto_1

    :cond_4
    const-string v3, "XXHDPI"

    goto :goto_1

    :cond_5
    const-string v3, "XMHDPI"

    goto :goto_1

    :cond_6
    const-string v3, "XHDPI"

    goto :goto_1

    :cond_7
    const-string v3, "HDPI"

    goto :goto_1

    :cond_8
    const-string v3, "TVDPI"

    goto :goto_1

    :cond_9
    const-string v3, "MDPI"

    goto :goto_1

    :cond_a
    const-string v3, "LDPI"

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_locale"

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_app_version"

    const-string v2, "1.0"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    :try_start_4
    const-string p1, "No app version found"

    sget-object v3, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    const/4 v5, 0x5

    invoke-interface {v3, v5, v4, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    iput-object p1, p0, Lcom/perfectcorp/uma/countly/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    const-string p0, "server URL is not valid"

    :goto_0
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "countly store has not been set"

    goto :goto_0

    :cond_2
    const-string p0, "app key has not been set"

    goto :goto_0

    :cond_3
    const-string p0, "context has not been set"

    goto :goto_0
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    const-string v1, "CONNECTION_TABLE"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perfectcorp/uma/s;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/b;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string v0, "http://undefined"

    iget-object v1, p0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "undefined"

    iget-object v1, p0, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/perfectcorp/uma/countly/a;

    iget-object v2, p0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    sget-object v5, Lcom/perfectcorp/uma/countly/d;->h:Lcom/perfectcorp/uma/countly/d$b$a;

    sget-boolean v6, Lcom/perfectcorp/uma/countly/d;->k:Z

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/uma/countly/a;-><init>(Ljava/lang/String;Lcom/perfectcorp/uma/countly/p;Lcom/perfectcorp/uma/countly/b;Lcom/perfectcorp/uma/countly/d$b;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v4, Lcom/perfectcorp/uma/countly/b;->d:Ljava/util/concurrent/Future;

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method
