.class public Lnet/rtccloud/sdk/Call$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# static fields
.field public static final DEFAULT_AUDIO:Z = true

.field public static final DEFAULT_CAMERA_AUTOFOCUS:Z = true

.field public static final DEFAULT_CAMERA_EFFECT:Ljava/lang/String; = "none"

.field public static final DEFAULT_CAMERA_FLASH:Z = false

.field public static final DEFAULT_CAMERA_SOURCE:Lnet/rtccloud/sdk/VideoModule$CameraSource;

.field public static final DEFAULT_CAMERA_STABILIZATION:Z = true

.field public static final DEFAULT_CAMERA_ZOOM:F = 0.0f

.field public static final DEFAULT_SHARE_PROFILE:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final DEFAULT_UID_TYPE:I = 0x0

.field public static final DEFAULT_VIDEO:Z = true

.field public static final DEFAULT_VIDEO_FRAMERATE:I = 0x1e

.field public static final DEFAULT_VIDEO_PROFILE:Lnet/rtccloud/sdk/VideoModule$Profile;

.field private static final KEY_AUDIO:Ljava/lang/String; = "audio"

.field private static final KEY_CAMERA_AUTOFOCUS:Ljava/lang/String; = "camera.autofocus"

.field private static final KEY_CAMERA_EFFECT:Ljava/lang/String; = "camera.effect"

.field private static final KEY_CAMERA_FLASH:Ljava/lang/String; = "camera.flash"

.field private static final KEY_CAMERA_SOURCE:Ljava/lang/String; = "camera.source"

.field private static final KEY_CAMERA_STABILIZATION:Ljava/lang/String; = "camera.stabilization"

.field private static final KEY_CAMERA_ZOOM:Ljava/lang/String; = "camera.zoom"

.field private static final KEY_SHARE_PROFILE:Ljava/lang/String; = "share.profile"

.field private static final KEY_UID_TYPE:Ljava/lang/String; = "uid.type"

.field private static final KEY_VIDEO:Ljava/lang/String; = "video"

.field private static final KEY_VIDEO_FRAMERATE:Ljava/lang/String; = "video.framerate"

.field private static final KEY_VIDEO_PROFILE:Ljava/lang/String; = "video.profile"

.field public static final UID_TYPE_EXTERNAL:I = 0x1

.field public static final UID_TYPE_INTERNAL:I


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    sput-object v0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_VIDEO_PROFILE:Lnet/rtccloud/sdk/VideoModule$Profile;

    sget-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->getFirstAvailable()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    :goto_0
    sput-object v0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_CAMERA_SOURCE:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->HD_1080:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    sput-object v0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_SHARE_PROFILE:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object p0, p1, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public audio(Z)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "audio"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public audio()Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "audio"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public cameraAutofocus(Z)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.autofocus"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public cameraAutofocus()Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.autofocus"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public cameraEffect()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.effect"

    const-string v1, "none"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public cameraEffect(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 11
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.effect"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cameraFlash(Z)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.flash"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public cameraFlash()Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.flash"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 15
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.source"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-nez p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_CAMERA_SOURCE:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    :cond_0
    return-object p0
.end method

.method public cameraStabilization(Z)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.stabilization"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public cameraStabilization()Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.stabilization"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public cameraZoom()F
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "camera.zoom"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public cameraZoom(F)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "camera.zoom"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public extras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public shareProfile(Lnet/rtccloud/sdk/ScreenshareModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 15
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "share.profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public shareProfile()Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "share.profile"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    if-nez p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_SHARE_PROFILE:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uidType()I
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "uid.type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public uidType(I)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "uid.type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public video(Z)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 10
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "video"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public video()Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "video"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public videoFramerate()I
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "video.framerate"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public videoFramerate(I)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 11
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "video.framerate"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;
    .locals 2

    .line 15
    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v1, "video.profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Parameters;->data:Landroid/os/Bundle;

    const-string v0, "video.profile"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/VideoModule$Profile;

    if-nez p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_VIDEO_PROFILE:Lnet/rtccloud/sdk/VideoModule$Profile;

    :cond_0
    return-object p0
.end method
