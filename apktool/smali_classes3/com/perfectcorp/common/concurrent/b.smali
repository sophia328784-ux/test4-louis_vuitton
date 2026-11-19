.class final enum Lcom/perfectcorp/common/concurrent/b;
.super Lcom/perfectcorp/common/concurrent/CallingThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ANY"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
