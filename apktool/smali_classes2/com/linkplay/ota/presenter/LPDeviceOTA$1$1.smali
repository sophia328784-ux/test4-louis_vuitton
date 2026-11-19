.class Lcom/linkplay/ota/presenter/LPDeviceOTA$1$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/ota/presenter/LPDeviceOTA$1;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota/presenter/LPDeviceOTA$1;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1$1;->this$1:Lcom/linkplay/ota/presenter/LPDeviceOTA$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1$1;->this$1:Lcom/linkplay/ota/presenter/LPDeviceOTA$1;

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-static {p0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->c(Lcom/linkplay/ota/presenter/LPDeviceOTA;)V

    return-void
.end method
