package com.sightcall.universal.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.util.Size;
import androidx.exifinterface.media.ExifInterface;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.ui.ScreenshareProducerMode;
import com.sightcall.universal.internal.ui.videoplayer.VideoProducerExtensionsKt;
import com.sightcall.universal.internal.view.ProgressivexImageView;
import com.sightcall.universal.model.CallParameters;
import com.sightcall.universal.model.Session;
import com.sightcall.uvc.Device;
import com.sightcall.uvc.DeviceManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.event.call.StatusEvent;
import okio.Buffer;
import okio.Okio;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public class Utils {
    public static final SimpleDateFormat IMAGE_FILE_FORMAT = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
    private static final String TMP_DIR = "universal/tmp/";

    /* JADX INFO: renamed from: com.sightcall.universal.internal.util.Utils$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$EndReason;

        static {
            int[] iArr = new int[Call.EndReason.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$EndReason = iArr;
            try {
                iArr[Call.EndReason.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$EndReason[Call.EndReason.REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$EndReason[Call.EndReason.UNEXPECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static boolean canMainVideoConsumerGoThumbnail(Session session, Call call) {
        if (call == null || !call.isConference()) {
            return false;
        }
        return !videoConsumerToFullscreen(session, call);
    }

    private static File createCameraTmpFile(Context context) {
        File file = new File(context.getFilesDir(), TMP_DIR);
        file.mkdirs();
        File file2 = new File(file, IMAGE_FILE_FORMAT.format(new Date()) + ".jpg");
        fixTmpFilePermission(file2);
        return file2;
    }

    private static void fixTmpFilePermission(File file) {
        file.setWritable(true, false);
    }

    public static Bitmap getResizedBitmap(Bitmap bitmap, Size size) {
        Size sizeThatFit = getSizeThatFit(new Size(bitmap.getWidth(), bitmap.getHeight()), size);
        return (bitmap.getWidth() > sizeThatFit.getWidth() || bitmap.getHeight() > sizeThatFit.getHeight()) ? Bitmap.createScaledBitmap(bitmap, sizeThatFit.getWidth(), sizeThatFit.getHeight(), true) : bitmap;
    }

    public static int getRotationAngleFromExif(Context context, Uri uri) {
        int i2;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                int iE = new ExifInterface(inputStreamOpenInputStream).e(1, "Orientation");
                inputStreamOpenInputStream.close();
                if (iE == 6) {
                    i2 = 90;
                } else if (iE == 3) {
                    i2 = Sink.ORIENTATION_180;
                } else {
                    i2 = iE == 8 ? Sink.ORIENTATION_270 : 0;
                }
                inputStreamOpenInputStream.close();
                return i2;
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static Size getSizeThatFit(Size size, Size size2) {
        int width = size.getWidth();
        int height = size.getHeight();
        float width2 = size2.getWidth() / size2.getHeight();
        float f2 = width;
        float f3 = height;
        float f4 = f2 / f3;
        float fMin = ((f4 <= 1.0f || width2 <= 1.0f) && (f4 > 1.0f || width2 > 1.0f)) ? Float.min(size2.getHeight() / f2, size2.getWidth() / f3) : Float.min(size2.getWidth() / f2, size2.getHeight() / f3);
        return new Size((int) Math.floor(f2 * fMin), (int) Math.floor(f3 * fMin));
    }

    public static boolean isScreenCasting(Session session, Call call) {
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        return screenshareModuleScreenshare.isSending() && (screenshareModuleScreenshare.producer() instanceof ScreenCastOverlay) && session.parameters.screenshareProducerMode == ScreenshareProducerMode.SCREEN;
    }

    private static boolean isScreenshare(Session session, Call call, ScreenshareModule screenshareModule) {
        if (screenshareModule.isReceiving()) {
            return true;
        }
        return screenshareModule.isSending() && !isSendingScreencast(session, call);
    }

    private static boolean isSendingScreencast(Session session, Call call) {
        return call.screenshare().isSending() && session.parameters.screenshareProducerMode == ScreenshareProducerMode.SCREEN;
    }

    public static Bitmap loadBitmapFromFile(Context context, Uri uri, Size size) throws IOException {
        int rotationAngleFromExif = getRotationAngleFromExif(context, uri);
        Matrix matrix = new Matrix();
        matrix.postRotate(rotationAngleFromExif);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
        BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        Size sizeThatFit = getSizeThatFit(new Size(i2, i3), size);
        int iMin = Math.min(i2 / sizeThatFit.getWidth(), i3 / sizeThatFit.getHeight());
        options.inJustDecodeBounds = false;
        options.inSampleSize = iMin;
        options.inPurgeable = true;
        inputStreamOpenInputStream.close();
        InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, options);
        if (bitmapDecodeStream == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, 0, 0, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), matrix, true);
        Bitmap resizedBitmap = getResizedBitmap(bitmapCreateBitmap, size);
        if (resizedBitmap != bitmapDecodeStream) {
            bitmapDecodeStream.recycle();
        }
        if (resizedBitmap != bitmapCreateBitmap) {
            bitmapCreateBitmap.recycle();
        }
        inputStreamOpenInputStream2.close();
        return resizedBitmap;
    }

    public static byte[] readFileAsByteArray(File file) throws Throwable {
        RealBufferedSource realBufferedSource;
        RealBufferedSource realBufferedSource2 = null;
        try {
            realBufferedSource = new RealBufferedSource(Okio.e(file));
            try {
                byte[] bArrV0 = realBufferedSource.V0();
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource);
                return bArrV0;
            } catch (Exception unused) {
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource);
                return null;
            } catch (Throwable th) {
                th = th;
                realBufferedSource2 = realBufferedSource;
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource2);
                throw th;
            }
        } catch (Exception unused2) {
            realBufferedSource = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String readFileAsString(File file) throws Throwable {
        RealBufferedSource realBufferedSource;
        RealBufferedSource realBufferedSource2 = null;
        try {
            realBufferedSource = new RealBufferedSource(Okio.e(file));
            try {
                Buffer buffer = realBufferedSource.f77444c;
                buffer.u0(realBufferedSource.f77443b);
                String strH = buffer.H();
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource);
                return strH;
            } catch (Exception unused) {
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource);
                return null;
            } catch (Throwable th) {
                th = th;
                realBufferedSource2 = realBufferedSource;
                net.rtccloud.sdk.util.Utils.closeSilently(realBufferedSource2);
                throw th;
            }
        } catch (Exception unused2) {
            realBufferedSource = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean requestProgressivexWithOrWithoutVideo(Session session, Call call, ProgressivexImageView progressivexImageView) {
        VideoModule videoModuleVideo = call.video();
        boolean zVideoOutWhilePicture = session.usecase.videoOutWhilePicture(session.config);
        boolean zIsSending = videoModuleVideo.isSending();
        if (zVideoOutWhilePicture || !zIsSending) {
            return true;
        }
        session.parameters.restartVideoAfterPicture = true;
        videoModuleVideo.releaseProducer();
        session.parameters.videoStopPending = true;
        videoModuleVideo.stop();
        return false;
    }

    public static boolean requestScreenshareWithOrWithoutVideo(Session session, Call call) {
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        if (screenshareModuleScreenshare.isReceiving()) {
            return false;
        }
        screenshareModuleScreenshare.releaseProducer();
        VideoModule videoModuleVideo = call.video();
        boolean zVideoOutWhilePicture = session.usecase.videoOutWhilePicture(session.config);
        boolean zIsSending = videoModuleVideo.isSending();
        boolean zIsSending2 = screenshareModuleScreenshare.isSending();
        if (zVideoOutWhilePicture || !zIsSending) {
            if (zIsSending2) {
                return true;
            }
            screenshareModuleScreenshare.start();
            return false;
        }
        if (!zIsSending2) {
            Rtcc.instance().bus().register(new DelayedStopVideoRestartShare(call));
        }
        session.parameters.restartVideoAfterPicture = true;
        videoModuleVideo.releaseProducer();
        session.parameters.videoStopPending = true;
        videoModuleVideo.stop();
        return false;
    }

    public static void requestUsbCameraIfNeeded(Context context, Call call, CallParameters callParameters) {
        Device device;
        Logger logger = Logger.INSTANCE;
        logger.d("USBCamerarequestUsbCameraIfNeeded() called with: context = [" + context + "]", null);
        if (InstantAppWrapper.isInstantApp(context) || call == null || !call.video().isSending()) {
            return;
        }
        if ((callParameters != null && !callParameters.allowUsbCamera) || (device = DeviceManager.instance(context).getDevice()) == null || device.hasPermission()) {
            return;
        }
        logger.d("USBCamerarequestUsbCameraIfNeeded: requestPermission", null);
        device.requestPermission();
    }

    public static Bitmap rotateImage(Bitmap bitmap, float f2) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap rotateImageIfRequired(Bitmap bitmap, Context context, Uri uri) throws IOException {
        int rotationAngleFromExif;
        return (uri.getPath() == null || (rotationAngleFromExif = getRotationAngleFromExif(context, uri)) <= 0) ? bitmap : rotateImage(bitmap, rotationAngleFromExif);
    }

    public static void toastCallReport(StatusEvent statusEvent, Context context) {
        Call call = statusEvent.call();
        Call.EndReason endReason = call.endReason();
        if (endReason == null || call.activeDuration() == 0) {
            com.sightcall.universal.util.Utils.safeToast(context, 1, R.string.universal_call_report_error);
            return;
        }
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Call$EndReason[endReason.ordinal()];
        if (i2 == 1) {
            com.sightcall.universal.util.Utils.safeToast(context, 1, R.string.universal_call_report_locally_ended);
        } else if (i2 == 2) {
            com.sightcall.universal.util.Utils.safeToast(context, 1, R.string.universal_call_report_remotely_ended);
        } else {
            if (i2 != 3) {
                return;
            }
            com.sightcall.universal.util.Utils.safeToast(context, 1, R.string.universal_call_report_ended_unexpected);
        }
    }

    public static boolean videoConsumerToFullscreen(Session session, Call call) {
        VideoModule.CameraSource cameraSource;
        if (call != null && !isScreenshare(session, call, call.screenshare()) && !ProgressivexImageView.isRunning()) {
            VideoModule videoModuleVideo = call.video();
            if ((videoModuleVideo.isReceiving() && !videoModuleVideo.isSending()) || (cameraSource = call.parameters().cameraSource()) == null) {
                return true;
            }
            if ((!videoModuleVideo.isSending() || !cameraSource.isBack()) && !VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoModuleVideo.producer())) {
                return true;
            }
        }
        return false;
    }

    public static boolean videoProducerToFullscreen(Session session, Call call) {
        if (call == null || isScreenshare(session, call, call.screenshare())) {
            return false;
        }
        VideoModule videoModuleVideo = call.video();
        if ((!videoModuleVideo.isSending() || videoModuleVideo.isReceiving()) && call.video().isSending()) {
            VideoModule.CameraSource cameraSource = call.parameters().cameraSource();
            if (cameraSource == null) {
                return false;
            }
            if (!cameraSource.isBack() && !VideoProducerExtensionsKt.isMyVideoProducerPlayerView(call.video().producer())) {
                return false;
            }
        }
        return true;
    }
}
