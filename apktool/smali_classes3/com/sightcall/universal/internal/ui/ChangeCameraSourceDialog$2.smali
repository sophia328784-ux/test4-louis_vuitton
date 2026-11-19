.class Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

.field final synthetic val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;->this$0:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;->this$0:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->q(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;)Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;->this$0:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->q(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;)Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;->onRequestCameraSourceConfirmation(Lnet/rtccloud/sdk/VideoModule$CameraSource;Z)V

    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
