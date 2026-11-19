package com.sightcall.universal.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.os.AsyncTask;
import android.view.WindowManager;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.util.CameraUtils;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public final class Snapshots {
    private static final String DIR = "universal/snapshots/";
    private static final OldLogger log = OldLogger.get("SNAPSHOTS");

    private Snapshots() {
    }

    public static void cleanup(final Context context) {
        AsyncTask.execute(new Runnable() { // from class: com.sightcall.universal.internal.util.Snapshots.1
            @Override // java.lang.Runnable
            public void run() {
                Snapshots.deleteRecursive(Snapshots.dir(context));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteRecursive(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                deleteRecursive(file2);
            }
        }
        file.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File dir(Context context) {
        File file = new File(context.getCacheDir(), DIR);
        file.mkdirs();
        return file;
    }

    private static String exifOrientationToString(int i2) {
        switch (i2) {
            case 0:
                return "ORIENTATION_UNDEFINED";
            case 1:
                return "ORIENTATION_NORMAL";
            case 2:
                return "ORIENTATION_FLIP_HORIZONTAL left right reversed mirror";
            case 3:
                return "ORIENTATION_ROTATE_180";
            case 4:
                return "ORIENTATION_FLIP_VERTICAL upside down mirror";
            case 5:
                return "ORIENTATION_TRANSPOSE flipped about top-left <--> bottom-right axis";
            case 6:
                return "ORIENTATION_ROTATE_90 rotate 90 cw to right it";
            case 7:
                return "ORIENTATION_TRANSVERSE flipped about top-right <--> bottom-left axis";
            case 8:
                return "ORIENTATION_ROTATE_270 rotate 270 to right it";
            default:
                return "UNKNOWN";
        }
    }

    private static File file(Context context) {
        return new File(dir(context), UUID.randomUUID().toString() + ".jpg");
    }

    public static File save(Context context, ByteBuffer byteBuffer, Point point) throws IOException {
        File file = file(context);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byteBuffer.rewind();
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        new YuvImage(bArr, 17, point.x, point.y, null).compressToJpeg(new Rect(0, 0, point.x, point.y), 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file;
    }

    public static void setExifOrientation(Context context, File file, VideoModule.CameraSource cameraSource) throws IOException {
        ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
        int internalPreviewCorrection = CameraUtils.getInternalPreviewCorrection(cameraSource, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
        OldLogger oldLogger = log;
        oldLogger.d("Snapshot correction: " + internalPreviewCorrection);
        int i2 = 1;
        if (internalPreviewCorrection != 0) {
            if (internalPreviewCorrection == 90) {
                i2 = 6;
            } else if (internalPreviewCorrection == 180) {
                i2 = 3;
            } else if (internalPreviewCorrection == 270) {
                i2 = 8;
            }
        }
        int iE = exifInterface.e(-1, "Orientation");
        if (iE == 0) {
            oldLogger.w("Snapshot exif orientation ignored, manual rotation required !");
        }
        oldLogger.d("Snapshot exif orientation: " + exifOrientationToString(iE) + " -> " + exifOrientationToString(i2));
        exifInterface.I("Orientation", String.valueOf(i2));
        exifInterface.E();
        oldLogger.d("Snapshot exif orientation: " + exifOrientationToString(new ExifInterface(file.getAbsolutePath()).e(-1, "Orientation")));
    }

    public static File save(Context context, byte[] bArr) throws IOException {
        File file = file(context);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(bArr);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file;
    }
}
