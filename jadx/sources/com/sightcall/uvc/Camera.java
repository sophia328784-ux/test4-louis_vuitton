package com.sightcall.uvc;

import android.graphics.SurfaceTexture;
import android.hardware.usb.UsbDevice;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.networkbench.agent.impl.plugin.g.a.e;
import com.sightcall.pratik.logs.Logger;
import defpackage.md;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.Action;

/* JADX INFO: loaded from: classes3.dex */
public class Camera {
    public static final int CTRL_AE = 2;
    public static final int CTRL_AE_ABS = 8;
    public static final int CTRL_AE_PRIORITY = 4;
    public static final int CTRL_AR_REL = 16;
    public static final int CTRL_FOCUS_ABS = 32;
    public static final int CTRL_FOCUS_AUTO = 131072;
    public static final int CTRL_FOCUS_REL = 64;
    public static final int CTRL_FOCUS_SIMPLE = 524288;
    public static final int CTRL_IRIS_ABS = 128;
    public static final int CTRL_IRIS_REL = 256;
    public static final int CTRL_PANTILT_ABS = 2048;
    public static final int CTRL_PANTILT_REL = 4096;
    public static final int CTRL_PRIVACY = 262144;
    public static final int CTRL_ROLL_ABS = 8192;
    public static final int CTRL_ROLL_REL = 16384;
    public static final int CTRL_SCANNING = 1;
    public static final int CTRL_WINDOW = 1048576;
    public static final int CTRL_ZOOM_ABS = 512;
    public static final int CTRL_ZOOM_REL = 1024;
    private static final boolean DEBUG = false;
    public static final float DEFAULT_BANDWIDTH = 1.0f;
    public static final int DEFAULT_PREVIEW_HEIGHT = 480;
    public static final int DEFAULT_PREVIEW_MAX_FPS = 30;
    public static final int DEFAULT_PREVIEW_MIN_FPS = 1;
    public static final int DEFAULT_PREVIEW_MODE = 0;
    public static final int DEFAULT_PREVIEW_WIDTH = 640;
    private static final String DEFAULT_USBFS = "/dev/bus/usb";
    public static final int FRAME_FORMAT_MJPEG = 1;
    public static final int FRAME_FORMAT_YUYV = 0;
    public static final int PIXEL_FORMAT_NV21 = 5;
    public static final int PIXEL_FORMAT_RAW = 0;
    public static final int PIXEL_FORMAT_RGB565 = 2;
    public static final int PIXEL_FORMAT_RGBX = 3;
    public static final int PIXEL_FORMAT_YUV = 1;
    public static final int PIXEL_FORMAT_YUV420SP = 4;
    public static final int PU_AVIDEO_LOCK = -2147352576;
    public static final int PU_AVIDEO_STD = -2147418112;
    public static final int PU_BACKLIGHT = -2147483392;
    public static final int PU_BRIGHTNESS = -2147483647;
    public static final int PU_CONTRAST = -2147483646;
    public static final int PU_CONTRAST_AUTO = -2147221504;
    public static final int PU_DIGITAL_LIMIT = -2147450880;
    public static final int PU_DIGITAL_MULT = -2147467264;
    public static final int PU_GAIN = -2147483136;
    public static final int PU_GAMMA = -2147483616;
    public static final int PU_HUE = -2147483644;
    public static final int PU_HUE_AUTO = -2147481600;
    public static final int PU_POWER_LF = -2147482624;
    public static final int PU_SATURATION = -2147483640;
    public static final int PU_SHARPNESS = -2147483632;
    public static final int PU_WB_COMPO = -2147483520;
    public static final int PU_WB_COMPO_AUTO = -2147475456;
    public static final int PU_WB_TEMP = -2147483584;
    public static final int PU_WB_TEMP_AUTO = -2147479552;
    public static final int STATUS_ATTRIBUTE_FAILURE_CHANGE = 2;
    public static final int STATUS_ATTRIBUTE_INFO_CHANGE = 1;
    public static final int STATUS_ATTRIBUTE_UNKNOWN = 255;
    public static final int STATUS_ATTRIBUTE_VALUE_CHANGE = 0;
    public static final int STATUS_CLASS_CONTROL = 16;
    public static final int STATUS_CLASS_CONTROL_CAMERA = 17;
    public static final int STATUS_CLASS_CONTROL_PROCESSING = 18;
    private static final String[] SUPPORTS_CTRL;
    private static final String[] SUPPORTS_PROC;
    private static boolean isLoaded;
    protected int mAnalogVideoLockStateDef;
    protected int mAnalogVideoLockStateMax;
    protected int mAnalogVideoLockStateMin;
    protected int mAnalogVideoStandardDef;
    protected int mAnalogVideoStandardMax;
    protected int mAnalogVideoStandardMin;
    protected int mAutoFocusDef;
    protected int mAutoFocusMax;
    protected int mAutoFocusMin;
    protected int mAutoWhiteBlanceCompoDef;
    protected int mAutoWhiteBlanceCompoMax;
    protected int mAutoWhiteBlanceCompoMin;
    protected int mAutoWhiteBlanceDef;
    protected int mAutoWhiteBlanceMax;
    protected int mAutoWhiteBlanceMin;
    protected int mBacklightCompDef;
    protected int mBacklightCompMax;
    protected int mBacklightCompMin;
    protected int mBrightnessDef;
    protected int mBrightnessMax;
    protected int mBrightnessMin;
    protected int mContrastDef;
    protected int mContrastMax;
    protected int mContrastMin;
    protected long mControlSupports;
    private UsbControlBlock mCtrlBlock;
    protected List<Size> mCurrentSizeList;
    protected int mExposureDef;
    protected int mExposureMax;
    protected int mExposureMin;
    protected int mExposureModeDef;
    protected int mExposureModeMax;
    protected int mExposureModeMin;
    protected int mExposurePriorityDef;
    protected int mExposurePriorityMax;
    protected int mExposurePriorityMin;
    protected int mFocusDef;
    protected int mFocusMax;
    protected int mFocusMin;
    protected int mFocusRelDef;
    protected int mFocusRelMax;
    protected int mFocusRelMin;
    protected int mFocusSimpleDef;
    protected int mFocusSimpleMax;
    protected int mFocusSimpleMin;
    protected int mGainDef;
    protected int mGainMax;
    protected int mGainMin;
    protected int mGammaDef;
    protected int mGammaMax;
    protected int mGammaMin;
    protected int mHueDef;
    protected int mHueMax;
    protected int mHueMin;
    protected int mIrisDef;
    protected int mIrisMax;
    protected int mIrisMin;
    protected int mIrisRelDef;
    protected int mIrisRelMax;
    protected int mIrisRelMin;
    protected int mMultiplierDef;
    protected int mMultiplierLimitDef;
    protected int mMultiplierLimitMax;
    protected int mMultiplierLimitMin;
    protected int mMultiplierMax;
    protected int mMultiplierMin;
    protected int mPanDef;
    protected int mPanMax;
    protected int mPanMin;
    protected int mPanRelDef;
    protected int mPanRelMax;
    protected int mPanRelMin;
    protected int mPowerlineFrequencyDef;
    protected int mPowerlineFrequencyMax;
    protected int mPowerlineFrequencyMin;
    protected int mPrivacyDef;
    protected int mPrivacyMax;
    protected int mPrivacyMin;
    protected long mProcSupports;
    protected int mRollDef;
    protected int mRollMax;
    protected int mRollMin;
    protected int mRollRelDef;
    protected int mRollRelMax;
    protected int mRollRelMin;
    protected int mSaturationDef;
    protected int mSaturationMax;
    protected int mSaturationMin;
    protected int mScanningModeDef;
    protected int mScanningModeMax;
    protected int mScanningModeMin;
    protected int mSharpnessDef;
    protected int mSharpnessMax;
    protected int mSharpnessMin;
    protected int mTiltDef;
    protected int mTiltMax;
    protected int mTiltMin;
    protected int mTiltRelDef;
    protected int mTiltRelMax;
    protected int mTiltRelMin;
    protected int mWhiteBlanceCompoDef;
    protected int mWhiteBlanceCompoMax;
    protected int mWhiteBlanceCompoMin;
    protected int mWhiteBlanceDef;
    protected int mWhiteBlanceMax;
    protected int mWhiteBlanceMin;
    protected int mWhiteBlanceRelDef;
    protected int mWhiteBlanceRelMax;
    protected int mWhiteBlanceRelMin;
    protected int mZoomDef;
    protected int mZoomMax;
    protected int mZoomMin;
    protected int mZoomRelDef;
    protected int mZoomRelMax;
    protected int mZoomRelMin;
    protected int mCurrentFrameFormat = 0;
    protected int mCurrentWidth = DEFAULT_PREVIEW_WIDTH;
    protected int mCurrentHeight = DEFAULT_PREVIEW_HEIGHT;
    protected float mCurrentBandwidthFactor = 1.0f;
    protected long mNativePtr = nativeCreate();
    protected String mSupportedSize = null;

