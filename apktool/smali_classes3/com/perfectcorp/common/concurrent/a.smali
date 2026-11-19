.class final enum Lcom/perfectcorp/common/concurrent/a;
.super Lcom/perfectcorp/common/concurrent/CallingThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MAIN"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
