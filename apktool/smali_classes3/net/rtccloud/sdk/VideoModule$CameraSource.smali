.class public Lnet/rtccloud/sdk/VideoModule$CameraSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSource"
.end annotation


# static fields
.field public static final BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnet/rtccloud/sdk/VideoModule$CameraSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;


# instance fields
.field public final facing:I

.field public final id:I

.field public final orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->find(I)Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->find(I)Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    new-instance v0, Lnet/rtccloud/sdk/VideoModule$CameraSource$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->id:I

    .line 24
    iput p2, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    .line 25
    iput p3, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    return-void
.end method

.method private static find(I)Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 3

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    new-instance p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {p0, v1, v2, v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;-><init>(III)V

    return-object p0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAll()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/rtccloud/sdk/VideoModule$CameraSource;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    new-instance v4, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v4, v3, v5, v6}, Lnet/rtccloud/sdk/VideoModule$CameraSource;-><init>(III)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getFirstAvailable()Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    new-instance v2, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v2, v0, v3, v1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;-><init>(III)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBack()Z
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFront()Z
    .locals 1

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraSource{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
