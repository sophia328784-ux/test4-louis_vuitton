.class LZjTIAZ/WmAQuO$zpBzis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ChLnfw:Ljava/lang/Runnable;

.field final synthetic ZRQiWB:LZjTIAZ/WmAQuO;


# direct methods
.method public constructor <init>(LZjTIAZ/WmAQuO;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/WmAQuO$zpBzis;->ZRQiWB:LZjTIAZ/WmAQuO;

    iput-object p2, p0, LZjTIAZ/WmAQuO$zpBzis;->ChLnfw:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, LZjTIAZ/WmAQuO$zpBzis;->ChLnfw:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
