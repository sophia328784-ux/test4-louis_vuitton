.class Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;->onPixelCopyFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1$1;->this$0:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1$1;->this$0:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;->val$bitmap:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;->val$ignoredRects:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->access$000(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V

    return-void
.end method
