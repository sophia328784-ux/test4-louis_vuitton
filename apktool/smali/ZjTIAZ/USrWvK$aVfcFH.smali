.class LZjTIAZ/USrWvK$aVfcFH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static EMGdRO:Ljava/lang/String;

.field static QzZcwQ:Ljava/lang/String;

.field static ZdtYDH:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/USrWvK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/USrWvK$aVfcFH;->CIl(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/USrWvK;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/USrWvK$aVfcFH;->ZRQiWB:LZjTIAZ/USrWvK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic CIl(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/USrWvK$aVfcFH;->CIl(Z)V

    :cond_0
    const-string p0, "M|SdVPyItFgI[XRJ"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/USrWvK$aVfcFH;->ZdtYDH:Ljava/lang/String;

    const-string p0, "Y@weZWX\u0000eXXYQ\u0016XM]"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/USrWvK$aVfcFH;->EMGdRO:Ljava/lang/String;

    const-string p0, "ZLxV\\G[\u0000cD[RTT[]\tOY^B\\\u0015\u0010"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/USrWvK$aVfcFH;->QzZcwQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/USrWvK$aVfcFH;->ZRQiWB:LZjTIAZ/USrWvK;

    iget-object v1, v1, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LZjTIAZ/USrWvK$aVfcFH;->ZdtYDH:Ljava/lang/String;

    sget-object v2, LZjTIAZ/USrWvK$aVfcFH;->EMGdRO:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p0, p0, LZjTIAZ/USrWvK$aVfcFH;->ZRQiWB:LZjTIAZ/USrWvK;

    invoke-static {p0}, LZjTIAZ/USrWvK;->g(LZjTIAZ/USrWvK;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    sget-object v1, LZjTIAZ/USrWvK$aVfcFH;->ZdtYDH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LZjTIAZ/USrWvK$aVfcFH;->QzZcwQ:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
