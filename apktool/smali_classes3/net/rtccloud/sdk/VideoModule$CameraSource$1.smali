.class Lnet/rtccloud/sdk/VideoModule$CameraSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/VideoModule$CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/rtccloud/sdk/VideoModule$CameraSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource$1;->createFromParcel(Landroid/os/Parcel;)Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 0

    new-instance p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource$1;->newArray(I)[Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 0

    .line 5
    new-array p0, p1, [Lnet/rtccloud/sdk/VideoModule$CameraSource;

    return-object p0
.end method
