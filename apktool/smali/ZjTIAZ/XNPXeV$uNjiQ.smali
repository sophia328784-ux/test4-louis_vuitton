.class LZjTIAZ/XNPXeV$uNjiQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic CSYbrM:Ljava/lang/Process;

.field final synthetic ZRQiWB:LZjTIAZ/XNPXeV;


# direct methods
.method public constructor <init>(LZjTIAZ/XNPXeV;Ljava/lang/Process;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/XNPXeV$uNjiQ;->ZRQiWB:LZjTIAZ/XNPXeV;

    iput-object p2, p0, LZjTIAZ/XNPXeV$uNjiQ;->CSYbrM:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 0

    :try_start_0
    iget-object p0, p0, LZjTIAZ/XNPXeV$uNjiQ;->CSYbrM:Ljava/lang/Process;

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0}, LZjTIAZ/XNPXeV$uNjiQ;->call()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
