.class Lcom/cyberfend/cyfsecurity/CYFMonitor$4;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/JOGAgw$JOGAgw;


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "M|S~\\\\FT~C"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->d:Ljava/lang/String;

    const-string v0, "mUglYApUc]"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->e:Ljava/lang/String;

    const-string v0, "zJ~V]"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->f:Ljava/lang/String;

    const-string v0, "GKcR_[K\u0000cTANL\u0016^V]OYZLB\u0015\u0010"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->g:Ljava/lang/String;

    const-string v0, "|@aAJmIRt@"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    const/16 v1, 0x13

    iput v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    return-void
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v1, 0x14

    iput v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 9

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->h:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v2, v0

    goto :goto_0

    :catch_1
    move-object v1, v0

    move-object v2, v1

    :catch_2
    :goto_0
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v3, 0x16

    iput v3, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    :goto_1
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v3, 0x15

    iput v3, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    const/4 p1, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    move v3, p1

    :goto_2
    sput-boolean v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->m:Z

    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->a:Landroid/app/Application;

    iget-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1, v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [I

    sput-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    move v2, p1

    :goto_3
    if-ge v2, v1, :cond_1

    :try_start_3
    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    aget v4, v4, v2

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFMonitor;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/cyberfend/cyfsecurity/CYFMonitor$4$1;

    invoke-direct {v6, p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$4$1;-><init>(Lcom/cyberfend/cyfsecurity/CYFMonitor$4;)V

    int-to-long v7, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, p1, [Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    sput-boolean p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    if-eqz v3, :cond_3

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    iget-object p1, p0, LZjTIAZ/ASYMBN;->h:Ljava/util/ArrayList;

    :try_start_4
    iget-object v0, p0, LZjTIAZ/ASYMBN;->f:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    if-ne v0, v1, :cond_2

    goto :goto_5

    :cond_2
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->CPR_CONFIG_FAILED:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->INITIALIZATION_NO_NETWORK:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LZjTIAZ/ASYMBN;->a()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    :goto_5
    return-void
.end method
