.class Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewService;

.field final synthetic aQUvTe:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewService;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;->aQUvTe:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewService;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;->aQUvTe:Landroid/content/Intent;

    sget v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "M|SdVPyItFfYG@^[L"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "]@gEZQJ\u0000p]GYTRN\u0018Z^D\\]GAW\u000eQWKUVBL\u0003:r{sqmI^u3zpa7jl{~i~z"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v3, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const-string v3, "{Wy"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    const-string v3, "mUgy@g]L"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c:Ljava/lang/String;

    const-string v3, "mUgy@f@Kt_"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    const-string v3, "lHe`V@YEcb\\XPe^_GKG"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    const-string v3, "}QtAGfFMt"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->l:Ljava/lang/String;

    iget-object p0, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->p(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "LDfV\u0013g}l1X[JTZ^\\\t\u0002EYAB\u0000ULRW]\nRHG\u0018vtrz>pR\u0010||z8~clyy+ec.\u007fbnf*"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h()V

    return-void

    :cond_1
    iget-object p0, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    iget-object p0, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->o:Ljava/lang/String;

    iput-object v3, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->r:Ljava/lang/String;

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_5

    :goto_0
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v3, p0, 0xd

    const/16 v6, 0x60

    if-eq v3, v6, :cond_4

    const/16 p0, 0x96

    if-eq v3, p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    rem-int/lit8 p0, p0, 0x2b

    shr-int/lit8 p0, p0, 0x7c

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_1

    :cond_4
    rem-int/lit8 p0, p0, 0x1a

    shr-int/lit8 p0, p0, 0x5a

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_5
    iput-object v4, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->p:Ljava/lang/String;

    iput-object v5, v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->e()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f()V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KWg\\A\u0012_R~RPOF_Y_\tYN^[GLU\u0001PFUPCT\\\u0002:"

    invoke-static {p0, v4, v3}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v3, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h()V

    return-void
.end method
