.class LZjTIAZ/XNPXeV$OAgEI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static XCXNC:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lint;"
        }
    .end annotation
.end field

.field static eCqBTX:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/XNPXeV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/XNPXeV$OAgEI;->ZNa(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/XNPXeV;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ZNa(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/XNPXeV$OAgEI;->ZNa(Z)V

    :cond_0
    const-string p0, "i@aCA]_\u0000bHF\u0012@EU\u0016JEEJDI"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XNPXeV$OAgEI;->eCqBTX:Ljava/lang/String;

    const-string p0, "i@aCA]_\u0000bHF\u0012@EU\u0016Z^JXH"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XNPXeV$OAgEI;->XCXNC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    sget-object v1, LZjTIAZ/XNPXeV$OAgEI;->XCXNC:Ljava/lang/String;

    invoke-static {v0, v1}, LZjTIAZ/XNPXeV;->a(LZjTIAZ/XNPXeV;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v1, LZjTIAZ/XNPXeV;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, LZjTIAZ/XNPXeV$OAgEI;->eCqBTX:Ljava/lang/String;

    invoke-static {v1, v0}, LZjTIAZ/XNPXeV;->a(LZjTIAZ/XNPXeV;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, LZjTIAZ/XNPXeV;->a:Z

    :goto_0
    iget-object v0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    iget v1, v0, LZjTIAZ/XNPXeV;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LZjTIAZ/XNPXeV$NQequ;

    invoke-direct {v3, v0, v1}, LZjTIAZ/XNPXeV$NQequ;-><init>(LZjTIAZ/XNPXeV;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    iget-object v0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    iget v1, v0, LZjTIAZ/XNPXeV;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v2, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LZjTIAZ/XNPXeV$NQequ;

    invoke-direct {v3, v0, v1}, LZjTIAZ/XNPXeV$NQequ;-><init>(LZjTIAZ/XNPXeV;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    iget-object v0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    iget v1, v0, LZjTIAZ/XNPXeV;->g:I

    sget-object v2, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LZjTIAZ/XNPXeV$NQequ;

    invoke-direct {v3, v0, v1}, LZjTIAZ/XNPXeV$NQequ;-><init>(LZjTIAZ/XNPXeV;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    iget-object p0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    invoke-static {p0}, LZjTIAZ/XNPXeV;->b(LZjTIAZ/XNPXeV;)V

    return-void

    :goto_1
    iget-object p0, p0, LZjTIAZ/XNPXeV$OAgEI;->ZRQiWB:LZjTIAZ/XNPXeV;

    invoke-static {p0}, LZjTIAZ/XNPXeV;->b(LZjTIAZ/XNPXeV;)V

    throw v0
.end method
