.class LZjTIAZ/ZptgnD$ClaEac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static ZhkDFi:Ljava/lang/String;

.field static uNtmHz:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/ZptgnD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/ZptgnD$ClaEac;->ZSK(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/ZptgnD;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/ZptgnD$ClaEac;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ZSK(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/ZptgnD$ClaEac;->ZSK(Z)V

    :cond_0
    const-string p0, "]@gEZQJ\u0000bETNA\u0016CQDODYY\u0015\u000fDSKDC@TNF_:}}qr}ASy"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/ZptgnD$ClaEac;->uNtmHz:Ljava/lang/String;

    const-string p0, "]@gEZQJ\u0000eXXYZCC\u0018[_EBLLCU\u0001GQVJT\u001d\u0008"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/ZptgnD$ClaEac;->ZhkDFi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/ZptgnD$ClaEac;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v1, v1, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, LZjTIAZ/ZptgnD$ClaEac;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->w()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    sget-object v2, LZjTIAZ/ZptgnD$ClaEac;->uNtmHz:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p0, p0, LZjTIAZ/ZptgnD$ClaEac;->ZRQiWB:LZjTIAZ/ZptgnD;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LZjTIAZ/ZptgnD;->F(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LZjTIAZ/ZptgnD$ClaEac;->ZhkDFi:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
