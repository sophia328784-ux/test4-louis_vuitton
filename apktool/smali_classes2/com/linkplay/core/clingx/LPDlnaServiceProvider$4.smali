.class Lcom/linkplay/core/clingx/LPDlnaServiceProvider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaGetInfoEx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$4;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$4;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->f(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V

    return-void
.end method
