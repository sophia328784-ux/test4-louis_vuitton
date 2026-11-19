.class Lnet/rtccloud/sdk/Participant$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/Participant$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Participant$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public control(Lnet/rtccloud/sdk/Participant$Control;I)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    invoke-interface {v0}, Lnet/rtccloud/sdk/Call$Native;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/rtccloud/sdk/Participant$Native$1$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/rtccloud/sdk/Participant$Native$1$1;-><init>(Lnet/rtccloud/sdk/Participant$Native$1;Lnet/rtccloud/sdk/Participant$Control;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
