package net.rtccloud.sdk.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.RealWearUtilsKt;
import defpackage.d21;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import java.io.Closeable;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.SecureRandom;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes3.dex */
public final class Utils {
    private static final int SUFFIX_LENGTH = 16;
    private static final char[] SUFFIX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'z', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'q', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'w', 'x', 'c', 'v', 'b', 'n', 'A', Matrix.MATRIX_TYPE_ZERO, 'E', 'R', TextParser.TextInstruction, 'Y', Matrix.MATRIX_TYPE_RANDOM_UT, 'I', 'O', PositionParser.PositionInstruction, 'Q', ScaleParser.ScaleInstruction, DeleteParser.DeleteInstruction, 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'W', 'X', ColorParser.ColorInstruction, 'V', 'B', ResourceParser.ResourceInstruction};
    private static final Pattern SUFFIX_PATTERN = Pattern.compile("[a-zA-Z0-9]{16}");

    private Utils() {
    }

    public static String appName(Context context) {
        String packageName = context.getPackageName();
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationInfo(packageName, 0).loadLabel(packageManager).toString();
        } catch (Exception e2) {
            Logger.INSTANCE.w("PackageManagerFailed to get application label", e2);
            return "";
        }
    }

    public static String appVersion(Context context) {
        return ContextExtensionsKt.appVersionName(context) + "-" + appVersionCode(context);
    }

    public static int appVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e2) {
            Logger.INSTANCE.w("PackageManagerFailed to get version code.", e2);
            return 0;
        }
    }

    public static String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char cCharAt = str.charAt(0);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        return Character.toUpperCase(cCharAt) + str.substring(1);
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(d21.j(str, " must not be null"));
    }

    public static float clamp(float f2) {
        return Math.min(1.0f, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2));
    }

    public static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String deviceName(Context context) {
        String str = Build.MANUFACTURER;
        String strTrim = (Build.MODEL + " " + RealWearUtilsKt.getDeviceSerialNumber(context)).trim();
        if (strTrim.startsWith(str)) {
            return capitalize(strTrim);
        }
        return capitalize(str) + " " + strTrim;
    }

    public static boolean hasSystemFeature(Context context, String str) {
        return context.getPackageManager().hasSystemFeature(str);
    }

    public static boolean isDebuggable(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean isVarargsNullOrEmpty(String... strArr) {
        return strArr == null || strArr.length == 0 || (strArr.length == 1 && strArr[0] == null);
    }

    public static String os() {
        return Build.VERSION.RELEASE;
    }

    public static String packageName(Context context) {
        return context.getPackageName();
    }

    public static String printStackTrace(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb.append(stackTraceElement.getClassName());
            sb.append(JwtParser.SEPARATOR_CHAR);
            sb.append(stackTraceElement.getMethodName());
            sb.append("() ");
        }
        return sb.toString();
    }

    public static String safeSuffix(String str) {
        if (!TextUtils.isEmpty(str) && SUFFIX_PATTERN.matcher(str).matches()) {
            return str;
        }
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(16);
        for (int i2 = 0; i2 < 16; i2++) {
            char[] cArr = SUFFIX_CHARS;
            sb.append(cArr[secureRandom.nextInt(cArr.length)]);
        }
        return sb.toString();
    }

    public static String version(Context context) {
        return ContextExtensionsKt.appVersionName(context) + " - MUCL " + Integer.toHexString(24225376);
    }

    public static String printStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