    static {
        if (!isLoaded) {
            System.loadLibrary("UVCCamera");
            isLoaded = true;
        }
        SUPPORTS_CTRL = new String[]{"D0:  Scanning Mode", "D1:  Auto-Exposure Mode", "D2:  Auto-Exposure Priority", "D3:  Exposure Time (Absolute)", "D4:  Exposure Time (Relative)", "D5:  Focus (Absolute)", "D6:  Focus (Relative)", "D7:  Iris (Absolute)", "D8:  Iris (Relative)", "D9:  Zoom (Absolute)", "D10: Zoom (Relative)", "D11: PanTilt (Absolute)", "D12: PanTilt (Relative)", "D13: Roll (Absolute)", "D14: Roll (Relative)", "D15: Reserved", "D16: Reserved", "D17: Focus, Auto", "D18: Privacy", "D19: Focus, Simple", "D20: Window", "D21: Region of Interest", "D22: Reserved, set to zero", "D23: Reserved, set to zero"};
        SUPPORTS_PROC = new String[]{"D0: Brightness", "D1: Contrast", "D2: Hue", "D3: Saturation", "D4: Sharpness", "D5: Gamma", "D6: White Balance Temperature", "D7: White Balance Component", "D8: Backlight Compensation", "D9: Gain", "D10: Power Line Frequency", "D11: Hue, Auto", "D12: White Balance Temperature, Auto", "D13: White Balance Component, Auto", "D14: Digital Multiplier", "D15: Digital Multiplier Limit", "D16: Analog Video Standard", "D17: Analog Video Lock Status", "D18: Contrast, Auto", "D19: Reserved. Set to zero", "D20: Reserved. Set to zero", "D21: Reserved. Set to zero", "D22: Reserved. Set to zero", "D23: Reserved. Set to zero"};
    }

