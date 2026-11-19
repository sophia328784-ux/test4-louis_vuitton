.class LZjTIAZ/DQwsTh$twiiz;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic XccjsC:I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LGXj/EvF;"
        }
    .end annotation
.end field

.field final synthetic ZRQiWB:LZjTIAZ/DQwsTh;


# direct methods
.method public constructor <init>(LZjTIAZ/DQwsTh;I)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/DQwsTh$twiiz;->ZRQiWB:LZjTIAZ/DQwsTh;

    iput p2, p0, LZjTIAZ/DQwsTh$twiiz;->XccjsC:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LZjTIAZ/DQwsTh$twiiz$ujSmfu;

    invoke-direct {v1, p0}, LZjTIAZ/DQwsTh$twiiz$ujSmfu;-><init>(LZjTIAZ/DQwsTh$twiiz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
