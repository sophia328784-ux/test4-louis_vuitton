.class public final synthetic Lvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lvi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    iget p0, p0, Lvi;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFc1aSDK;->b(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void

    :pswitch_0
    sget-object p0, Landroidx/camera/core/CameraExecutor;->d:Ljava/util/concurrent/ThreadFactory;

    const-string p0, "CameraExecutor"

    invoke-static {p0}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
