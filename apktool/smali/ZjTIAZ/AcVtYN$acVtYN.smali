.class LZjTIAZ/AcVtYN$acVtYN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/AcVtYN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNUb;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LZjTIAZ/AcVtYN;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/AcVtYN$acVtYN;->ZRQiWB:LZjTIAZ/AcVtYN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, LZjTIAZ/AcVtYN$acVtYN;->ZRQiWB:LZjTIAZ/AcVtYN;

    iget-object v0, p0, LZjTIAZ/DQwsTh;->v:Ljava/lang/String;

    invoke-static {p0, v0}, LZjTIAZ/AcVtYN;->n(LZjTIAZ/AcVtYN;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
