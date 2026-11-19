.class public abstract LZjTIAZ/XbALEN;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const-string v0, "j@sRF^[\u007faTGZZDZYGIN"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/XbALEN;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2

    const-class v0, LZjTIAZ/XbALEN;

    monitor-enter v0

    :try_start_0
    sget-object v1, LZjTIAZ/XbALEN;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    const-class v0, LZjTIAZ/XbALEN;

    monitor-enter v0

    :try_start_0
    sget-object v1, LZjTIAZ/XbALEN;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, LZjTIAZ/XbALEN;

    monitor-enter v0

    :try_start_0
    const-string v1, "M|SvEWATCTFIYB"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\@fVGFFNv\u0011C]YCRK"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v1, "j@sRF^[\u007faTGZZDZYGIN"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LZjTIAZ/XbALEN;->b:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, LZjTIAZ/XbALEN;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
