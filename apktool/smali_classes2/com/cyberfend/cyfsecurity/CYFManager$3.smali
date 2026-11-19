.class Lcom/cyberfend/cyfsecurity/CYFManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static GVIEUx:Ljava/lang/String;

.field static VpEjW:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ucP(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ucP(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ucP(Z)V

    :cond_0
    const-string p0, "]F}VWGCEu\u0011GYSDRKA\nMMDBJT"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->VpEjW:Ljava/lang/String;

    const-string p0, "M|S~R\\NGtC"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->GVIEUx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v2}, Lcom/cyberfend/cyfsecurity/CYFManager;->t()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    :goto_0
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFManager$3;->GVIEUx:Ljava/lang/String;

    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFManager$3;->VpEjW:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Throwable;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager$3;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    throw v2
.end method
