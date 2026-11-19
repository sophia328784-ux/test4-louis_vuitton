.class Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

.field final synthetic b:Lcom/networkbench/agent/impl/floatbtnmanager/h$a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/h$a;Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/h$a;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;->a:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;->a:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewImage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " updateFloatingViewItem run  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
