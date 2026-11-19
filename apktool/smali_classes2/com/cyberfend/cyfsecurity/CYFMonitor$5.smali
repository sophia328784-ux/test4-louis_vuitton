.class Lcom/cyberfend/cyfsecurity/CYFMonitor$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static JtwhEv:Ljava/lang/String;

.field static QhGife:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->ugV(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ugV(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->ugV(Z)V

    :cond_0
    const-string p0, "KWg\\A\u0012LLtP[U[Q\u0017MY\no\u007fn\u000eBQOCDAW\u001c\u0007"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->QhGife:Ljava/lang/String;

    const-string p0, "M|S~\\\\FT~C"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->JtwhEv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->JtwhEv:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;->QhGife:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
