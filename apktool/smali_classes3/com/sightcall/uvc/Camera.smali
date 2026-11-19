.class public Lcom/sightcall/uvc/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CTRL_AE:I = 0x2

.field public static final CTRL_AE_ABS:I = 0x8

.field public static final CTRL_AE_PRIORITY:I = 0x4

.field public static final CTRL_AR_REL:I = 0x10

.field public static final CTRL_FOCUS_ABS:I = 0x20

.field public static final CTRL_FOCUS_AUTO:I = 0x20000

.field public static final CTRL_FOCUS_REL:I = 0x40

.field public static final CTRL_FOCUS_SIMPLE:I = 0x80000

.field public static final CTRL_IRIS_ABS:I = 0x80

.field public static final CTRL_IRIS_REL:I = 0x100

.field public static final CTRL_PANTILT_ABS:I = 0x800

.field public static final CTRL_PANTILT_REL:I = 0x1000

.field public static final CTRL_PRIVACY:I = 0x40000

.field public static final CTRL_ROLL_ABS:I = 0x2000

.field public static final CTRL_ROLL_REL:I = 0x4000

.field public static final CTRL_SCANNING:I = 0x1

.field public static final CTRL_WINDOW:I = 0x100000

.field public static final CTRL_ZOOM_ABS:I = 0x200

.field public static final CTRL_ZOOM_REL:I = 0x400

.field private static final DEBUG:Z = false

.field public static final DEFAULT_BANDWIDTH:F = 1.0f

.field public static final DEFAULT_PREVIEW_HEIGHT:I = 0x1e0

.field public static final DEFAULT_PREVIEW_MAX_FPS:I = 0x1e

.field public static final DEFAULT_PREVIEW_MIN_FPS:I = 0x1

.field public static final DEFAULT_PREVIEW_MODE:I = 0x0

.field public static final DEFAULT_PREVIEW_WIDTH:I = 0x280

.field private static final DEFAULT_USBFS:Ljava/lang/String; = "/dev/bus/usb"

.field public static final FRAME_FORMAT_MJPEG:I = 0x1

.field public static final FRAME_FORMAT_YUYV:I = 0x0

.field public static final PIXEL_FORMAT_NV21:I = 0x5

.field public static final PIXEL_FORMAT_RAW:I = 0x0

.field public static final PIXEL_FORMAT_RGB565:I = 0x2

.field public static final PIXEL_FORMAT_RGBX:I = 0x3

.field public static final PIXEL_FORMAT_YUV:I = 0x1

.field public static final PIXEL_FORMAT_YUV420SP:I = 0x4

.field public static final PU_AVIDEO_LOCK:I = -0x7ffe0000

.field public static final PU_AVIDEO_STD:I = -0x7fff0000

.field public static final PU_BACKLIGHT:I = -0x7fffff00

.field public static final PU_BRIGHTNESS:I = -0x7fffffff

.field public static final PU_CONTRAST:I = -0x7ffffffe

.field public static final PU_CONTRAST_AUTO:I = -0x7ffc0000

.field public static final PU_DIGITAL_LIMIT:I = -0x7fff8000

.field public static final PU_DIGITAL_MULT:I = -0x7fffc000

.field public static final PU_GAIN:I = -0x7ffffe00

.field public static final PU_GAMMA:I = -0x7fffffe0

.field public static final PU_HUE:I = -0x7ffffffc

.field public static final PU_HUE_AUTO:I = -0x7ffff800

.field public static final PU_POWER_LF:I = -0x7ffffc00

.field public static final PU_SATURATION:I = -0x7ffffff8

.field public static final PU_SHARPNESS:I = -0x7ffffff0

.field public static final PU_WB_COMPO:I = -0x7fffff80

.field public static final PU_WB_COMPO_AUTO:I = -0x7fffe000

.field public static final PU_WB_TEMP:I = -0x7fffffc0

.field public static final PU_WB_TEMP_AUTO:I = -0x7ffff000

.field public static final STATUS_ATTRIBUTE_FAILURE_CHANGE:I = 0x2

.field public static final STATUS_ATTRIBUTE_INFO_CHANGE:I = 0x1

.field public static final STATUS_ATTRIBUTE_UNKNOWN:I = 0xff

