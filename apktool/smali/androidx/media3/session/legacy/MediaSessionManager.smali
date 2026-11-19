.class public final Landroidx/media3/session/legacy/MediaSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;,
        Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;,
        Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;,
        Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplApi28;,
        Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static volatile c:Landroidx/media3/session/legacy/MediaSessionManager;


# instance fields
.field public a:Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/MediaSessionManager;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;
    .locals 3

    sget-object v0, Landroidx/media3/session/legacy/MediaSessionManager;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/session/legacy/MediaSessionManager;->c:Landroidx/media3/session/legacy/MediaSessionManager;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iput-object p0, v2, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->b:Landroid/content/ContentResolver;

    iput-object v2, v1, Landroidx/media3/session/legacy/MediaSessionManager;->a:Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;

    sput-object v1, Landroidx/media3/session/legacy/MediaSessionManager;->c:Landroidx/media3/session/legacy/MediaSessionManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/media3/session/legacy/MediaSessionManager;->c:Landroidx/media3/session/legacy/MediaSessionManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z
    .locals 6

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionManager;->a:Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;

    iget-object p1, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplApi28;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->a:Landroid/content/Context;

    iget v1, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->c:I

    iget-object v2, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->a:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v1, v4, :cond_4

    iget v1, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->b:I

    iget v4, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->c:I

    const-string v5, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->a(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplApi28;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v5}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->a(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplApi28;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->b:Landroid/content/ContentResolver;

    const-string p1, "enabled_notification_listeners"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move p1, v3

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_3

    aget-object v0, p0, p1

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Package "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;)V

    return v3
.end method
