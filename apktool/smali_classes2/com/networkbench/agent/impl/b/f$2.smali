.class Lcom/networkbench/agent/impl/b/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/b/f;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/f$2;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/f$2;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/f;->a(Lcom/networkbench/agent/impl/b/f;)Lcom/networkbench/agent/impl/b/f$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