    private static void addSize(JSONObject jSONObject, int i2, int i3, List<Size> list) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("size");
        int length = jSONArray.length();
        int i4 = 0;
        while (i4 < length) {
            String[] strArrSplit = jSONArray.getString(i4).split("x");
            try {
                int i5 = i2;
                int i6 = i3;
                list.add(new Size(i5, i6, i4, Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])));
                i4++;
                i2 = i5;
                i3 = i6;
            } catch (Exception unused) {
                return;
            }
        }
    }

    private static void dumpControls(long j2) {
        Logger.INSTANCE.i(String.format("controlSupports=%x", Long.valueOf(j2)), null);
        int i2 = 0;
        while (true) {
            String[] strArr = SUPPORTS_CTRL;
            if (i2 >= strArr.length) {
                return;
            }
            Logger logger = Logger.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append(strArr[i2]);
            sb.append((((long) (1 << i2)) & j2) != 0 ? "=enabled" : "=disabled");
            logger.i(sb.toString(), null);
            i2++;
        }
    }

    private static void dumpProc(long j2) {
        Logger.INSTANCE.i(String.format("procSupports=%x", Long.valueOf(j2)), null);
        int i2 = 0;
        while (true) {
            String[] strArr = SUPPORTS_PROC;
            if (i2 >= strArr.length) {
                return;
            }
            Logger logger = Logger.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append(strArr[i2]);
            sb.append((((long) (1 << i2)) & j2) != 0 ? "=enabled" : "=disabled");
            logger.i(sb.toString(), null);
            i2++;
        }
    }

    public static List<Size> getSupportedSize(int i2, String str) {
        int i3;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONArray("formats");
                int length = jSONArray.length();
                for (int i4 = 0; i4 < length; i4++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i4);
                    if (jSONObject.has("type") && jSONObject.has("size") && ((i3 = jSONObject.getInt("type")) == i2 || i2 == -1)) {
                        addSize(jSONObject, i3, 0, arrayList);
                    }
                }
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private String getUSBFSName(UsbControlBlock usbControlBlock) {
        String string;
        String deviceName = usbControlBlock.getDeviceName();
        String[] strArrSplit = !TextUtils.isEmpty(deviceName) ? deviceName.split("/") : null;
        if (strArrSplit == null || strArrSplit.length <= 2) {
            string = null;
        } else {
            StringBuilder sb = new StringBuilder(strArrSplit[0]);
            for (int i2 = 1; i2 < strArrSplit.length - 2; i2++) {
                sb.append("/");
                sb.append(strArrSplit[i2]);
            }
            string = sb.toString();
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        Logger.INSTANCE.w("failed to get USBFS path, try to use default path:" + deviceName, null);
        return DEFAULT_USBFS;
    }

    private native int nativeConnect(long j2, int i2, int i3, int i4, int i5, int i6, String str);

    private native long nativeCreate();

    private native void nativeDestroy(long j2);

    private static native int nativeGetAnalogVideoLoackState(long j2);

    private static native int nativeGetAnalogVideoStandard(long j2);

    private static native int nativeGetAutoContrast(long j2);

    private static native int nativeGetAutoFocus(long j2);

    private static native int nativeGetAutoHue(long j2);

    private static native int nativeGetAutoWhiteBlance(long j2);

    private static native int nativeGetAutoWhiteBlanceCompo(long j2);

    private static native int nativeGetBacklightComp(long j2);

    private static native int nativeGetBrightness(long j2);

    private static native int nativeGetContrast(long j2);

    private static native long nativeGetCtrlSupports(long j2);

    private static native int nativeGetDigitalMultiplier(long j2);

    private static native int nativeGetDigitalMultiplierLimit(long j2);

    private static native int nativeGetExposure(long j2);

    private static native int nativeGetExposureMode(long j2);

    private static native int nativeGetExposurePriority(long j2);

    private static native int nativeGetExposureRel(long j2);

    private static native int nativeGetFocus(long j2);

    private static native int nativeGetFocusRel(long j2);

    private static native int nativeGetGain(long j2);

    private static native int nativeGetGamma(long j2);

    private static native int nativeGetHue(long j2);

    private static native int nativeGetIris(long j2);

    private static native int nativeGetIrisRel(long j2);

    private static native int nativeGetPan(long j2);

    private static native int nativeGetPanRel(long j2);

    private static native int nativeGetPowerlineFrequency(long j2);

    private static native int nativeGetPrivacy(long j2);

    private static native long nativeGetProcSupports(long j2);

    private static native int nativeGetRoll(long j2);

    private static native int nativeGetRollRel(long j2);

    private static native int nativeGetSaturation(long j2);

    private static native int nativeGetScanningMode(long j2);

    private static native int nativeGetSharpness(long j2);

    private static native String nativeGetSupportedSize(long j2);

    private static native int nativeGetTilt(long j2);

    private static native int nativeGetTiltRel(long j2);

    private static native int nativeGetWhiteBlance(long j2);

    private static native int nativeGetWhiteBlanceCompo(long j2);

    private static native int nativeGetZoom(long j2);

    private static native int nativeGetZoomRel(long j2);

    private static native int nativeRelease(long j2);

    private static native int nativeSetAnalogVideoLoackState(long j2, int i2);

    private static native int nativeSetAnalogVideoStandard(long j2, int i2);

    private static native int nativeSetAutoContrast(long j2, boolean z);

    private static native int nativeSetAutoFocus(long j2, boolean z);

    private static native int nativeSetAutoHue(long j2, boolean z);

    private static native int nativeSetAutoWhiteBlance(long j2, boolean z);

    private static native int nativeSetAutoWhiteBlanceCompo(long j2, boolean z);

    private static native int nativeSetBacklightComp(long j2, int i2);

    private static native int nativeSetBrightness(long j2, int i2);

    private static native int nativeSetCaptureDisplay(long j2, Surface surface);

    private static native int nativeSetContrast(long j2, int i2);

    private static native int nativeSetDigitalMultiplier(long j2, int i2);

    private static native int nativeSetDigitalMultiplierLimit(long j2, int i2);

    private static native int nativeSetExposure(long j2, int i2);

    private static native int nativeSetExposureMode(long j2, int i2);

    private static native int nativeSetExposurePriority(long j2, int i2);

    private static native int nativeSetExposureRel(long j2, int i2);

    private static native int nativeSetFocus(long j2, int i2);

    private static native int nativeSetFocusRel(long j2, int i2);

    private static native int nativeSetFrameCallback(long j2, FrameCallback frameCallback, int i2);

    private static native int nativeSetGain(long j2, int i2);

    private static native int nativeSetGamma(long j2, int i2);

    private static native int nativeSetHue(long j2, int i2);

    private static native int nativeSetIris(long j2, int i2);

    private static native int nativeSetIrisRel(long j2, int i2);

    private static native int nativeSetPan(long j2, int i2);

    private static native int nativeSetPanRel(long j2, int i2);

    private static native int nativeSetPowerlineFrequency(long j2, int i2);

    private static native int nativeSetPreviewDisplay(long j2, Surface surface);

    private static native int nativeSetPreviewSize(long j2, int i2, int i3, int i4, int i5, int i6, float f2);

    private static native int nativeSetPrivacy(long j2, boolean z);

    private static native int nativeSetRoll(long j2, int i2);

    private static native int nativeSetRollRel(long j2, int i2);

    private static native int nativeSetSaturation(long j2, int i2);

    private static native int nativeSetScanningMode(long j2, int i2);

    private static native int nativeSetSharpness(long j2, int i2);

    private static native int nativeSetTilt(long j2, int i2);

    private static native int nativeSetTiltRel(long j2, int i2);

    private static native int nativeSetWhiteBlance(long j2, int i2);

    private static native int nativeSetWhiteBlanceCompo(long j2, int i2);

    private static native int nativeSetZoom(long j2, int i2);

    private static native int nativeSetZoomRel(long j2, int i2);

    private static native int nativeStartPreview(long j2);

    private static native int nativeStopPreview(long j2);

    private native int nativeUpdateAnalogVideoLockStateLimit(long j2);

    private native int nativeUpdateAnalogVideoStandardLimit(long j2);

    private native int nativeUpdateAutoContrastLimit(long j2);

    private native int nativeUpdateAutoFocusLimit(long j2);

    private native int nativeUpdateAutoHueLimit(long j2);

    private native int nativeUpdateAutoWhiteBlanceCompoLimit(long j2);

    private native int nativeUpdateAutoWhiteBlanceLimit(long j2);

    private native int nativeUpdateBacklightCompLimit(long j2);

    private native int nativeUpdateBrightnessLimit(long j2);

    private native int nativeUpdateContrastLimit(long j2);

    private native int nativeUpdateDigitalMultiplierLimit(long j2);

    private native int nativeUpdateDigitalMultiplierLimitLimit(long j2);

    private native int nativeUpdateExposureLimit(long j2);

    private native int nativeUpdateExposureModeLimit(long j2);

    private native int nativeUpdateExposurePriorityLimit(long j2);

    private native int nativeUpdateExposureRelLimit(long j2);

    private native int nativeUpdateFocusLimit(long j2);

    private native int nativeUpdateFocusRelLimit(long j2);

    private native int nativeUpdateGainLimit(long j2);

    private native int nativeUpdateGammaLimit(long j2);

    private native int nativeUpdateHueLimit(long j2);

    private native int nativeUpdateIrisLimit(long j2);

    private native int nativeUpdateIrisRelLimit(long j2);

    private native int nativeUpdatePanLimit(long j2);

    private native int nativeUpdatePanRelLimit(long j2);

    private native int nativeUpdatePowerlineFrequencyLimit(long j2);

    private native int nativeUpdatePrivacyLimit(long j2);

    private native int nativeUpdateRollLimit(long j2);

    private native int nativeUpdateRollRelLimit(long j2);

    private native int nativeUpdateSaturationLimit(long j2);

    private native int nativeUpdateScanningModeLimit(long j2);

    private native int nativeUpdateSharpnessLimit(long j2);

    private native int nativeUpdateTiltLimit(long j2);

    private native int nativeUpdateTiltRelLimit(long j2);

    private native int nativeUpdateWhiteBlanceCompoLimit(long j2);

    private native int nativeUpdateWhiteBlanceLimit(long j2);

    private native int nativeUpdateZoomLimit(long j2);

    private native int nativeUpdateZoomRelLimit(long j2);

    public boolean checkSupportFlag(long j2) {
        updateCameraParams();
        if ((j2 & (-2147483648L)) == -2147483648L) {
            return (this.mProcSupports & j2) == (j2 & 2147483647L);
        }
        return (this.mControlSupports & j2) == j2;
    }

    public synchronized void close() {
        try {
            stopPreview();
            long j2 = this.mNativePtr;
            if (j2 != 0) {
                nativeRelease(j2);
            }
            UsbControlBlock usbControlBlock = this.mCtrlBlock;
            if (usbControlBlock != null) {
                usbControlBlock.close();
                this.mCtrlBlock = null;
            }
            this.mProcSupports = 0L;
            this.mControlSupports = 0L;
            this.mCurrentFrameFormat = -1;
            this.mCurrentBandwidthFactor = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.mSupportedSize = null;
            this.mCurrentSizeList = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void destroy() {
        close();
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeDestroy(j2);
            this.mNativePtr = 0L;
        }
    }

    public synchronized boolean getAutoFocus() {
        boolean z;
        long j2 = this.mNativePtr;
        z = true;
        if (j2 != 0 && nativeGetAutoFocus(j2) <= 0) {
            z = false;
        }
        return z;
    }

    public synchronized boolean getAutoWhiteBlance() {
        boolean z;
        long j2 = this.mNativePtr;
        z = true;
        if (j2 != 0 && nativeGetAutoWhiteBlance(j2) <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getBrightness(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateBrightnessLimit(j2);
            float fAbs = Math.abs(this.mBrightnessMax - this.mBrightnessMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mBrightnessMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    public synchronized int getContrast(int i2) {
        int i3;
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mContrastMax - this.mContrastMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mContrastMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    public UsbDevice getDevice() {
        UsbControlBlock usbControlBlock = this.mCtrlBlock;
        if (usbControlBlock != null) {
            return usbControlBlock.getDevice();
        }
        return null;
    }

    public String getDeviceName() {
        UsbControlBlock usbControlBlock = this.mCtrlBlock;
        if (usbControlBlock != null) {
            return usbControlBlock.getDeviceName();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getFocus(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateFocusLimit(j2);
            float fAbs = Math.abs(this.mFocusMax - this.mFocusMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mFocusMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getGain(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateGainLimit(j2);
            float fAbs = Math.abs(this.mGainMax - this.mGainMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mGainMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getGamma(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateGammaLimit(j2);
            float fAbs = Math.abs(this.mGammaMax - this.mGammaMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mGammaMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getHue(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateHueLimit(j2);
            float fAbs = Math.abs(this.mHueMax - this.mHueMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mHueMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    public int getPowerlineFrequency() {
        return nativeGetPowerlineFrequency(this.mNativePtr);
    }

    public Size getPreviewSize() {
        for (Size size : getSupportedSizeList()) {
            if (size.width == this.mCurrentWidth || size.height == this.mCurrentHeight) {
                return size;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getSaturation(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateSaturationLimit(j2);
            float fAbs = Math.abs(this.mSaturationMax - this.mSaturationMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mSaturationMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getSharpness(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateSharpnessLimit(j2);
            float fAbs = Math.abs(this.mSharpnessMax - this.mSharpnessMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mSharpnessMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    public List<Size> getSupportedSizeList() {
        return getSupportedSize(this.mCurrentFrameFormat > 0 ? 6 : 4, this.mSupportedSize);
    }

    public UsbControlBlock getUsbControlBlock() {
        return this.mCtrlBlock;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getWhiteBlance(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateWhiteBlanceLimit(j2);
            float fAbs = Math.abs(this.mWhiteBlanceMax - this.mWhiteBlanceMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mWhiteBlanceMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public synchronized int getZoom(int i2) {
        int i3;
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateZoomLimit(j2);
            float fAbs = Math.abs(this.mZoomMax - this.mZoomMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = (int) (((i2 - this.mZoomMin) * 100.0f) / fAbs);
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        return i3;
    }

    public synchronized void open(UsbControlBlock usbControlBlock) throws Throwable {
        Camera camera;
        int iNativeConnect;
        String str;
        try {
            try {
                this.mCtrlBlock = usbControlBlock;
                camera = this;
                try {
                    iNativeConnect = camera.nativeConnect(this.mNativePtr, usbControlBlock.getVenderId(), this.mCtrlBlock.getProductId(), this.mCtrlBlock.getFileDescriptor(), this.mCtrlBlock.getBusNum(), this.mCtrlBlock.getDevNum(), getUSBFSName(this.mCtrlBlock));
                } catch (Exception e2) {
                    e = e2;
                    Logger.INSTANCE.w("cannot connect to UVC camera", e);
                    iNativeConnect = -1;
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            camera = this;
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
        if (iNativeConnect == 0) {
            if (camera.mNativePtr != 0 && TextUtils.isEmpty(camera.mSupportedSize)) {
                camera.mSupportedSize = nativeGetSupportedSize(camera.mNativePtr);
            }
            nativeSetPreviewSize(camera.mNativePtr, DEFAULT_PREVIEW_WIDTH, DEFAULT_PREVIEW_HEIGHT, 1, 30, 0, 1.0f);
            return;
        }
        if (iNativeConnect != -99) {
            switch (iNativeConnect) {
                case -52:
                    str = "UVC_ERROR_CALLBACK_EXISTS";
                    break;
                case -51:
                    str = "UVC_ERROR_INVALID_MODE";
                    break;
                case -50:
                    str = "UVC_ERROR_INVALID_DEVICE";
                    break;
                default:
                    switch (iNativeConnect) {
                        case -12:
                            str = "UVC_ERROR_NOT_SUPPORTED";
                            break;
                        case -11:
                            str = "UVC_ERROR_NO_MEM";
                            break;
                        case Action.EXTENSION_WEIGHT /* -10 */:
                            str = "UVC_ERROR_INTERRUPTED";
                            break;
                        case -9:
                            str = "UVC_ERROR_PIPE";
                            break;
                        case -8:
                            str = "UVC_ERROR_OVERFLOW";
                            break;
                        case -7:
                            str = "UVC_ERROR_TIMEOUT";
                            break;
                        case -6:
                            str = "UVC_ERROR_BUSY";
                            break;
                        case -5:
                            str = "UVC_ERROR_NOT_FOUND";
                            break;
                        case e.f38106c /* -4 */:
                            str = "UVC_ERROR_NO_DEVICE";
                            break;
                        case -3:
                            str = "UVC_ERROR_ACCESS";
                            break;
                        case -2:
                            str = "UVC_ERROR_INVALID_PARAM";
                            break;
                        case -1:
                            str = "UVC_ERROR_IO";
                            break;
                        default:
                            str = "UNKNOWN_ERROR";
                            break;
                    }
                    break;
            }
        } else {
            str = "UVC_ERROR_OTHER";
        }
        throw new UnsupportedOperationException("open failed:result=" + iNativeConnect + ", error=" + str);
        throw th;
    }

    public synchronized void resetBrightness() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetBrightness(j2, this.mBrightnessDef);
        }
    }

    public synchronized void resetContrast() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetContrast(j2, this.mContrastDef);
        }
    }

    public synchronized void resetFocus() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetFocus(j2, this.mFocusDef);
        }
    }

    public synchronized void resetGain() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetGain(j2, this.mGainDef);
        }
    }

    public synchronized void resetGamma() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetGamma(j2, this.mGammaDef);
        }
    }

    public synchronized void resetHue() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetHue(j2, this.mSaturationDef);
        }
    }

    public synchronized void resetSaturation() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetSaturation(j2, this.mSaturationDef);
        }
    }

    public synchronized void resetSharpness() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetSharpness(j2, this.mSharpnessDef);
        }
    }

    public synchronized void resetWhiteBlance() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetWhiteBlance(j2, this.mWhiteBlanceDef);
        }
    }

    public synchronized void resetZoom() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetZoom(j2, this.mZoomDef);
        }
    }

    public synchronized void setAutoFocus(boolean z) {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetAutoFocus(j2, z);
        }
    }

    public synchronized void setAutoWhiteBlance(boolean z) {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetAutoWhiteBlance(j2, z);
        }
    }

    public synchronized void setBrightness(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mBrightnessMax - this.mBrightnessMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetBrightness(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mBrightnessMin);
            }
        }
    }

    public synchronized void setContrast(int i2) {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeUpdateContrastLimit(j2);
            float fAbs = Math.abs(this.mContrastMax - this.mContrastMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetContrast(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mContrastMin);
            }
        }
    }

    public synchronized void setFocus(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mFocusMax - this.mFocusMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetFocus(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mFocusMin);
            }
        }
    }

    public void setFrameCallback(FrameCallback frameCallback, int i2) {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetFrameCallback(j2, frameCallback, i2);
        }
    }

    public synchronized void setGain(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mGainMax - this.mGainMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetGain(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mGainMin);
            }
        }
    }

    public synchronized void setGamma(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mGammaMax - this.mGammaMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetGamma(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mGammaMin);
            }
        }
    }

    public synchronized void setHue(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mHueMax - this.mHueMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetHue(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mHueMin);
            }
        }
    }

    public void setPowerlineFrequency(int i2) {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nativeSetPowerlineFrequency(j2, i2);
        }
    }

    public synchronized void setPreviewDisplay(SurfaceHolder surfaceHolder) {
        nativeSetPreviewDisplay(this.mNativePtr, surfaceHolder.getSurface());
    }

    public void setPreviewSize(int i2, int i3, int i4, int i5, int i6, float f2) {
        if (i2 == 0 || i3 == 0) {
            md.n("invalid preview size");
            return;
        }
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            if (nativeSetPreviewSize(j2, i2, i3, i4, i5, i6, f2) != 0) {
                md.n("Failed to set preview size");
                return;
            }
            this.mCurrentFrameFormat = i6;
            this.mCurrentWidth = i2;
            this.mCurrentHeight = i3;
            this.mCurrentBandwidthFactor = f2;
        }
    }

    public synchronized void setPreviewTexture(SurfaceTexture surfaceTexture) {
        nativeSetPreviewDisplay(this.mNativePtr, new Surface(surfaceTexture));
    }

    public synchronized void setSaturation(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mSaturationMax - this.mSaturationMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetSaturation(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mSaturationMin);
            }
        }
    }

    public synchronized void setSharpness(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mSharpnessMax - this.mSharpnessMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetSharpness(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mSharpnessMin);
            }
        }
    }

    public synchronized void setWhiteBlance(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mWhiteBlanceMax - this.mWhiteBlanceMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetWhiteBlance(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mWhiteBlanceMin);
            }
        }
    }

    public synchronized void setZoom(int i2) {
        if (this.mNativePtr != 0) {
            float fAbs = Math.abs(this.mZoomMax - this.mZoomMin);
            if (fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                nativeSetZoom(this.mNativePtr, ((int) ((i2 / 100.0f) * fAbs)) + this.mZoomMin);
            }
        }
    }

    public void startCapture(Surface surface) {
        if (this.mCtrlBlock == null || surface == null) {
            r81.d("startCapture");
        } else {
            nativeSetCaptureDisplay(this.mNativePtr, surface);
        }
    }

    public synchronized void startPreview() {
        if (this.mCtrlBlock != null) {
            nativeStartPreview(this.mNativePtr);
        }
    }

    public void stopCapture() {
        if (this.mCtrlBlock != null) {
            nativeSetCaptureDisplay(this.mNativePtr, null);
        }
    }

    public synchronized void stopPreview() {
        setFrameCallback(null, 0);
        if (this.mCtrlBlock != null) {
            nativeStopPreview(this.mNativePtr);
        }
    }

    public synchronized void updateCameraParams() {
        try {
            long j2 = this.mNativePtr;
            if (j2 != 0) {
                long j3 = this.mControlSupports;
                if (j3 == 0 || this.mProcSupports == 0) {
                    if (j3 == 0) {
                        this.mControlSupports = nativeGetCtrlSupports(j2);
                    }
                    if (this.mProcSupports == 0) {
                        this.mProcSupports = nativeGetProcSupports(this.mNativePtr);
                    }
                    if (this.mControlSupports != 0 && this.mProcSupports != 0) {
                        nativeUpdateBrightnessLimit(this.mNativePtr);
                        nativeUpdateContrastLimit(this.mNativePtr);
                        nativeUpdateSharpnessLimit(this.mNativePtr);
                        nativeUpdateGainLimit(this.mNativePtr);
                        nativeUpdateGammaLimit(this.mNativePtr);
                        nativeUpdateSaturationLimit(this.mNativePtr);
                        nativeUpdateHueLimit(this.mNativePtr);
                        nativeUpdateZoomLimit(this.mNativePtr);
                        nativeUpdateWhiteBlanceLimit(this.mNativePtr);
                        nativeUpdateFocusLimit(this.mNativePtr);
                    }
                }
            } else {
                this.mProcSupports = 0L;
                this.mControlSupports = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void setPreviewDisplay(Surface surface) {
        nativeSetPreviewDisplay(this.mNativePtr, surface);
    }

    public synchronized int getContrast() {
        return getContrast(nativeGetContrast(this.mNativePtr));
    }

    public synchronized int getBrightness() {
        return getBrightness(nativeGetBrightness(this.mNativePtr));
    }

    public synchronized int getFocus() {
        return getFocus(nativeGetFocus(this.mNativePtr));
    }

    public synchronized int getGain() {
        return getGain(nativeGetGain(this.mNativePtr));
    }

    public synchronized int getGamma() {
        return getGamma(nativeGetGamma(this.mNativePtr));
    }

    public synchronized int getHue() {
        return getHue(nativeGetHue(this.mNativePtr));
    }

    public synchronized int getSaturation() {
        return getSaturation(nativeGetSaturation(this.mNativePtr));
    }

    public synchronized int getSharpness() {
        return getSharpness(nativeGetSharpness(this.mNativePtr));
    }

    public synchronized int getWhiteBlance() {
        return getFocus(nativeGetWhiteBlance(this.mNativePtr));
    }

    public synchronized int getZoom() {
        return getZoom(nativeGetZoom(this.mNativePtr));
    }

    public void setPreviewSize(int i2, int i3, int i4) {
        setPreviewSize(i2, i3, 1, 30, i4, this.mCurrentBandwidthFactor);
    }

    public void setPreviewSize(int i2, int i3, int i4, float f2) {
        setPreviewSize(i2, i3, 1, 30, i4, f2);
    }

    public void setPreviewSize(int i2, int i3) {
        setPreviewSize(i2, i3, 1, 30, this.mCurrentFrameFormat, this.mCurrentBandwidthFactor);
    }

    public synchronized String getSupportedSize() {
        String strNativeGetSupportedSize;
        try {
            if (TextUtils.isEmpty(this.mSupportedSize)) {
                strNativeGetSupportedSize = nativeGetSupportedSize(this.mNativePtr);
                this.mSupportedSize = strNativeGetSupportedSize;
            } else {
                strNativeGetSupportedSize = this.mSupportedSize;
            }
        } catch (Throwable th) {
            throw th;
        }
        return strNativeGetSupportedSize;
    }
}
