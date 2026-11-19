.class Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/USrWvK$DRxlEm;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lcom/cyberfend/cyfsecurity/CYFWebViewService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oCaVA\u0012la]}w}v}h}qin|yg`~"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->b:Ljava/lang/String;

    const-string v0, "oCaVA\u0012lo\\ayyas"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->c:Ljava/lang/String;

    const-string v0, "@Py_\u0013@JSd]A\u001cSDXU\tX^BCK]"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "oCaVA\u0012jrC~g"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->d:Ljava/lang/String;

    const-string v0, "oCaVA\u0012{i\\tzia"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->e:Ljava/lang/String;

    const-string v0, "M|SdVPyItFfYG@^[L"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->f:Ljava/lang/String;

    const-string v0, "\\@fF_F\u000fIv_ZNPR\u000c\u0018ZOYZDMJ\u0010RVLTUCC\u0008]{ipd"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->g:Ljava/lang/String;

    const-string v0, "\\P{]V@\u000fCp]Y^TU\\\u0018LRHI]ZF_O\u0018\u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->a:Lcom/cyberfend/cyfsecurity/CYFWebViewService;

    return-void
.end method


# virtual methods
.method public final a(LZjTIAZ/USrWvK$ELXMqL;)V
    .locals 8

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->a:Lcom/cyberfend/cyfsecurity/CYFWebViewService;

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->f:Ljava/lang/String;

    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->g:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {p1, v4, v5}, LwcQZwr/GpYFMu;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    iget-object v4, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    iget-object v5, p1, LZjTIAZ/USrWvK$ELXMqL;->c:Ljava/lang/String;

    sget-object v6, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->b:[I

    iget-object v7, p1, LZjTIAZ/USrWvK$ELXMqL;->a:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    if-eq v6, v3, :cond_8

    if-eq v6, v7, :cond_4

    const/4 p1, 0x3

    if-eq v6, p1, :cond_1

    return-void

    :cond_1
    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v4, p1, :cond_2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_2
    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v4, p1, :cond_3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    invoke-static {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m(Lcom/cyberfend/cyfsecurity/CYFWebViewService;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V

    :cond_3
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b()V

    return-void

    :cond_4
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_6

    if-eq p1, v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0, v5}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    :goto_2
    invoke-static {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m(Lcom/cyberfend/cyfsecurity/CYFWebViewService;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0, v5}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    goto :goto_2

    :cond_7
    :goto_3
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->d:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget-object v6, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    if-eq v4, v3, :cond_a

    if-eq v4, v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0, v5}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput-boolean v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    iput-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->e:Ljava/lang/String;

    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->l(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0, v5}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput-boolean v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    iput-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    iget-object v4, p1, LZjTIAZ/USrWvK$ELXMqL;->e:[Ljava/lang/String;

    iput-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->g:[Ljava/lang/String;

    iget-object v4, p1, LZjTIAZ/USrWvK$ELXMqL;->f:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h:Ljava/lang/Integer;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->g:Ljava/lang/Boolean;

    invoke-virtual {v4, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i:Z

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->o(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V

    :cond_b
    :goto_4
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_5
    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->h:Ljava/lang/String;

    invoke-static {p1, v6, v5}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    if-eqz p1, :cond_c

    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-static {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m(Lcom/cyberfend/cyfsecurity/CYFWebViewService;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V

    :cond_c
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    if-eqz p1, :cond_d

    sget-object p1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-static {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m(Lcom/cyberfend/cyfsecurity/CYFWebViewService;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V

    :cond_d
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b()V

    return-void
.end method
