.class LZjTIAZ/DUcPEg$DUcPEg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static CsBkfC:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llong;"
        }
    .end annotation
.end field

.field static QCGAHG:Ljava/lang/String;

.field static QlMVYq:Ljava/lang/String;

.field static eOKLLk:Ljava/lang/String;

.field static zJanJO:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llong;"
        }
    .end annotation
.end field


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/DUcPEg;

.field final synthetic etzqkG:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHth/LNm;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/DUcPEg$DUcPEg;->uAt(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/DUcPEg;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iput-object p2, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic uAt(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/DUcPEg$DUcPEg;->uAt(Z)V

    :cond_0
    const-string p0, "J@cZPWfNw^\u0018h\\[R\u0002\t"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/DUcPEg$DUcPEg;->CsBkfC:Ljava/lang/String;

    const-string p0, "J@cZPWfNw^\u0018\u001cFBVJ]OO"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/DUcPEg$DUcPEg;->zJanJO:Ljava/lang/String;

    const-string p0, "cV"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/DUcPEg$DUcPEg;->QCGAHG:Ljava/lang/String;

    const-string p0, "M|S`JA[E|x[ZZ{VVHMN^"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/DUcPEg$DUcPEg;->QlMVYq:Ljava/lang/String;

    const-string p0, "#\u0014"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/DUcPEg$DUcPEg;->eOKLLk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v0, LZjTIAZ/DUcPEg$DUcPEg;->QlMVYq:Ljava/lang/String;

    sget-object v1, LZjTIAZ/DUcPEg$DUcPEg;->zJanJO:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :try_start_0
    iget-object v0, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v1, v0, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v1, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {v1}, LZjTIAZ/BkzsL;->d(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LZjTIAZ/DUcPEg;->b:Ljava/lang/String;

    iget-object v0, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v1, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-virtual {v0, v1}, LZjTIAZ/DUcPEg;->c(Landroid/app/Application;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v4, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v3, v3, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v4, "0"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, LZjTIAZ/DUcPEg$DUcPEg;->eOKLLk:Ljava/lang/String;

    iget-object v5, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v5, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v3, v3, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v3, :cond_0

    :try_start_2
    sget-object v3, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    iget-object v5, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v5, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, LZjTIAZ/RXtEM;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    :try_start_3
    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v3, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v5, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LZjTIAZ/DUcPEg;->c:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v3, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v5, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {v5}, LZjTIAZ/BkzsL;->e(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LZjTIAZ/DUcPEg;->d:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v3, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v5, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {v5}, LZjTIAZ/BkzsL;->a(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LZjTIAZ/DUcPEg;->e:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v5, v3, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    const-string v5, "com.akamai.react.RNAkamaibapModule"

    const-string v6, "io.flutter.plugins.GeneratedPluginRegistrant"

    const-string v7, "org.apache.cordova.CordovaPlugin"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v4, "4"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    :try_start_5
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v4, "3"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    :try_start_6
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v4, "2"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_0
    :try_start_7
    iput-object v4, v3, LZjTIAZ/DUcPEg;->f:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LZjTIAZ/DUcPEg;->i:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v4, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {v4}, LZjTIAZ/UxaBRS;->a(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LZjTIAZ/DUcPEg;->h:Ljava/lang/String;

    iget-object v3, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    invoke-static {v3}, LZjTIAZ/DUcPEg;->a(LZjTIAZ/DUcPEg;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LZjTIAZ/DUcPEg;->o:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sput-wide v3, LZjTIAZ/ZxDSl;->e:J

    iget-object v0, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v1, v0, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v1, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    const-string v3, "android.permission.USE_BIOMETRIC"

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroidx/biometric/BiometricManager;->b(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/biometric/BiometricManager;->a()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_9
    invoke-static {v1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    iput-boolean v1, v0, LZjTIAZ/DUcPEg;->l:Z

    iget-object v0, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v1, v0, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object v1, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {v1}, LZjTIAZ/BkzsL;->g(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, LZjTIAZ/DUcPEg;->m:Z

    iget-object v0, p0, LZjTIAZ/DUcPEg$DUcPEg;->ZRQiWB:LZjTIAZ/DUcPEg;

    iget-object v1, v0, LZjTIAZ/DUcPEg;->a:LZjTIAZ/BkzsL;

    iget-object p0, p0, LZjTIAZ/DUcPEg$DUcPEg;->etzqkG:Landroid/app/Application;

    invoke-static {p0}, LZjTIAZ/BkzsL;->c(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LZjTIAZ/DUcPEg;->n:Ljava/lang/String;

    sget-object p0, LZjTIAZ/DUcPEg$DUcPEg;->QlMVYq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LZjTIAZ/DUcPEg$DUcPEg;->CsBkfC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, LZjTIAZ/ZxDSl;->e:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, LZjTIAZ/DUcPEg$DUcPEg;->QCGAHG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    return-void

    :catch_4
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method
