.class Lcom/cyberfend/cyfsecurity/CYFManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static JKrlNG:Ljava/lang/String;

.field static ZUCwdG:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHAv;"
        }
    .end annotation
.end field


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZzW(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ZzW(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZzW(Z)V

    :cond_0
    const-string p0, "KWg\\A\u0012FN1BPM@SYL@KG\u000c@A[YNL\u0003W@WRMVy~"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZUCwdG:Ljava/lang/String;

    const-string p0, "}QtAGsCL]XFHPXRJ"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->JKrlNG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->A()V

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->B()V

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->q:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->q:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    :goto_0
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->y()V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFManager$4;->JKrlNG:Ljava/lang/String;

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFManager$4;->ZUCwdG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
