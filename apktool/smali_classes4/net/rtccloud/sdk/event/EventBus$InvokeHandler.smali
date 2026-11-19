.class final Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InvokeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/event/EventBus;


# direct methods
.method private constructor <init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;->this$0:Lnet/rtccloud/sdk/event/EventBus;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;)V

    return-void
.end method

.method private invoke(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)V
    .locals 5

    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->b(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->a(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/rtccloud/sdk/event/EventBus;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/event/EventBus;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    iget-object v3, p0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;->this$0:Lnet/rtccloud/sdk/event/EventBus;

    invoke-static {v3, p1, v1, v0}, Lnet/rtccloud/sdk/event/EventBus;->a(Lnet/rtccloud/sdk/event/EventBus;Lnet/rtccloud/sdk/event/EventBus$Wrapper;Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lnet/rtccloud/sdk/event/EventBus;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    const-string v3, "Exception detected while invoking the Event receiver method!"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v2, v0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;

    if-eqz v2, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/event/EventBus;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "ExceptionEvent throws an Error, do not re-create an ExceptionEvent..."

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;->this$0:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/util/ExceptionEvent;

    invoke-static {v1}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->a(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->b(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, p1, v0, v3, v1}, Lnet/rtccloud/sdk/event/util/ExceptionEvent;-><init>(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lnet/rtccloud/sdk/event/EventBus$Wrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/rtccloud/sdk/event/EventBus$Wrapper;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;->invoke(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->recycle()V

    :cond_0
    return-void
.end method
