.class public LZjTIAZ/JOGAgw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/JOGAgw$JOGAgw;
    }
.end annotation


# static fields
.field public static final a:LZjTIAZ/JOGAgw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LZjTIAZ/JOGAgw;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZjTIAZ/JOGAgw;->a:LZjTIAZ/JOGAgw;

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    :try_start_0
    new-instance v0, LZjTIAZ/ZhhBOJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LZjTIAZ/ZhhBOJ;-><init>(Landroid/app/Application;LZjTIAZ/ZhhBOJ$zgXxaZ;)V

    const-string p0, "_bm"

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "get_info"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "deviceId"

    invoke-virtual {v0}, LZjTIAZ/ZhhBOJ;->androidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "mode"

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/app/Application;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "type="

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    :try_start_0
    new-instance v1, LZjTIAZ/ZDnQwv;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LZjTIAZ/ZDnQwv;-><init>(Landroid/app/Application;LZjTIAZ/ZDnQwv$zDnQwv;)V

    const-string p0, "_bm"

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "get_params"

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const-string p2, "sdk-pow"

    goto :goto_0

    :cond_1
    const-string p2, "sdk-cca,sdk-dci"

    goto :goto_0

    :cond_2
    const-string p2, "sdk-pow,sdk-dci"

    goto :goto_0

    :cond_3
    const-string p2, "sdk-dci"

    goto :goto_0

    :cond_4
    const-string p2, "sdk-cca"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "starttime"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->startTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "systemVersion"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->systemVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "model"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "deviceHardwareType"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->hardWareType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "appIdentifier"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->appIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "deviceId"

    invoke-virtual {v1}, LZjTIAZ/ZDnQwv;->androidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/app/Application;Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V
    .locals 1

    :try_start_0
    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, LZjTIAZ/JOGAgw;->a(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LZjTIAZ/XKbmNt;

    invoke-direct {p2, p3}, LZjTIAZ/XKbmNt;-><init>(LZjTIAZ/JOGAgw$JOGAgw;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LZjTIAZ/XKbmNt;->b(Ljava/net/URL;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, LZjTIAZ/JOGAgw;->d(Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Invalid Request"

    invoke-virtual {p0, p1, p3}, LZjTIAZ/JOGAgw;->d(Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V

    return-void
.end method

.method public final c(Landroid/app/Application;Ljava/lang/String;ILZjTIAZ/JOGAgw$JOGAgw;)V
    .locals 1

    :try_start_0
    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, LZjTIAZ/JOGAgw;->e(Landroid/app/Application;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LZjTIAZ/XKbmNt;

    invoke-direct {p2, p4}, LZjTIAZ/XKbmNt;-><init>(LZjTIAZ/JOGAgw$JOGAgw;)V

    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, LZjTIAZ/XKbmNt;->b(Ljava/net/URL;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4}, LZjTIAZ/JOGAgw;->d(Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Invalid Request"

    invoke-virtual {p0, p1, p4}, LZjTIAZ/JOGAgw;->d(Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V

    return-void
.end method

.method public final d(Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LZjTIAZ/JOGAgw$CNBvWN;

    invoke-direct {v1, p0, p1, p2}, LZjTIAZ/JOGAgw$CNBvWN;-><init>(LZjTIAZ/JOGAgw;Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
