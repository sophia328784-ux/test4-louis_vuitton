package net.rtccloud.sdk.util;

import android.content.Context;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.util.Size;
import android.view.Display;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraUtils {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.CAMERA);
    private static final String[] FOCUS_MODE_ON = {"continuous-picture", "continuous-video", "auto", "fixed"};
    private static final String[] FOCUS_MODE_OFF = {"auto", "fixed"};

    private CameraUtils() {
    }

    public static boolean checkAutoFocus(Context context) {
        return Utils.hasSystemFeature(context, "android.hardware.camera.autofocus");
    }

    public static boolean checkCamera(Context context) {
        return Utils.hasSystemFeature(context, "android.hardware.camera");
    }

    public static boolean checkFlash(Context context) {
        return Utils.hasSystemFeature(context, "android.hardware.camera.flash");
    }

    public static boolean checkFront(Context context) {
        return Utils.hasSystemFeature(context, "android.hardware.camera.front");
    }

    public static byte[] createYuvBuffer(int i2, int i3) {
        return createYuvByteBuffer(i2, i3).array();
    }

    public static ByteBuffer createYuvByteBuffer(int i2, int i3) {
        PixelFormat pixelFormat = new PixelFormat();
        PixelFormat.getPixelFormatInfo(17, pixelFormat);
        return ByteBuffer.allocate(i2 * i3 * pixelFormat.bitsPerPixel);
    }

    private static int displayRotationToDegree(int i2) {
        if (i2 == 1) {
            return 90;
        }
        if (i2 == 2) {
            return Sink.ORIENTATION_180;
        }
        if (i2 != 3) {
            return 0;
        }
        return Sink.ORIENTATION_270;
    }

    public static String dump(Camera camera) {
        Camera.Parameters parameters = getParameters(camera);
        if (parameters == null) {
            return null;
        }
        return parameters.flatten().replace(";", "\n");
    }

    private static VideoModule.CameraSource extractCameraSource(Call.Parameters parameters) {
        VideoModule.CameraSource cameraSource = parameters.cameraSource();
        if (cameraSource == null) {
            cameraSource = VideoModule.CameraSource.getFirstAvailable();
            if (cameraSource == null) {
                return null;
            }
            parameters.cameraSource(cameraSource);
        }
        return cameraSource;
    }

    private static Camera.Size findBestPictureSize(Camera.Size size, Size size2, List<Camera.Size> list) {
        float f2 = size.width / size.height;
        int height = size2.getHeight() * size2.getWidth();
        if (log.d()) {
            StringBuilder sb = new StringBuilder();
            for (Camera.Size size3 : list) {
                sb.append(size3.width);
                sb.append('x');
                sb.append(size3.height);
                sb.append(AnnotationParser.AnnotationInstruction);
                sb.append(String.format(Locale.US, "%.2f", Float.valueOf(size3.width / size3.height)));
                sb.append(' ');
            }
            log.d("findBestPictureSize(%d:%d@%f, [%s])", Integer.valueOf(size2.getWidth()), Integer.valueOf(size2.getHeight()), Float.valueOf(f2), sb.toString());
        }
        HashSet<Camera.Size> hashSet = new HashSet();
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Camera.Size size4 = list.get(i3);
            if (f2 == size4.width / size4.height) {
                hashSet.add(size4);
            }
        }
        if (log.d()) {
            StringBuilder sb2 = new StringBuilder();
            for (Camera.Size size5 : hashSet) {
                sb2.append(size5.width);
                sb2.append('x');
                sb2.append(size5.height);
                sb2.append(' ');
            }
            log.d("findBestPictureSize() -> candidates: [%s]", sb2.toString());
        }
        int i4 = 0;
        Camera.Size size6 = null;
        Camera.Size size7 = null;
        for (Camera.Size size8 : hashSet) {
            int i5 = size8.width * size8.height;
            if (i5 >= height && (size6 == null || i5 <= i2)) {
                size6 = size8;
                i2 = i5;
            }
            if (size7 == null || i5 > i4) {
                size7 = size8;
                i4 = i5;
            }
        }
        if (size6 == null) {
            size6 = size7;
        }
        OldLogger oldLogger = log;
        StringBuilder sb3 = new StringBuilder("findBestPictureSize() -> ");
        sb3.append(size6 != null ? size6.width + "x" + size6.height : null);
        oldLogger.d(sb3.toString());
        return size6;
    }

    private static int[] findBestPreviewFps(int i2, List<int[]> list) {
        int i3 = i2 * 1000;
        if (log.d()) {
            StringBuilder sb = new StringBuilder();
            for (int[] iArr : list) {
                sb.append(iArr[0]);
                sb.append('-');
                sb.append(iArr[1]);
                sb.append(' ');
            }
            log.d("findBestPreviewFps(%d, %s)", Integer.valueOf(i3), sb.toString());
        }
        HashSet<int[]> hashSet = new HashSet();
        for (int i4 = 0; i4 < list.size(); i4++) {
            int[] iArr2 = list.get(i4);
            int i5 = iArr2[0];
            if (i5 == i3 && iArr2[1] == i3) {
                return iArr2;
            }
            if (i5 == i3 && iArr2[1] > i3) {
                hashSet.add(iArr2);
            }
        }
        if (log.d()) {
            StringBuilder sb2 = new StringBuilder();
            for (int[] iArr3 : hashSet) {
                sb2.append(iArr3[0]);
                sb2.append('x');
                sb2.append(iArr3[1]);
                sb2.append(' ');
            }
            log.d("findBestPreviewFps() -> candidates: [%s]", sb2.toString());
        }
        int i6 = Integer.MAX_VALUE;
        int[] iArr4 = null;
        for (int[] iArr5 : hashSet) {
            int i7 = iArr5[1];
            if (i7 < i6) {
                iArr4 = iArr5;
                i6 = i7;
            }
        }
        OldLogger oldLogger = log;
        StringBuilder sb3 = new StringBuilder("findBestPreviewFps() -> ");
        sb3.append(iArr4 != null ? iArr4[0] + ":" + iArr4[1] : null);
        oldLogger.d(sb3.toString());
        return iArr4;
    }

    private static Camera.Size findBestPreviewSize(int i2, int i3, List<Camera.Size> list) {
        int i4;
        if (log.d()) {
            StringBuilder sb = new StringBuilder();
            for (Camera.Size size : list) {
                sb.append(size.width);
                sb.append('x');
                sb.append(size.height);
                sb.append(' ');
            }
            log.d("findBestPreviewSize(%d, %d, [%s])", Integer.valueOf(i2), Integer.valueOf(i3), sb.toString());
        }
        HashSet<Camera.Size> hashSet = new HashSet();
        for (int i5 = 0; i5 < list.size(); i5++) {
            Camera.Size size2 = list.get(i5);
            int i6 = size2.width;
            if ((i2 == i6 && i3 == size2.height) || (i2 == (i4 = size2.height) && i3 == i6)) {
                return size2;
            }
            if (i6 == i2 || i4 == i3) {
                hashSet.add(size2);
            }
        }
        if (log.d()) {
            StringBuilder sb2 = new StringBuilder();
            for (Camera.Size size3 : hashSet) {
                sb2.append(size3.width);
                sb2.append('x');
                sb2.append(size3.height);
                sb2.append(' ');
            }
            log.d("findBestPreviewSize() -> candidates: [%s]", sb2.toString());
        }
        int i7 = i2 * i3;
        int i8 = Integer.MAX_VALUE;
        Camera.Size size4 = null;
        for (Camera.Size size5 : hashSet) {
            int iAbs = Math.abs(i7 - (size5.width * size5.height));
            if (iAbs < i8) {
                size4 = size5;
                i8 = iAbs;
            }
        }
        OldLogger oldLogger = log;
        StringBuilder sb3 = new StringBuilder("findBestPreviewSize() -> ");
        sb3.append(size4 != null ? size4.width + "x" + size4.height : null);
        oldLogger.d(sb3.toString());
        return size4;
    }

    private static int getDisplayPreviewCorrection(VideoModule.CameraSource cameraSource, Display display) {
        int iDisplayRotationToDegree = displayRotationToDegree(display.getRotation());
        int i2 = cameraSource.facing;
        int i3 = cameraSource.orientation;
        return i2 == 1 ? (360 - ((i3 + iDisplayRotationToDegree) % 360)) % 360 : ((i3 - iDisplayRotationToDegree) + 360) % 360;
    }

    public static String getEffect(Camera camera) {
        if (camera == null) {
            return null;
        }
        return getEffect(getParameters(camera));
    }

    public static int getInternalPreviewCorrection(VideoModule.CameraSource cameraSource, Display display) {
        if (cameraSource == null || display == null) {
            return 0;
        }
        int iDisplayRotationToDegree = displayRotationToDegree(display.getRotation());
        int i2 = cameraSource.facing;
        int i3 = cameraSource.orientation;
        return i2 == 1 ? (i3 + iDisplayRotationToDegree) % 360 : ((i3 - iDisplayRotationToDegree) + 360) % 360;
    }

    private static Camera.Parameters getParameters(Camera camera) {
        if (camera == null) {
            return null;
        }
        try {
            return camera.getParameters();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static float getZoom(Camera.Parameters parameters) {
        if (parameters == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int maxZoom = parameters.getMaxZoom();
        return maxZoom == 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : parameters.getZoom() / maxZoom;
    }

    public static Camera initCamera(Call.Parameters parameters, Size size, Display display) throws RuntimeException {
        VideoModule.CameraSource cameraSourceExtractCameraSource = extractCameraSource(parameters);
        if (cameraSourceExtractCameraSource == null) {
            return null;
        }
        Camera cameraOpen = Camera.open(cameraSourceExtractCameraSource.id);
        setPreviewOrientation(cameraOpen, cameraSourceExtractCameraSource, display);
        Camera.Parameters parameters2 = getParameters(cameraOpen);
        setPreviewProfile(parameters2, parameters.videoProfile());
        setPreviewFps(parameters2, parameters.videoFramerate());
        setPictureProfile(parameters2, size);
        setAutoFocusEnabled(parameters2, parameters.cameraAutofocus());
        setFlashEnabled(parameters2, parameters.cameraFlash());
        setStabilizationEnabled(parameters2, parameters.cameraStabilization());
        setEffect(parameters2, parameters.cameraEffect());
        setZoom(parameters2, parameters.cameraZoom());
        try {
            parameters2.getPreviewSize();
            parameters2.getPictureSize();
            cameraOpen.setParameters(parameters2);
        } catch (RuntimeException unused) {
        }
        return cameraOpen;
    }

    private static boolean isAutoFocusEnabled(Camera.Parameters parameters) {
        return parameters != null && "continuous-video".equals(parameters.getFocusMode());
    }

    private static boolean isAutofocusAvailable(Camera.Parameters parameters) {
        if (parameters == null) {
            return false;
        }
        return nonNullList(parameters.getSupportedFocusModes()).contains("continuous-video");
    }

    private static boolean isEffectAvailable(Camera.Parameters parameters, String str) {
        if (parameters == null) {
            return false;
        }
        return nonNullList(parameters.getSupportedColorEffects()).contains(str);
    }

    private static boolean isFlashAvailable(Camera.Parameters parameters) {
        if (parameters == null) {
            return false;
        }
        return nonNullList(parameters.getSupportedFlashModes()).contains("torch");
    }

    private static boolean isFlashEnabled(Camera.Parameters parameters) {
        return parameters != null && "torch".equals(parameters.getFlashMode());
    }

    private static boolean isFocusModeAvailable(Camera.Parameters parameters, String str) {
        if (parameters == null) {
            return false;
        }
        return nonNullList(parameters.getSupportedFocusModes()).contains(str);
    }

    public static boolean isStabilizationAvailable(Camera camera) {
        return camera != null && isStabilizationAvailable(getParameters(camera));
    }

    private static boolean isStabilizationEnabled(Camera.Parameters parameters) {
        return parameters != null && isStabilizationAvailable(parameters) && parameters.getVideoStabilization();
    }

    public static boolean isZoomAvailable(Camera camera) {
        return camera != null && isZoomAvailable(getParameters(camera));
    }

    private static List<String> nonNullList(List<String> list) {
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public static void setAutoFocusEnabled(Camera camera, boolean z) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setAutoFocusEnabled(parameters, z);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void setEffect(Camera camera, String str) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setEffect(parameters, str);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void setFlashEnabled(Camera camera, boolean z) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setFlashEnabled(parameters, z);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void setFocusMode(Camera.Parameters parameters, String[] strArr) {
        if (parameters == null) {
            return;
        }
        List<String> listNonNullList = nonNullList(parameters.getSupportedFocusModes());
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("supported focus modes: " + Arrays.toString(listNonNullList.toArray()) + " " + parameters.getFocusMode());
            StringBuilder sb = new StringBuilder("setFocusMode() -> ");
            sb.append(Arrays.toString(strArr));
            oldLogger.d(sb.toString());
        }
        for (String str : strArr) {
            if (listNonNullList.contains(str)) {
                parameters.setFocusMode(str);
                log.d("setFocusMode() <- " + str);
                return;
            }
        }
        log.d("setFocusMode() <- failed");
    }

    private static void setPictureProfile(Camera.Parameters parameters, Size size) {
        if (parameters == null) {
            return;
        }
        if (size == null) {
            size = new Size(parameters.getPreviewSize().width, parameters.getPreviewSize().height);
        }
        OldLogger oldLogger = log;
        oldLogger.d("setPictureProfile([%d,%d])", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight()));
        Camera.Size sizeFindBestPictureSize = findBestPictureSize(parameters.getPreviewSize(), size, parameters.getSupportedPictureSizes());
        if (sizeFindBestPictureSize != null) {
            parameters.setPictureSize(sizeFindBestPictureSize.width, sizeFindBestPictureSize.height);
        } else {
            VideoModule.Profile profile = Call.Parameters.DEFAULT_VIDEO_PROFILE;
            parameters.setPictureSize(profile.high, profile.low);
        }
        parameters.setPictureFormat(256);
        parameters.set("jpeg-quality", 100);
        Camera.Size pictureSize = parameters.getPictureSize();
        oldLogger.d("setPictureProfile() -> %dx%d %f", Integer.valueOf(pictureSize.width), Integer.valueOf(pictureSize.height), Float.valueOf(pictureSize.width / pictureSize.height));
    }

    private static void setPreviewFps(Camera.Parameters parameters, int i2) {
        OldLogger oldLogger = log;
        oldLogger.d("setPreviewFps(%d)", Integer.valueOf(i2));
        if (parameters == null) {
            return;
        }
        int[] iArrFindBestPreviewFps = findBestPreviewFps(i2, parameters.getSupportedPreviewFpsRange());
        if (iArrFindBestPreviewFps != null) {
            parameters.setPreviewFpsRange(iArrFindBestPreviewFps[0], iArrFindBestPreviewFps[1]);
        }
        int[] iArr = new int[2];
        parameters.getPreviewFpsRange(iArr);
        oldLogger.d("setPreviewFps() -> %d:%d", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
    }

    private static void setPreviewOrientation(Camera camera, VideoModule.CameraSource cameraSource, Display display) {
        if (camera == null) {
            return;
        }
        camera.setDisplayOrientation(getDisplayPreviewCorrection(cameraSource, display));
    }

    private static void setPreviewProfile(Camera.Parameters parameters, VideoModule.Profile profile) {
        OldLogger oldLogger = log;
        oldLogger.d("setPreviewProfile(%s: [%d,%d])", profile.name(), Integer.valueOf(profile.high), Integer.valueOf(profile.low));
        if (parameters == null) {
            return;
        }
        Camera.Size sizeFindBestPreviewSize = findBestPreviewSize(profile.high, profile.low, parameters.getSupportedPreviewSizes());
        if (sizeFindBestPreviewSize != null) {
            parameters.setPreviewSize(sizeFindBestPreviewSize.width, sizeFindBestPreviewSize.height);
        } else {
            VideoModule.Profile profile2 = Call.Parameters.DEFAULT_VIDEO_PROFILE;
            parameters.setPreviewSize(profile2.high, profile2.low);
        }
        Camera.Size previewSize = parameters.getPreviewSize();
        oldLogger.d("setPreviewProfile() -> %dx%d", Integer.valueOf(previewSize.width), Integer.valueOf(previewSize.height));
    }

    public static void setStabilizationEnabled(Camera camera, boolean z) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setStabilizationEnabled(parameters, z);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void setZoom(Camera camera, float f2) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setZoom(parameters, f2);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static String getEffect(Camera.Parameters parameters) {
        if (parameters != null) {
            return parameters.getColorEffect();
        }
        return null;
    }

    private static boolean isStabilizationAvailable(Camera.Parameters parameters) {
        return parameters != null && parameters.isVideoStabilizationSupported();
    }

    private static boolean isZoomAvailable(Camera.Parameters parameters) {
        return parameters != null && parameters.isZoomSupported();
    }

    public static boolean isEffectAvailable(Camera camera, String str) {
        return camera != null && isEffectAvailable(getParameters(camera), str);
    }

    public static boolean isFocusModeAvailable(Camera camera, String str) {
        return camera != null && isFocusModeAvailable(getParameters(camera), str);
    }

    public static boolean isAutoFocusEnabled(Camera camera) {
        return camera != null && isAutoFocusEnabled(getParameters(camera));
    }

    public static boolean isFlashEnabled(Camera camera) {
        return camera != null && isFlashEnabled(getParameters(camera));
    }

    public static boolean isStabilizationEnabled(Camera camera) {
        return camera != null && isStabilizationEnabled(getParameters(camera));
    }

    public static float getZoom(Camera camera) {
        return camera == null ? Call.Parameters.DEFAULT_CAMERA_ZOOM : getZoom(getParameters(camera));
    }

    public static boolean isAutofocusAvailable(Camera camera) {
        return camera != null && isAutofocusAvailable(getParameters(camera));
    }

    public static boolean isFlashAvailable(Camera camera) {
        return camera != null && isFlashAvailable(getParameters(camera));
    }

    private static void setAutoFocusEnabled(Camera.Parameters parameters, boolean z) {
        setFocusMode(parameters, z ? FOCUS_MODE_ON : FOCUS_MODE_OFF);
    }

    private static void setEffect(Camera.Parameters parameters, String str) {
        if (isEffectAvailable(parameters, str)) {
            parameters.setColorEffect(str);
        }
    }

    private static void setFlashEnabled(Camera.Parameters parameters, boolean z) {
        if (isFlashAvailable(parameters)) {
            parameters.setFlashMode(z ? "torch" : "off");
        }
    }

    private static void setStabilizationEnabled(Camera.Parameters parameters, boolean z) {
        if (parameters == null || !parameters.isVideoStabilizationSupported()) {
            return;
        }
        parameters.setVideoStabilization(z);
    }

    private static void setZoom(Camera.Parameters parameters, float f2) {
        if (isZoomAvailable(parameters)) {
            parameters.setZoom((int) (parameters.getMaxZoom() * f2));
        }
    }

    public static void setPreviewFps(Camera camera, int i2) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setPreviewFps(parameters, i2);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void setFocusMode(Camera camera, String str) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = getParameters(camera);
        setFocusMode(parameters, str);
        try {
            camera.setParameters(parameters);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void setFocusMode(Camera.Parameters parameters, String str) {
        if (isFocusModeAvailable(parameters, str)) {
            parameters.setFocusMode(str);
            log.d("setFocusMode() -> " + str);
            return;
        }
        log.d("setFocusMode() -> " + str + " not available");
    }
}
