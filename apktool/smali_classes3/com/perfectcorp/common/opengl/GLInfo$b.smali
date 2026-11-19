.class final Lcom/perfectcorp/common/opengl/GLInfo$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/opengl/GLInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perfectcorp/common/opengl/GLInfo$b;->a:[I

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/perfectcorp/common/opengl/GLInfo$a;

    invoke-direct {v1}, Lcom/perfectcorp/common/opengl/GLInfo$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/perfectcorp/common/opengl/GLInfo$b;->a:[I

    const/4 v0, 0x0

    const/16 v2, 0xd33

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/perfectcorp/common/opengl/GLInfo$a;->a()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v1, "GLInfo"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/common/opengl/GLInfo$a;->a()V

    :cond_0
    return-void

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/common/opengl/GLInfo$a;->a()V

    :cond_1
    throw p0
.end method
