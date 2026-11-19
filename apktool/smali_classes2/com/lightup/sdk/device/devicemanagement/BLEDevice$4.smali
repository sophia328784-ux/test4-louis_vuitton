.class Lcom/lightup/sdk/device/devicemanagement/BLEDevice$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionHardReset(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$4;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$4;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->j(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method
