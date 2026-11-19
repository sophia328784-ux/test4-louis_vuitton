.class final LZjTIAZ/XKbmNt;
.super Ljava/lang/Object;


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field public final a:LZjTIAZ/JOGAgw$JOGAgw;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "K]vVCFFO\u007f\u000b"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/XKbmNt;->d:Ljava/lang/String;

    const-string v0, "M|S}VFXOcZfYG@^[L~J_F"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/XKbmNt;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/JOGAgw$JOGAgw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/XKbmNt;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LZjTIAZ/XKbmNt;->c:Landroid/os/Handler;

    iput-object p1, p0, LZjTIAZ/XKbmNt;->a:LZjTIAZ/JOGAgw$JOGAgw;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, LZjTIAZ/XKbmNt$XGFGPq;

    invoke-direct {v0, p0, p1}, LZjTIAZ/XKbmNt$XGFGPq;-><init>(LZjTIAZ/XKbmNt;Lorg/json/JSONObject;)V

    iget-object p0, p0, LZjTIAZ/XKbmNt;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/net/URL;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LZjTIAZ/XKbmNt;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LZjTIAZ/XKbmNt$XKbmNt;

    invoke-direct {v1, p0, p1}, LZjTIAZ/XKbmNt$XKbmNt;-><init>(LZjTIAZ/XKbmNt;Ljava/net/URL;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, LZjTIAZ/XKbmNt;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LZjTIAZ/XKbmNt;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p1, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LZjTIAZ/XKbmNt;->a(Lorg/json/JSONObject;)V

    return-void
.end method
