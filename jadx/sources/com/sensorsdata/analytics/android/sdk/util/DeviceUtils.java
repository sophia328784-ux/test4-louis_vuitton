package com.sensorsdata.analytics.android.sdk.util;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceUtils {
    public static String exec(String str) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    String string = sb.toString();
                    try {
                        bufferedReader.close();
                    } catch (Throwable th) {
                        SALog.i("SA.Exec", th.getMessage());
                    }
                    try {
                        inputStreamReader.close();
                    } catch (IOException e2) {
                        SALog.i("SA.Exec", e2.getMessage());
                    }
                    return string;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        SALog.i("SA.Exec", th.getMessage());
                        return null;
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                SALog.i("SA.Exec", th3.getMessage());
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e3) {
                                SALog.i("SA.Exec", e3.getMessage());
                            }
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
            inputStreamReader = null;
        }
    }

    public static String getBrand() {
        try {
            String str = Build.BRAND;
            return str != null ? str.trim().toUpperCase() : "UNKNOWN";
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "UNKNOWN";
        }
    }

    public static int[] getDeviceSize(Context context) {
        int[] iArr = new int[2];
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            int rotation = defaultDisplay.getRotation();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int i2 = point.x;
            int i3 = point.y;
            iArr[0] = getNaturalWidth(rotation, i2, i3);
            iArr[1] = getNaturalHeight(rotation, i2, i3);
            return iArr;
        } catch (Exception unused) {
            if (context.getResources() != null) {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                iArr[0] = displayMetrics.widthPixels;
                iArr[1] = displayMetrics.heightPixels;
            }
            return iArr;
        }
    }

    public static String getHarmonyOSVersion() {
        if (!isHarmonyOs()) {
            return null;
        }
        String prop = getProp("hw_sc.build.platform.version", "");
        return TextUtils.isEmpty(prop) ? exec(SensorsDataUtils.COMMAND_HARMONYOS_VERSION) : prop;
    }

    public static String getManufacturer() {
        try {
            String str = Build.MANUFACTURER;
            return str != null ? str.trim().toUpperCase() : "UNKNOWN";
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "UNKNOWN";
        }
    }

    public static String getModel() {
        String str = Build.MODEL;
        return TextUtils.isEmpty(str) ? "UNKNOWN" : str.trim();
    }

    private static int getNaturalHeight(int i2, int i3, int i4) {
        return (i2 == 0 || i2 == 2) ? i4 : i3;
    }

    private static int getNaturalWidth(int i2, int i3, int i4) {
        return (i2 == 0 || i2 == 2) ? i3 : i4;
    }

    public static String getOS() {
        String str = Build.VERSION.RELEASE;
        return str == null ? "UNKNOWN" : str;
    }

    private static String getProp(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str3 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Throwable th) {
            SALog.i("SA.SystemProperties", th.getMessage());
            return str2;
        }
    }

    private static boolean isHarmonyOs() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            Object objInvoke = cls.getMethod("getOsBrand", null).invoke(cls, null);
            if (objInvoke == null) {
                return false;
            }
            return "harmony".equalsIgnoreCase(objInvoke.toString());
        } catch (Throwable th) {
            SALog.i("SA.HasHarmonyOS", th.getMessage());
            return false;
        }
    }
}
