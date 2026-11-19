.class Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$2;->this$1:Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$2;->this$1:Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->b(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->n(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V

    :cond_0
    return-void
.end method
