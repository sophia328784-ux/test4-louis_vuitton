.class LZjTIAZ/UfEmur$ufEmur;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/UfEmur;


# direct methods
.method public constructor <init>(LZjTIAZ/UfEmur;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/UfEmur$ufEmur;->ZRQiWB:LZjTIAZ/UfEmur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LZjTIAZ/UfEmur$ufEmur;->ZRQiWB:LZjTIAZ/UfEmur;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget v2, LZjTIAZ/UfEmur;->h:I

    invoke-virtual {v0, v1}, LZjTIAZ/UfEmur;->b(Ljava/lang/Boolean;)V

    iget-object v0, p0, LZjTIAZ/UfEmur$ufEmur;->ZRQiWB:LZjTIAZ/UfEmur;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, LZjTIAZ/UfEmur;->c:Ljava/lang/Boolean;

    iget-object v0, p0, LZjTIAZ/UfEmur$ufEmur;->ZRQiWB:LZjTIAZ/UfEmur;

    invoke-virtual {v0}, LZjTIAZ/UfEmur;->f()V

    iget-object p0, p0, LZjTIAZ/UfEmur$ufEmur;->ZRQiWB:LZjTIAZ/UfEmur;

    iput-object v1, p0, LZjTIAZ/UfEmur;->d:Ljava/lang/Boolean;

    return-void
.end method