.field public static final STATUS_ATTRIBUTE_VALUE_CHANGE:I = 0x0

.field public static final STATUS_CLASS_CONTROL:I = 0x10

.field public static final STATUS_CLASS_CONTROL_CAMERA:I = 0x11

.field public static final STATUS_CLASS_CONTROL_PROCESSING:I = 0x12

.field private static final SUPPORTS_CTRL:[Ljava/lang/String;

.field private static final SUPPORTS_PROC:[Ljava/lang/String;

.field private static isLoaded:Z


# instance fields
.field protected mAnalogVideoLockStateDef:I

.field protected mAnalogVideoLockStateMax:I

.field protected mAnalogVideoLockStateMin:I

.field protected mAnalogVideoStandardDef:I

.field protected mAnalogVideoStandardMax:I

.field protected mAnalogVideoStandardMin:I

.field protected mAutoFocusDef:I

.field protected mAutoFocusMax:I

.field protected mAutoFocusMin:I

.field protected mAutoWhiteBlanceCompoDef:I

.field protected mAutoWhiteBlanceCompoMax:I

.field protected mAutoWhiteBlanceCompoMin:I

.field protected mAutoWhiteBlanceDef:I

.field protected mAutoWhiteBlanceMax:I

.field protected mAutoWhiteBlanceMin:I

.field protected mBacklightCompDef:I

.field protected mBacklightCompMax:I

.field protected mBacklightCompMin:I

.field protected mBrightnessDef:I

.field protected mBrightnessMax:I

.field protected mBrightnessMin:I

.field protected mContrastDef:I

.field protected mContrastMax:I

.field protected mContrastMin:I

.field protected mControlSupports:J

.field private mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

.field protected mCurrentBandwidthFactor:F

.field protected mCurrentFrameFormat:I

.field protected mCurrentHeight:I

.field protected mCurrentSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/uvc/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentWidth:I

.field protected mExposureDef:I

.field protected mExposureMax:I

.field protected mExposureMin:I

.field protected mExposureModeDef:I

.field protected mExposureModeMax:I

.field protected mExposureModeMin:I

.field protected mExposurePriorityDef:I

.field protected mExposurePriorityMax:I

.field protected mExposurePriorityMin:I

.field protected mFocusDef:I

.field protected mFocusMax:I

.field protected mFocusMin:I

.field protected mFocusRelDef:I

.field protected mFocusRelMax:I

.field protected mFocusRelMin:I

.field protected mFocusSimpleDef:I

.field protected mFocusSimpleMax:I

.field protected mFocusSimpleMin:I

.field protected mGainDef:I

.field protected mGainMax:I

.field protected mGainMin:I

.field protected mGammaDef:I

.field protected mGammaMax:I

.field protected mGammaMin:I

.field protected mHueDef:I

.field protected mHueMax:I

.field protected mHueMin:I

.field protected mIrisDef:I

.field protected mIrisMax:I

.field protected mIrisMin:I

.field protected mIrisRelDef:I

.field protected mIrisRelMax:I

.field protected mIrisRelMin:I

.field protected mMultiplierDef:I

.field protected mMultiplierLimitDef:I

.field protected mMultiplierLimitMax:I

.field protected mMultiplierLimitMin:I

.field protected mMultiplierMax:I

.field protected mMultiplierMin:I

.field protected mNativePtr:J

.field protected mPanDef:I

.field protected mPanMax:I

.field protected mPanMin:I

.field protected mPanRelDef:I

.field protected mPanRelMax:I

.field protected mPanRelMin:I

.field protected mPowerlineFrequencyDef:I

.field protected mPowerlineFrequencyMax:I

.field protected mPowerlineFrequencyMin:I

.field protected mPrivacyDef:I

.field protected mPrivacyMax:I

.field protected mPrivacyMin:I

.field protected mProcSupports:J

.field protected mRollDef:I

.field protected mRollMax:I

.field protected mRollMin:I

.field protected mRollRelDef:I

.field protected mRollRelMax:I

.field protected mRollRelMin:I

.field protected mSaturationDef:I

.field protected mSaturationMax:I

.field protected mSaturationMin:I

.field protected mScanningModeDef:I

.field protected mScanningModeMax:I

.field protected mScanningModeMin:I

.field protected mSharpnessDef:I

.field protected mSharpnessMax:I

.field protected mSharpnessMin:I

.field protected mSupportedSize:Ljava/lang/String;

.field protected mTiltDef:I

.field protected mTiltMax:I

.field protected mTiltMin:I

.field protected mTiltRelDef:I

.field protected mTiltRelMax:I

.field protected mTiltRelMin:I

.field protected mWhiteBlanceCompoDef:I

.field protected mWhiteBlanceCompoMax:I

.field protected mWhiteBlanceCompoMin:I

.field protected mWhiteBlanceDef:I

.field protected mWhiteBlanceMax:I

.field protected mWhiteBlanceMin:I

.field protected mWhiteBlanceRelDef:I

.field protected mWhiteBlanceRelMax:I

.field protected mWhiteBlanceRelMin:I

.field protected mZoomDef:I

.field protected mZoomMax:I

.field protected mZoomMin:I

.field protected mZoomRelDef:I

.field protected mZoomRelMax:I

.field protected mZoomRelMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    sget-boolean v0, Lcom/sightcall/uvc/Camera;->isLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "UVCCamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sightcall/uvc/Camera;->isLoaded:Z

    :cond_0
    const-string v23, "D22: Reserved, set to zero"

    const-string v24, "D23: Reserved, set to zero"

    const-string v1, "D0:  Scanning Mode"

    const-string v2, "D1:  Auto-Exposure Mode"

    const-string v3, "D2:  Auto-Exposure Priority"

    const-string v4, "D3:  Exposure Time (Absolute)"

    const-string v5, "D4:  Exposure Time (Relative)"

    const-string v6, "D5:  Focus (Absolute)"

    const-string v7, "D6:  Focus (Relative)"

    const-string v8, "D7:  Iris (Absolute)"

    const-string v9, "D8:  Iris (Relative)"

    const-string v10, "D9:  Zoom (Absolute)"

    const-string v11, "D10: Zoom (Relative)"

    const-string v12, "D11: PanTilt (Absolute)"

    const-string v13, "D12: PanTilt (Relative)"

    const-string v14, "D13: Roll (Absolute)"

    const-string v15, "D14: Roll (Relative)"

    const-string v16, "D15: Reserved"

    const-string v17, "D16: Reserved"

    const-string v18, "D17: Focus, Auto"

    const-string v19, "D18: Privacy"

    const-string v20, "D19: Focus, Simple"

    const-string v21, "D20: Window"

    const-string v22, "D21: Region of Interest"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sightcall/uvc/Camera;->SUPPORTS_CTRL:[Ljava/lang/String;

    const-string v23, "D22: Reserved. Set to zero"

    const-string v24, "D23: Reserved. Set to zero"

    const-string v1, "D0: Brightness"

    const-string v2, "D1: Contrast"

    const-string v3, "D2: Hue"

    const-string v4, "D3: Saturation"

    const-string v5, "D4: Sharpness"

    const-string v6, "D5: Gamma"

    const-string v7, "D6: White Balance Temperature"

    const-string v8, "D7: White Balance Component"

    const-string v9, "D8: Backlight Compensation"

    const-string v10, "D9: Gain"

    const-string v11, "D10: Power Line Frequency"

    const-string v12, "D11: Hue, Auto"

    const-string v13, "D12: White Balance Temperature, Auto"

    const-string v14, "D13: White Balance Component, Auto"

    const-string v15, "D14: Digital Multiplier"

    const-string v16, "D15: Digital Multiplier Limit"

    const-string v17, "D16: Analog Video Standard"

    const-string v18, "D17: Analog Video Lock Status"

    const-string v19, "D18: Contrast, Auto"

    const-string v20, "D19: Reserved. Set to zero"

    const-string v21, "D20: Reserved. Set to zero"

    const-string v22, "D21: Reserved. Set to zero"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sightcall/uvc/Camera;->SUPPORTS_PROC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentFrameFormat:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentWidth:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentBandwidthFactor:F

    invoke-direct {p0}, Lcom/sightcall/uvc/Camera;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    return-void
.end method

.method private static addSize(Lorg/json/JSONObject;IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/sightcall/uvc/Size;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :try_start_0
    new-instance v2, Lcom/sightcall/uvc/Size;

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/uvc/Size;-><init>(IIIII)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move p1, v3

    move p2, v4

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static dumpControls(J)V
    .locals 9

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "controlSupports=%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sightcall/uvc/Camera;->SUPPORTS_CTRL:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v5, v1

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    const-string v1, "=enabled"

    goto :goto_1

    :cond_0
    const-string v1, "=disabled"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dumpProc(J)V
    .locals 9

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "procSupports=%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sightcall/uvc/Camera;->SUPPORTS_PROC:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v5, v1

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    const-string v1, "=enabled"

    goto :goto_1

    :cond_0
    const-string v1, "=disabled"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getSupportedSize(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/uvc/Size;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "formats"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, p0, :cond_0

    const/4 v7, -0x1

    if-ne p0, v7, :cond_1

    :cond_0
    invoke-static {v5, v6, v3, v1}, Lcom/sightcall/uvc/Camera;->addSize(Lorg/json/JSONObject;IILjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private getUSBFSName(Lcom/sightcall/uvc/UsbControlBlock;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "/"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to get USBFS path, try to use default path:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/sightcall/pratik/logs/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "/dev/bus/usb"

    return-object p0

    :cond_3
    return-object p1
.end method

.method private native nativeConnect(JIIIIILjava/lang/String;)I
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetAnalogVideoLoackState(J)I
.end method

.method private static native nativeGetAnalogVideoStandard(J)I
.end method

.method private static native nativeGetAutoContrast(J)I
.end method

.method private static native nativeGetAutoFocus(J)I
.end method

.method private static native nativeGetAutoHue(J)I
.end method

.method private static native nativeGetAutoWhiteBlance(J)I
.end method

.method private static native nativeGetAutoWhiteBlanceCompo(J)I
.end method

.method private static native nativeGetBacklightComp(J)I
.end method

.method private static native nativeGetBrightness(J)I
.end method

.method private static native nativeGetContrast(J)I
.end method

.method private static native nativeGetCtrlSupports(J)J
.end method

.method private static native nativeGetDigitalMultiplier(J)I
.end method

.method private static native nativeGetDigitalMultiplierLimit(J)I
.end method

.method private static native nativeGetExposure(J)I
.end method

.method private static native nativeGetExposureMode(J)I
.end method

.method private static native nativeGetExposurePriority(J)I
.end method

.method private static native nativeGetExposureRel(J)I
.end method

.method private static native nativeGetFocus(J)I
.end method

.method private static native nativeGetFocusRel(J)I
.end method

.method private static native nativeGetGain(J)I
.end method

.method private static native nativeGetGamma(J)I
.end method

.method private static native nativeGetHue(J)I
.end method

.method private static native nativeGetIris(J)I
.end method

.method private static native nativeGetIrisRel(J)I
.end method

.method private static native nativeGetPan(J)I
.end method

.method private static native nativeGetPanRel(J)I
.end method

.method private static native nativeGetPowerlineFrequency(J)I
.end method

.method private static native nativeGetPrivacy(J)I
.end method

.method private static native nativeGetProcSupports(J)J
.end method

.method private static native nativeGetRoll(J)I
.end method

.method private static native nativeGetRollRel(J)I
.end method

.method private static native nativeGetSaturation(J)I
.end method

.method private static native nativeGetScanningMode(J)I
.end method

.method private static native nativeGetSharpness(J)I
.end method

.method private static native nativeGetSupportedSize(J)Ljava/lang/String;
.end method

.method private static native nativeGetTilt(J)I
.end method

.method private static native nativeGetTiltRel(J)I
.end method

.method private static native nativeGetWhiteBlance(J)I
.end method

.method private static native nativeGetWhiteBlanceCompo(J)I
.end method

.method private static native nativeGetZoom(J)I
.end method

.method private static native nativeGetZoomRel(J)I
.end method

.method private static native nativeRelease(J)I
.end method

.method private static native nativeSetAnalogVideoLoackState(JI)I
.end method

.method private static native nativeSetAnalogVideoStandard(JI)I
.end method

.method private static native nativeSetAutoContrast(JZ)I
.end method

.method private static native nativeSetAutoFocus(JZ)I
.end method

.method private static native nativeSetAutoHue(JZ)I
.end method

.method private static native nativeSetAutoWhiteBlance(JZ)I
.end method

.method private static native nativeSetAutoWhiteBlanceCompo(JZ)I
.end method

.method private static native nativeSetBacklightComp(JI)I
.end method

.method private static native nativeSetBrightness(JI)I
.end method

.method private static native nativeSetCaptureDisplay(JLandroid/view/Surface;)I
.end method

.method private static native nativeSetContrast(JI)I
.end method

.method private static native nativeSetDigitalMultiplier(JI)I
.end method

.method private static native nativeSetDigitalMultiplierLimit(JI)I
.end method

.method private static native nativeSetExposure(JI)I
.end method

.method private static native nativeSetExposureMode(JI)I
.end method

.method private static native nativeSetExposurePriority(JI)I
.end method

.method private static native nativeSetExposureRel(JI)I
.end method

.method private static native nativeSetFocus(JI)I
.end method

.method private static native nativeSetFocusRel(JI)I
.end method

.method private static native nativeSetFrameCallback(JLcom/sightcall/uvc/FrameCallback;I)I
.end method

.method private static native nativeSetGain(JI)I
.end method

.method private static native nativeSetGamma(JI)I
.end method

.method private static native nativeSetHue(JI)I
.end method

.method private static native nativeSetIris(JI)I
.end method

.method private static native nativeSetIrisRel(JI)I
.end method

.method private static native nativeSetPan(JI)I
.end method

.method private static native nativeSetPanRel(JI)I
.end method

.method private static native nativeSetPowerlineFrequency(JI)I
.end method

.method private static native nativeSetPreviewDisplay(JLandroid/view/Surface;)I
.end method

.method private static native nativeSetPreviewSize(JIIIIIF)I
.end method

.method private static native nativeSetPrivacy(JZ)I
.end method

.method private static native nativeSetRoll(JI)I
.end method

.method private static native nativeSetRollRel(JI)I
.end method

.method private static native nativeSetSaturation(JI)I
.end method

.method private static native nativeSetScanningMode(JI)I
.end method

.method private static native nativeSetSharpness(JI)I
.end method

.method private static native nativeSetTilt(JI)I
.end method

.method private static native nativeSetTiltRel(JI)I
.end method

.method private static native nativeSetWhiteBlance(JI)I
.end method

.method private static native nativeSetWhiteBlanceCompo(JI)I
.end method

.method private static native nativeSetZoom(JI)I
.end method

.method private static native nativeSetZoomRel(JI)I
.end method

.method private static native nativeStartPreview(J)I
.end method

.method private static native nativeStopPreview(J)I
.end method

.method private native nativeUpdateAnalogVideoLockStateLimit(J)I
.end method

.method private native nativeUpdateAnalogVideoStandardLimit(J)I
.end method

.method private native nativeUpdateAutoContrastLimit(J)I
.end method

.method private native nativeUpdateAutoFocusLimit(J)I
.end method

.method private native nativeUpdateAutoHueLimit(J)I
.end method

.method private native nativeUpdateAutoWhiteBlanceCompoLimit(J)I
.end method

.method private native nativeUpdateAutoWhiteBlanceLimit(J)I
.end method

.method private native nativeUpdateBacklightCompLimit(J)I
.end method

.method private native nativeUpdateBrightnessLimit(J)I
.end method

.method private native nativeUpdateContrastLimit(J)I
.end method

.method private native nativeUpdateDigitalMultiplierLimit(J)I
.end method

.method private native nativeUpdateDigitalMultiplierLimitLimit(J)I
.end method

.method private native nativeUpdateExposureLimit(J)I
.end method

.method private native nativeUpdateExposureModeLimit(J)I
.end method

.method private native nativeUpdateExposurePriorityLimit(J)I
.end method

.method private native nativeUpdateExposureRelLimit(J)I
.end method

.method private native nativeUpdateFocusLimit(J)I
.end method

.method private native nativeUpdateFocusRelLimit(J)I
.end method

.method private native nativeUpdateGainLimit(J)I
.end method

.method private native nativeUpdateGammaLimit(J)I
.end method

.method private native nativeUpdateHueLimit(J)I
.end method

.method private native nativeUpdateIrisLimit(J)I
.end method

.method private native nativeUpdateIrisRelLimit(J)I
.end method

.method private native nativeUpdatePanLimit(J)I
.end method

.method private native nativeUpdatePanRelLimit(J)I
.end method

.method private native nativeUpdatePowerlineFrequencyLimit(J)I
.end method

.method private native nativeUpdatePrivacyLimit(J)I
.end method

.method private native nativeUpdateRollLimit(J)I
.end method

.method private native nativeUpdateRollRelLimit(J)I
.end method

.method private native nativeUpdateSaturationLimit(J)I
.end method

.method private native nativeUpdateScanningModeLimit(J)I
.end method

.method private native nativeUpdateSharpnessLimit(J)I
.end method

.method private native nativeUpdateTiltLimit(J)I
.end method

.method private native nativeUpdateTiltRelLimit(J)I
.end method

.method private native nativeUpdateWhiteBlanceCompoLimit(J)I
.end method

.method private native nativeUpdateWhiteBlanceLimit(J)I
.end method

.method private native nativeUpdateZoomLimit(J)I
.end method

.method private native nativeUpdateZoomRelLimit(J)I
.end method


# virtual methods
.method public checkSupportFlag(J)Z
    .locals 7

    invoke-virtual {p0}, Lcom/sightcall/uvc/Camera;->updateCameraParams()V

    const-wide/32 v0, -0x80000000

    and-long v2, p1, v0

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    and-long/2addr v3, p1

    const-wide/32 v5, 0x7fffffff

    and-long p0, p1, v5

    cmp-long p0, v3, p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-wide v3, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J

    and-long/2addr v3, p1

    cmp-long p0, v3, p1

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sightcall/uvc/Camera;->stopPreview()V

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeRelease(J)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/uvc/UsbControlBlock;->close()V

    iput-object v1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    :cond_1
    iput-wide v2, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    iput-wide v2, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentFrameFormat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentBandwidthFactor:F

    iput-object v1, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/uvc/Camera;->mCurrentSizeList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sightcall/uvc/Camera;->close()V

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized getAutoFocus()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetAutoFocus(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAutoWhiteBlance()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetAutoWhiteBlance(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getBrightness()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetBrightness(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getBrightness(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getBrightness(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateBrightnessLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getContrast()I
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetContrast(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getContrast(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getContrast(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mContrastMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mContrastMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mContrastMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/uvc/UsbControlBlock;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/uvc/UsbControlBlock;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFocus()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetFocus(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getFocus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFocus(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateFocusLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mFocusMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mFocusMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mFocusMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getGain()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetGain(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getGain(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getGain(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateGainLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGainMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGainMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGainMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getGamma()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetGamma(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getGamma(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getGamma(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateGammaLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGammaMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGammaMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGammaMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getHue()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetHue(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getHue(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHue(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateHueLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mHueMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mHueMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mHueMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getPowerlineFrequency()I
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetPowerlineFrequency(J)I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Lcom/sightcall/uvc/Size;
    .locals 4

    invoke-virtual {p0}, Lcom/sightcall/uvc/Camera;->getSupportedSizeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/uvc/Size;

    iget v2, v1, Lcom/sightcall/uvc/Size;->width:I

    iget v3, p0, Lcom/sightcall/uvc/Camera;->mCurrentWidth:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/sightcall/uvc/Size;->height:I

    iget v3, p0, Lcom/sightcall/uvc/Camera;->mCurrentHeight:I

    if-ne v2, v3, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getSaturation()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetSaturation(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getSaturation(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSaturation(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateSaturationLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSaturationMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSaturationMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSaturationMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getSharpness()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetSharpness(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getSharpness(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSharpness(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateSharpnessLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getSupportedSize()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetSupportedSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSupportedSizeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/uvc/Size;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mCurrentFrameFormat:I

    if-lez v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object p0, p0, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sightcall/uvc/Camera;->getSupportedSize(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsbControlBlock()Lcom/sightcall/uvc/UsbControlBlock;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    return-object p0
.end method

.method public declared-synchronized getWhiteBlance()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetWhiteBlance(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getFocus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWhiteBlance(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateWhiteBlanceLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getZoom()I
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetZoom(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/Camera;->getZoom(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getZoom(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateZoomLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mZoomMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mZoomMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mZoomMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized open(Lcom/sightcall/uvc/UsbControlBlock;)V
    .locals 11

    const-string v1, "open failed:result="

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    iget-wide v3, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getVenderId()I

    move-result v5

    iget-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getProductId()I

    move-result v6

    iget-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getFileDescriptor()I

    move-result v7

    iget-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getBusNum()I

    move-result v8

    iget-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-virtual {p1}, Lcom/sightcall/uvc/UsbControlBlock;->getDevNum()I

    move-result v9

    iget-object p1, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-direct {p0, p1}, Lcom/sightcall/uvc/Camera;->getUSBFSName(Lcom/sightcall/uvc/UsbControlBlock;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v10}, Lcom/sightcall/uvc/Camera;->nativeConnect(JIIIIILjava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_1

    :goto_2
    :try_start_2
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "cannot connect to UVC camera"

    invoke-virtual {p1, v0, p0}, Lcom/sightcall/pratik/logs/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_3
    if-eqz p0, :cond_1

    const/16 p1, -0x63

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p1, "UNKNOWN_ERROR"

    goto :goto_4

    :pswitch_0
    const-string p1, "UVC_ERROR_IO"

    goto :goto_4

    :pswitch_1
    const-string p1, "UVC_ERROR_INVALID_PARAM"

    goto :goto_4

    :pswitch_2
    const-string p1, "UVC_ERROR_ACCESS"

    goto :goto_4

    :pswitch_3
    const-string p1, "UVC_ERROR_NO_DEVICE"

    goto :goto_4

    :pswitch_4
    const-string p1, "UVC_ERROR_NOT_FOUND"

    goto :goto_4

    :pswitch_5
    const-string p1, "UVC_ERROR_BUSY"

    goto :goto_4

    :pswitch_6
    const-string p1, "UVC_ERROR_TIMEOUT"

    goto :goto_4

    :pswitch_7
    const-string p1, "UVC_ERROR_OVERFLOW"

    goto :goto_4

    :pswitch_8
    const-string p1, "UVC_ERROR_PIPE"

    goto :goto_4

    :pswitch_9
    const-string p1, "UVC_ERROR_INTERRUPTED"

    goto :goto_4

    :pswitch_a
    const-string p1, "UVC_ERROR_NO_MEM"

    goto :goto_4

    :pswitch_b
    const-string p1, "UVC_ERROR_NOT_SUPPORTED"

    goto :goto_4

    :pswitch_c
    const-string p1, "UVC_ERROR_INVALID_DEVICE"

    goto :goto_4

    :pswitch_d
    const-string p1, "UVC_ERROR_INVALID_MODE"

    goto :goto_4

    :pswitch_e
    const-string p1, "UVC_ERROR_CALLBACK_EXISTS"

    goto :goto_4

    :cond_0
    const-string p1, "UVC_ERROR_OTHER"

    :goto_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide p0, v2, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_2

    iget-object p0, v2, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-wide p0, v2, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {p0, p1}, Lcom/sightcall/uvc/Camera;->nativeGetSupportedSize(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/sightcall/uvc/Camera;->mSupportedSize:Ljava/lang/String;

    :cond_2
    iget-wide v3, v2, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v5, 0x280

    const/16 v6, 0x1e0

    const/4 v7, 0x1

    const/16 v8, 0x1e

    invoke-static/range {v3 .. v10}, Lcom/sightcall/uvc/Camera;->nativeSetPreviewSize(JIIIIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xc
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

.method public declared-synchronized resetBrightness()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mBrightnessDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetBrightness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetContrast()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mContrastDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetContrast(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetFocus()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mFocusDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetFocus(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetGain()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mGainDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetGain(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetGamma()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mGammaDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetGamma(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetHue()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mSaturationDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetHue(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetSaturation()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mSaturationDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetSaturation(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetSharpness()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mSharpnessDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetSharpness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetWhiteBlance()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetWhiteBlance(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized resetZoom()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sightcall/uvc/Camera;->mZoomDef:I

    invoke-static {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->nativeSetZoom(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized setAutoFocus(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetAutoFocus(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAutoWhiteBlance(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetAutoWhiteBlance(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setBrightness(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mBrightnessMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetBrightness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setContrast(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateContrastLimit(J)I

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mContrastMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mContrastMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mContrastMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetContrast(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setFocus(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mFocusMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mFocusMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mFocusMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetFocus(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V
    .locals 4

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/sightcall/uvc/Camera;->nativeSetFrameCallback(JLcom/sightcall/uvc/FrameCallback;I)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setGain(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGainMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGainMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGainMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetGain(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setGamma(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGammaMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mGammaMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mGammaMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetGamma(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHue(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mHueMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mHueMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mHueMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetHue(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPowerlineFrequency(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetPowerlineFrequency(JI)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setPreviewDisplay(Landroid/view/Surface;)V
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPreviewSize(II)V
    .locals 7

    .line 47
    iget v5, p0, Lcom/sightcall/uvc/Camera;->mCurrentFrameFormat:I

    iget v6, p0, Lcom/sightcall/uvc/Camera;->mCurrentBandwidthFactor:F

    const/4 v3, 0x1

    const/16 v4, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sightcall/uvc/Camera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(III)V
    .locals 7

    const/16 v4, 0x1e

    .line 45
    iget v6, p0, Lcom/sightcall/uvc/Camera;->mCurrentBandwidthFactor:F

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sightcall/uvc/Camera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(IIIF)V
    .locals 7

    const/4 v3, 0x1

    const/16 v4, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/sightcall/uvc/Camera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(IIIIIF)V
    .locals 8

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sightcall/uvc/Camera;->nativeSetPreviewSize(JIIIIIF)I

    move-result p1

    if-nez p1, :cond_0

    iput v6, p0, Lcom/sightcall/uvc/Camera;->mCurrentFrameFormat:I

    iput v2, p0, Lcom/sightcall/uvc/Camera;->mCurrentWidth:I

    iput v3, p0, Lcom/sightcall/uvc/Camera;->mCurrentHeight:I

    iput v7, p0, Lcom/sightcall/uvc/Camera;->mCurrentBandwidthFactor:F

    return-void

    :cond_0
    const-string p0, "Failed to set preview size"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "invalid preview size"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v1, v2, v0}, Lcom/sightcall/uvc/Camera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSaturation(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSaturationMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSaturationMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSaturationMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetSaturation(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSharpness(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mSharpnessMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetSharpness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWhiteBlance(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mWhiteBlanceMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/sightcall/uvc/Camera;->nativeSetWhiteBlance(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setZoom(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mZoomMax:I

    iget v1, p0, Lcom/sightcall/uvc/Camera;->mZoomMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/sightcall/uvc/Camera;->mZoomMin:I

    add-int/2addr p1, v0

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetZoom(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startCapture(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sightcall/uvc/Camera;->nativeSetCaptureDisplay(JLandroid/view/Surface;)I

    return-void

    :cond_0
    const-string p0, "startCapture"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeStartPreview(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public stopCapture()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/sightcall/uvc/Camera;->nativeSetCaptureDisplay(JLandroid/view/Surface;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V

    iget-object v0, p0, Lcom/sightcall/uvc/Camera;->mCtrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeStopPreview(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
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

.method public declared-synchronized updateCameraParams()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetCtrlSupports(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J

    :cond_1
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sightcall/uvc/Camera;->nativeGetProcSupports(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    :cond_2
    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateBrightnessLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateContrastLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateSharpnessLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateGainLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateGammaLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateSaturationLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateHueLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateZoomLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateWhiteBlanceLimit(J)I

    iget-wide v0, p0, Lcom/sightcall/uvc/Camera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/uvc/Camera;->nativeUpdateFocusLimit(J)I

    goto :goto_1

    :cond_3
    iput-wide v2, p0, Lcom/sightcall/uvc/Camera;->mProcSupports:J

    iput-wide v2, p0, Lcom/sightcall/uvc/Camera;->mControlSupports:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
