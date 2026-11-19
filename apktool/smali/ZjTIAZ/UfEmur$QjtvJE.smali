.class LZjTIAZ/UfEmur$QjtvJE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/UfEmur;


# direct methods
.method public constructor <init>(LZjTIAZ/UfEmur;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/UfEmur$QjtvJE;->ZRQiWB:LZjTIAZ/UfEmur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LZjTIAZ/UfEmur$QjtvJE;->ZRQiWB:LZjTIAZ/UfEmur;

    sget v1, LZjTIAZ/UfEmur;->h:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "#\u0014"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, LZjTIAZ/UfEmur$QjtvJE;->ZRQiWB:LZjTIAZ/UfEmur;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, LZjTIAZ/UfEmur;->b(Ljava/lang/Boolean;)V

    return-void
.end method
