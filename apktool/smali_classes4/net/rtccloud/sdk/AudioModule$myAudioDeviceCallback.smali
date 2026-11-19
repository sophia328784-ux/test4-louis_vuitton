.class Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AudioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myAudioDeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/AudioModule;


# direct methods
.method private constructor <init>(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/rtccloud/sdk/AudioModule;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;-><init>(Lnet/rtccloud/sdk/AudioModule;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p0}, Lnet/rtccloud/sdk/AudioModule;->p(Lnet/rtccloud/sdk/AudioModule;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p0}, Lnet/rtccloud/sdk/AudioModule;->p(Lnet/rtccloud/sdk/AudioModule;)V

    return-void
.end method
