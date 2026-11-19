.class Lcom/cyberfend/cyfsecurity/CYFMonitor$3;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/JOGAgw$JOGAgw;


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "}@gEV@\\IuTFURXVT"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->c:Ljava/lang/String;

    const-string v0, "j@yRJ"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->a:Z

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, LZjTIAZ/DQwsTh;->A:LZjTIAZ/DQwsTh;

    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->b:Landroid/app/Application;

    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput-object v3, v0, LZjTIAZ/DQwsTh;->a:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LZjTIAZ/DQwsTh;->l:Ljava/lang/String;

    :cond_1
    :goto_0
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, LZjTIAZ/DQwsTh;->g(IJ)V

    :cond_2
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->b:Landroid/app/Application;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    invoke-virtual {p0, v1}, LZjTIAZ/ASYMBN;->c(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    invoke-static {}, LZjTIAZ/XBnaCg;->b()V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LZjTIAZ/ASYMBN;->c(Z)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, LZjTIAZ/XBnaCg;->c()V

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    iget-boolean v0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, LZjTIAZ/DQwsTh;->A:LZjTIAZ/DQwsTh;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->b:Landroid/app/Application;

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v2, v0, LZjTIAZ/DQwsTh;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LZjTIAZ/DQwsTh;->l:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, LZjTIAZ/DQwsTh;->g(IJ)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, v1}, LZjTIAZ/DQwsTh;->b(Lorg/json/JSONObject;I)Ljava/lang/Boolean;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v1, v0

    :catch_1
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/4 v2, 0x4

    iput v2, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    :goto_2
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v2, 0x11

    iput v2, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;->b:Landroid/app/Application;

    invoke-static {p0, v1, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LZjTIAZ/ASYMBN;->c(Z)V

    return-void
.end method
