.class public Lcom/sightcall/universal/internal/model/RemoteState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;


# instance fields
.field private cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

.field private cameraZoom:F

.field private gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

.field private isCameraEnabled:Z

.field private isCameraPaused:Z

.field private isFlashAvailable:Z

.field private isFlashEnabled:Z

.field private isMuted:Z

.field private isPlayerEnabled:Z

.field private isPlayerPaused:Z

.field private isStarted:Z

.field private lastShareAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isStarted:Z

    return-void
.end method


# virtual methods
.method public cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    return-object p0
.end method

.method public cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    return-void
.end method

.method public cameraZoom()F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraZoom:F

    return p0
.end method

.method public gpsRequest()Lcom/sightcall/universal/internal/model/GpsRequest;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/model/GpsRequest;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    return-object p0
.end method

.method public isCameraEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled:Z

    return p0
.end method

.method public isCameraPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    return p0
.end method

.method public isFlashAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    return p0
.end method

.method public isFlashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    return p0
.end method

.method public isMuted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted:Z

    return p0
.end method

.method public isPlayerEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled:Z

    return p0
.end method

.method public isPlayerPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    return p0
.end method

.method public isSharingPhoto()Z
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTED_PHOTO:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSharingPicture()Z
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSharingScreen()Z
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSharingUrl()Z
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_SHARE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/model/RemoteState$1;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sightcall/universal/internal/model/GpsRequest;->ACTIONS:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/model/GpsRequest;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/model/GpsRequest;->handle(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    return-void

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    return-void

    :pswitch_4
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/16 p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->intPercentToFloatPercent(I)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraZoom:F

    :cond_1
    return-void

    :pswitch_5
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    return-void

    :pswitch_6
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    return-void

    :pswitch_7
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    return-void

    :pswitch_8
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    return-void

    :pswitch_9
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    return-void

    :pswitch_a
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    return-void

    :pswitch_b
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    return-void

    :pswitch_c
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    return-void

    :pswitch_d
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraZoom:F

    return-void

    :pswitch_e
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    return-void

    :pswitch_f
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    return-void

    :pswitch_10
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    return-void

    :pswitch_11
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    return-void

    :pswitch_12
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    return-void

    :pswitch_13
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted:Z

    return-void

    :pswitch_14
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefreshCallButtons()V
    .locals 0

    return-void
.end method

.method public prepareForSnapshot()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTED_PHOTO:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    return-void
.end method

.method public start(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isStarted:Z

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->register(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V

    return-void
.end method

.method public stop(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isStarted:Z

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->unregister(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest:Lcom/sightcall/universal/internal/model/GpsRequest;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteState{isMuted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlashAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlashEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCameraEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCameraPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayerPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastShareAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/RemoteState;->lastShareAction:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
