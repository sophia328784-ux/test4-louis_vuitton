package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraAccessException;
import com.networkbench.agent.impl.logtrack.SendLogRunnable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class CameraAccessExceptionCompat extends Exception {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f1694c = Collections.unmodifiableSet(new HashSet(Arrays.asList(4, 5, 1, 2, 3)));
    public static final Set d = Collections.unmodifiableSet(new HashSet(Arrays.asList(Integer.valueOf(SendLogRunnable.SENDING), Integer.valueOf(SendLogRunnable.FINISH))));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1695b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AccessError {
    }

    public CameraAccessExceptionCompat(int i2, Throwable th) {
        super(b(i2), th);
        this.f1695b = i2;
        if (f1694c.contains(Integer.valueOf(i2))) {
            new CameraAccessException(i2, null, th);
        }
    }

    public static String a(int i2, String str) {
        String str2;
        if (i2 == 1) {
            str2 = "CAMERA_DISABLED";
        } else if (i2 == 2) {
            str2 = "CAMERA_DISCONNECTED";
        } else if (i2 == 3) {
            str2 = "CAMERA_ERROR";
        } else if (i2 == 4) {
            str2 = "CAMERA_IN_USE";
        } else if (i2 == 5) {
            str2 = "MAX_CAMERAS_IN_USE";
        } else if (i2 == 1000) {
            str2 = "CAMERA_DEPRECATED_HAL";
        } else if (i2 != 10001) {
            str2 = i2 != 10002 ? "<UNKNOWN ERROR>" : "CAMERA_CHARACTERISTICS_CREATION_ERROR";
        } else {
            str2 = "CAMERA_UNAVAILABLE_DO_NOT_DISTURB";
        }
        return String.format("%s (%d): %s", str2, Integer.valueOf(i2), str);
    }

    public static String b(int i2) {
        if (i2 == 1) {
            return "The camera is disabled due to a device policy, and cannot be opened.";
        }
        if (i2 == 2) {
            return "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device.";
        }
        if (i2 == 3) {
            return "The camera device is currently in the error state; no further calls to it will succeed.";
        }
        if (i2 == 4) {
            return "The camera device is in use already";
        }
        if (i2 == 5) {
            return "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed.";
        }
        if (i2 == 10001) {
            return "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled.";
        }
        if (i2 != 10002) {
            return null;
        }
        return "Failed to create CameraCharacteristics.";
    }

    public CameraAccessExceptionCompat(int i2, String str) {
        super(a(i2, str));
        this.f1695b = i2;
        if (f1694c.contains(Integer.valueOf(i2))) {
            new CameraAccessException(i2, str);
        }
    }

    public CameraAccessExceptionCompat(int i2, String str, Throwable th) {
        super(a(i2, str), th);
        this.f1695b = i2;
        if (f1694c.contains(Integer.valueOf(i2))) {
            new CameraAccessException(i2, str, th);
        }
    }

    public CameraAccessExceptionCompat(int i2) {
        super(b(i2));
        this.f1695b = i2;
        if (f1694c.contains(Integer.valueOf(i2))) {
            new CameraAccessException(i2);
        }
    }

    public CameraAccessExceptionCompat(CameraAccessException cameraAccessException) {
        super(cameraAccessException.getMessage(), cameraAccessException.getCause());
        this.f1695b = cameraAccessException.getReason();
    }
}
