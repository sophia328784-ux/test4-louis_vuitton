.class public Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoProducer;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/sightcall/common/MyVideoProducer;
.implements Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;,
        Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;
    }
.end annotation


# static fields
.field private static final buffers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/rtccloud/sdk/Call;",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static frameCount:I

.field private static isLiveQrActivated:Z

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;

.field private static previousCode:Ljava/lang/String;

.field private static qrSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field advancedAnnotationsContainer:Landroid/view/ViewGroup;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation
.end field

.field advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private call:Lnet/rtccloud/sdk/Call;

.field private camera:Landroid/hardware/Camera;

.field private cameraCallback:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dc:Lnet/rtccloud/sdk/DataChannelModule;

.field private final dst:Landroid/graphics/RectF;

.field private internalCorrection:I

.field private isCapturing:Z

.field private isPaused:Z

.field private isStarted:Z

.field private isSurfaceAvailable:Z

.field private liveQrPrefs:Landroid/content/SharedPreferences;

.field private final matrix:Landroid/graphics/Matrix;

.field private final measureDim:Lnet/rtccloud/sdk/util/Dimension;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private parameters:Lnet/rtccloud/sdk/Call$Parameters;

.field private previewSize:Landroid/graphics/Point;

.field private previewSizeRaw:Landroid/hardware/Camera$Size;

.field scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

.field private scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

.field private sink:Lnet/rtccloud/sdk/Sink$Video;

.field private final src:Landroid/graphics/RectF;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->buffers:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isLiveQrActivated:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    const-string v0, ""

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previousCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dst:Landroid/graphics/RectF;

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 48
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dst:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 53
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 56
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 57
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dst:Landroid/graphics/RectF;

    .line 60
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 61
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->cameraCallback:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/DataChannelModule;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->internalCorrection:I

    return p0
.end method

