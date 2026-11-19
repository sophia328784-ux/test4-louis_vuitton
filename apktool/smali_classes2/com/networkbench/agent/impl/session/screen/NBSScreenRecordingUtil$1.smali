.class Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->captureViewOverO(Ljava/util/List;Landroid/view/Window;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

.field final synthetic val$ignoredRects:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;->val$bitmap:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;->val$ignoredRects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1$1;-><init>(Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSScreenRecordingUtil"

    const-string v0, " PixelCopy request  drawRootToBitmap error :"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
