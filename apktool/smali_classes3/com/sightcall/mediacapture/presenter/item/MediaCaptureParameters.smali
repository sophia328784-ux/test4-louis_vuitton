.class public final Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\"\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\'\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010*\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010+\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010,\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0094\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\tJ\u0014\u00100\u001a\u00020\u00032\u0008\u00101\u001a\u0004\u0018\u000102H\u00d6\u0083\u0004J\n\u00103\u001a\u00020\tH\u00d6\u0081\u0004J\n\u00104\u001a\u000205H\u00d6\u0081\u0004J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0013R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0018R\u0015\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001c\u0010\u0018R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001e\u00a8\u0006;"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "Landroid/os/Parcelable;",
        "isCameraAllowed",
        "",
        "isGalleryVideoAllowed",
        "isGalleryImageAllowed",
        "isPhotoAllowed",
        "backupLibrary",
        "photoMaxSize",
        "",
        "photoTargetWeight",
        "isVideoAllowed",
        "videoMaxSize",
        "maxDuration",
        "safeArea",
        "",
        "aspectRatio",
        "<init>",
        "(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V",
        "()Z",
        "getBackupLibrary",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getPhotoMaxSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getPhotoTargetWeight",
        "getVideoMaxSize",
        "getMaxDuration",
        "getSafeArea",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getAspectRatio",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aspectRatio:Ljava/lang/Double;

.field private final backupLibrary:Ljava/lang/Boolean;

.field private final isCameraAllowed:Z

.field private final isGalleryImageAllowed:Z

.field private final isGalleryVideoAllowed:Z

.field private final isPhotoAllowed:Z

.field private final isVideoAllowed:Z

.field private final maxDuration:Ljava/lang/Integer;

.field private final photoMaxSize:Ljava/lang/Integer;

.field private final photoTargetWeight:Ljava/lang/Integer;

.field private final safeArea:Ljava/lang/Double;

.field private final videoMaxSize:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters$Creator;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters$Creator;-><init>()V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    iput-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    iput-boolean p3, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    iput-boolean p4, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    iput-object p5, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    iput-boolean p8, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    iput-object p9, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    iput-object p12, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-boolean p3, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-boolean p4, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-boolean p8, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->copy(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    return p0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component11()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    return-object p0
.end method

.method public final component12()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    return p0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    return p0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
    .locals 0

    new-instance p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-direct/range {p0 .. p12}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    iget-boolean v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    iget-boolean v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    iget-boolean v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    iget-boolean v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    iget-boolean v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    iget-object p1, p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAspectRatio()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    return-object p0
.end method

.method public final getBackupLibrary()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getMaxDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPhotoMaxSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPhotoTargetWeight()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSafeArea()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    return-object p0
.end method

.method public final getVideoMaxSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public final isCameraAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    return p0
.end method

.method public final isGalleryImageAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    return p0
.end method

.method public final isGalleryVideoAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    return p0
.end method

.method public final isPhotoAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    return p0
.end method

.method public final isVideoAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    iget-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    iget-boolean v3, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    iget-object v4, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    iget-boolean v7, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    iget-object v8, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    const-string v11, ", isGalleryVideoAllowed="

    const-string v12, ", isGalleryImageAllowed="

    const-string v13, "MediaCaptureParameters(isCameraAllowed="

    invoke-static {v13, v11, v12, v0, v1}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPhotoAllowed="

    const-string v11, ", backupLibrary="

    invoke-static {v0, v2, v1, v3, v11}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photoMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photoTargetWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safeArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->backupLibrary:Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p2}, La;->w(Landroid/os/Parcel;ILjava/lang/Boolean;)V

    :goto_0
    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoMaxSize:Ljava/lang/Integer;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->photoTargetWeight:Ljava/lang/Integer;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->videoMaxSize:Ljava/lang/Integer;

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->maxDuration:Ljava/lang/Integer;

    if-nez p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->safeArea:Ljava/lang/Double;

    if-nez p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_5
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->aspectRatio:Ljava/lang/Double;

    if-nez p0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