.method private detectQr(Landroid/content/Context;[BII)V
    .locals 5

    sget-boolean v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isLiveQrActivated:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->frameCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->frameCount:I

    new-instance v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->b:Lcom/google/android/gms/internal/vision/zzk;

    iput v0, v2, Lcom/google/android/gms/internal/vision/zzk;->b:I

    new-instance v3, Lcom/google/android/gms/internal/vision/zzm;

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->a:Landroid/content/Context;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzk;)V

    new-instance v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-direct {v1, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;-><init>(Lcom/google/android/gms/internal/vision/zzm;)V

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->a:Lcom/google/android/gms/internal/vision/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzt;->b()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int v4, p3, p4

    if-lt v3, v4, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/vision/Frame$Builder;->a:Lcom/google/android/gms/vision/Frame;

    iput-object p2, v2, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    iget-object p2, v2, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    iput p3, p2, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    iput p4, p2, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    new-instance p3, Lcom/google/android/gms/internal/vision/zzs;

    invoke-direct {p3}, Lcom/google/android/gms/internal/vision/zzs;-><init>()V

    iget p4, p2, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    iput p4, p3, Lcom/google/android/gms/internal/vision/zzs;->b:I

    iget p2, p2, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    iput p2, p3, Lcom/google/android/gms/internal/vision/zzs;->c:I

    iput v0, p3, Lcom/google/android/gms/internal/vision/zzs;->f:I

    iput v0, p3, Lcom/google/android/gms/internal/vision/zzs;->d:I

    const-wide/16 v3, 0x0

    iput-wide v3, p3, Lcom/google/android/gms/internal/vision/zzs;->e:J

    iget-object p2, v2, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzt;->b()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    :try_start_0
    new-instance p4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p4, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzt;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzl;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-interface {p2, p4, p3}, Lcom/google/android/gms/internal/vision/zzl;->X0(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/vision/zzs;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p2, v0, [Lcom/google/android/gms/vision/barcode/Barcode;

    goto :goto_0

    :cond_2
    new-array p2, v0, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_0
    new-instance p3, Landroid/util/SparseArray;

    array-length p4, p2

    invoke-direct {p3, p4}, Landroid/util/SparseArray;-><init>(I)V

    array-length p4, p2

    move v1, v0

    :goto_1
    if-ge v1, p4, :cond_3

    aget-object v2, p2, v1

    iget-object v3, v2, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_2
    :try_start_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p2, p4, :cond_7

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v1, p4, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    sget-object v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previousCode:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget p4, p4, Lcom/google/android/gms/vision/barcode/Barcode;->b:I

    const/16 v2, 0x100

    if-ne p4, v2, :cond_4

    const-string p4, "qr"

    goto :goto_3

    :cond_4
    const-string p4, "bar"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "content"

    invoke-virtual {v2, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p4, Lcom/sightcall/common/DataChannelAction;->LIVE_QR_DETECTED:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->saveQr(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    sput-object v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previousCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_1
    :cond_7
    :goto_5
    return-void

    :cond_8
    const-string p0, "Invalid image data size."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "Null image data supplied."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private declared-synchronized doOcr(Landroid/content/Context;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "doOcr()"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/VideoModule$CameraSource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->emptyShutterCallback()Landroid/hardware/Camera$ShutterCallback;

    move-result-object p2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->emptyPictureCallback()Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_3
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_4
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private declared-synchronized doPause()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doPause()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->DrawDrop:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->pauseVideo()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_HOLD:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$7;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$7;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized doResume()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doResume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->Pointer:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v3}, Lcom/sightcall/capabilities/CapabilitiesRepository;->resumeVideo()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->a(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraFlash()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STOPPED_HOLD:Lcom/sightcall/common/DataChannelAction;

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v4}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$8;

    invoke-direct {v4, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$8;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v5, "Error while resuming the preview"

    invoke-virtual {v4, v5, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    iput-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iput-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private declared-synchronized doSnapshot(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doSnapshot()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->emptyPictureCallback()Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private declared-synchronized doStart()V
    .locals 10

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doStart()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isSurfaceAvailable:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->videoProducerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v2, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->Pointer:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v1, p0, v2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-boolean v0, v0, Lcom/sightcall/universal/agent/Usecase;->takeUhdSnapshot:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/Size;

    const/16 v5, 0x870

    const/16 v6, 0xf00

    invoke-direct {v0, v5, v6}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/util/Size;

    const/16 v5, 0x438

    const/16 v6, 0x780

    invoke-direct {v0, v5, v6}, Landroid/util/Size;-><init>(II)V

    :goto_1
    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-static {v5, v0, v4}, Lnet/rtccloud/sdk/util/CameraUtils;->initCamera(Lnet/rtccloud/sdk/Call$Parameters;Landroid/util/Size;Landroid/view/Display;)Landroid/hardware/Camera;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v5, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "Unable to init Camera"

    invoke-virtual {v5, v6, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$3;

    invoke-direct {v5, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$3;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Invalid Camera"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    sget-object v6, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->buffers:Ljava/util/WeakHashMap;

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-nez v7, :cond_5

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7, v8}, Lnet/rtccloud/sdk/util/CameraUtils;->createYuvByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8, v9}, Lnet/rtccloud/sdk/util/CameraUtils;->createYuvByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v6, v8, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_8

    :cond_5
    :goto_4
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iput-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    invoke-static {v1, v4}, Lnet/rtccloud/sdk/util/CameraUtils;->getInternalPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->internalCorrection:I

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v3, v1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    :cond_6
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    :cond_7
    new-instance v0, Landroid/graphics/Point;

    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    goto :goto_5

    :cond_8
    new-instance v0, Landroid/graphics/Point;

    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    :goto_5
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->TORCH_AVAILABLE:Lcom/sightcall/common/DataChannelAction;

    goto :goto_6

    :cond_9
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->TORCH_UNAVAILABLE:Lcom/sightcall/common/DataChannelAction;

    :goto_6
    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_LIGHT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_a
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    if-eqz v0, :cond_b

    :try_start_6
    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->pauseAnnotations(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->frontCamera()V

    goto :goto_7

    :cond_b
    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->backCamera()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_7
    sget-object v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v4, "Error while starting the preview"

    invoke-virtual {v2, v4, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$4;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$4;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_c
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private declared-synchronized doStop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doStop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STOPPED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$6;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$6;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    return p0
.end method

.method private emptyPictureCallback()Landroid/hardware/Camera$PictureCallback;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$12;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$12;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    return-object v0
.end method

.method private emptyShutterCallback()Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$11;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$11;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    return-object v0
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Landroid/hardware/Camera$Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/Sink$Video;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sightcall_live_qr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->liveQrPrefs:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public static bridge synthetic j(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->detectQr(Landroid/content/Context;[BII)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doOcr(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doPause()V

    return-void
.end method

.method private loadQr()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->liveQrPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pincode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->liveQrPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->liveQrPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "values"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doResume()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doSnapshot(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doStart()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doStop()V

    return-void
.end method

.method private postRequestLayout()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$2;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->updateScaling()V

    return-void
.end method

.method private restartOnlyIfAlreadyStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;[BLandroid/hardware/Camera;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->saveSnapshot(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;[BLandroid/hardware/Camera;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private saveQr(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->liveQrPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->key()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pincode"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "values"

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->qrSet:Ljava/util/Set;

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static saveSnapshot(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;[BLandroid/hardware/Camera;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Snapshot PictureSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Snapshot orientation:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, p2}, Lcom/sightcall/universal/internal/util/Snapshots;->save(Landroid/content/Context;[B)Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/sightcall/universal/internal/util/Snapshots;->setExifOrientation(Landroid/content/Context;Ljava/io/File;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static shutdownLiveQr()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isLiveQrActivated:Z

    return-void
.end method

.method private updateScaling()V
    .locals 8

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dst:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v7}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->src:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dst:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->dump(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getEffect(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFramerate()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate()I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getProfile()Lnet/rtccloud/sdk/VideoModule$Profile;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object p0

    return-object p0
.end method

.method public getResizedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    int-to-float v0, p2

    div-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    mul-float/2addr v0, p0

    float-to-int p0, v0

    move v1, p2

    move p2, p0

    move p0, v1

    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getResizedBitmapFromMaxPixels(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-int p0, v2

    double-to-int p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getScaleType()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    return-object p0
.end method

.method public getZoom()F
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getZoom(Landroid/hardware/Camera;)F

    move-result p0

    return p0
.end method

.method public isAutofocusAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutofocusAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isAutofocusEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutoFocusEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isColorEffectAvailable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isEffectAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFlashAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isFlashEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    return p0
.end method

.method public isStabilizationAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isStabilizationEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isZoomAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Video;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onBind()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p2

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->configure(F)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->loadQr()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-static {v1, v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sightcall/universal/R$bool;->universal_isPortrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;ZII)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V

    :goto_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;[B)V

    :cond_0
    return-void
.end method

.method public onRequestFocus()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "onRequestFocus "

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const-string v2, "auto"

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->isFocusModeAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$13;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$13;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public onScale(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setZoom(F)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->updateScaling()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onStartProducer()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateVideo()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SenderHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    invoke-direct {v2, p0, v1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v2, v1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStopProducer()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopVideo()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    sget-object p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "onSurfaceTextureAvailable(%d, %d)"

    invoke-virtual {p1, p3, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isSurfaceAvailable:Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    sget-object p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureDestroyed() isStarted:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isSurfaceAvailable:Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    sget-object p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onSurfaceTextureSizeChanged(%d, %d)"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onUnbind()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onUnbind()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->postRequestLayout()V

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "pause()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public requestOcr(I)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "requestOcr()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public requestSnapshot()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "snapshot()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetZoom()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resetZoom()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setZoom(F)V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setAutoFocusEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setAutoFocusEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setEffect(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraEffect(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setEffect(Landroid/hardware/Camera;Ljava/lang/String;)V

    return-void
.end method

.method public setFlashEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFlashEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraFlash(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setFramerate(I)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFramerate(%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate(I)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewFps(Landroid/hardware/Camera;I)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V

    :cond_1
    return-void
.end method

.method public setOnCameraCallback(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->cameraCallback:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    return-void
.end method

.method public setProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setProfile(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public setScaleType(Lnet/rtccloud/sdk/util/ScaleType;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setScaleType(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->updateScaling()V

    return-void
.end method

.method public setSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "setSource(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SETTED_CAMERA_FRONT:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SETTED_CAMERA_REAR:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->resetZoom()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public setStabilizationEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setStabilizationEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraStabilization(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setStabilizationEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setZoom(%f)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom(F)Lnet/rtccloud/sdk/Call$Parameters;

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setZoom(Landroid/hardware/Camera;F)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getZoom()F

    move-result p1

    :cond_1
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->ZOOMED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->floatPercentToIntPercent(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 13

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->senderHandler:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;->a(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$SenderHandler;)[B

    move-result-object v3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    if-eqz v3, :cond_4

    array-length v2, v3

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/YuvImage;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    const/16 v4, 0x11

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    array-length v2, v0

    invoke-static {v0, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->internalCorrection:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->internalCorrection:I

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v6

    :cond_4
    :goto_0
    return-object v1
.end method

.method public startLiveQr()V
    .locals 0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isLiveQrActivated:Z

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->LIVE_QR_STARTED:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void
.end method

.method public stopLiveQr()V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isLiveQrActivated:Z

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->LIVE_QR_STOPPED:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void
.end method
