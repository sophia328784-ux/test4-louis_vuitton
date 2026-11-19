.class Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;
.super Lcom/networkbench/agent/impl/util/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->startNextSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

.field final synthetic val$bitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

.field final synthetic val$oldBitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->this$0:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    iput-object p4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->val$bitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iput-object p5, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->val$oldBitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-direct {p0, p2, p3}, Lcom/networkbench/agent/impl/util/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public operation()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->val$bitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->val$bitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iget-object v1, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->this$0:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    iget-object v1, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->this$0:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;->val$oldBitmapBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->saveData(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;)V

    return-void
.end method
