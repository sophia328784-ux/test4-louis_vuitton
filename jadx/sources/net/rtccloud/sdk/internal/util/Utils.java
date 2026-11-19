package net.rtccloud.sdk.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.pratik.logs.Logger;
import defpackage.fc;
import defpackage.n00;
import java.io.File;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.FlipTable;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public final class Utils {

    public enum NetworkType {
        UNKNOWN(""),
        MOBILE_2G("2G"),
        MOBILE_3G("3G"),
        MOBILE_4G("4G"),
        MOBILE_5G("5G"),
        WIFI(MenuBarConstants.MEDIA_TYPE_WIFI);

        public final String value;

        NetworkType(String str) {
            this.value = str;
        }
    }

    private Utils() {
    }

    public static String[] consolidateUidInput(String[] strArr, OldLogger oldLogger) {
        if (strArr == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            hashSet.add(str);
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public static void debugProxy() {
        List<Proxy> listSelect = ProxySelector.getDefault().select(URI.create("https://www.google.com"));
        StringBuilder sb = new StringBuilder();
        for (Proxy proxy : listSelect) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress == null) {
                sb.append("Direct connection\n");
            } else {
                sb.append(proxy.toString());
                if (socketAddressAddress instanceof InetSocketAddress) {
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    sb.append(' ');
                    sb.append(inetSocketAddress.getHostName());
                    sb.append(':');
                    sb.append(inetSocketAddress.getPort());
                    if (inetSocketAddress.isUnresolved()) {
                        sb.append(" [unresolved]");
                    } else {
                        InetAddress address = inetSocketAddress.getAddress();
                        sb.append(" [");
                        sb.append(address.getHostAddress());
                        sb.append(']');
                    }
                }
                sb.append('\n');
            }
        }
        Logger.INSTANCE.d("ProxyDebug".concat(sb.toString()), null);
    }

    public static void detectMissingNativeLibsFromAbi(Context context) {
        try {
            ZipFile zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
            HashSet hashSet = new HashSet();
            HashMap map = new HashMap();
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (zipEntryNextElement.getName().startsWith("lib/")) {
                    File file = new File(zipEntryNextElement.getName());
                    String name = file.getParentFile().getName();
                    if (!map.containsKey(name)) {
                        map.put(name, new HashSet());
                    }
                    String name2 = file.getName();
                    ((Set) map.get(name)).add(name2);
                    hashSet.add(name2);
                }
            }
            if (new HashSet(map.values()).size() > 1) {
                ArrayList arrayList = new ArrayList(map.keySet());
                Collections.sort(arrayList);
                String[][] strArr = new String[arrayList.size()][];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    String str = (String) arrayList.get(i2);
                    ArrayList arrayList2 = new ArrayList((Collection) map.get(str));
                    Collections.sort(arrayList2);
                    ArrayList arrayList3 = new ArrayList(hashSet);
                    arrayList3.removeAll(arrayList2);
                    Collections.sort(arrayList3);
                    strArr[i2] = new String[]{str, arrayList2.toString(), arrayList3.toString()};
                }
                OldLogger.get(OldLogger.Internal.ENGINE).w("Some libraries are missing from supported ABIs!\n" + FlipTable.of(new String[]{m.p, "Libs packaged in apk", "Libs missing"}, strArr));
            }
        } catch (IOException unused) {
        }
    }

    public static int findDeviceType(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        float f2 = displayMetrics.density;
        float fMin = Math.min(i2 / f2, i3 / f2);
        return (fMin < 720.0f && fMin < 600.0f) ? 6 : 5;
    }

    public static String getLocalIp(OldLogger oldLogger) {
        Inet4Address inet4Address;
        Inet4Address inet4Address2 = null;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inet4Address = null;
            while (networkInterfaces.hasMoreElements()) {
                try {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    String name = networkInterfaceNextElement.getName();
                    if (!TextUtils.isEmpty(name)) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (inetAddressNextElement instanceof Inet4Address) {
                                if (name.startsWith("wlan")) {
                                    inet4Address2 = (Inet4Address) inetAddressNextElement;
                                } else if (name.startsWith("rmnet")) {
                                    inet4Address = (Inet4Address) inetAddressNextElement;
                                }
                            }
                        }
                    }
                } catch (SocketException e2) {
                    e = e2;
                    oldLogger.e("getLocalIp()", e);
                }
            }
        } catch (SocketException e3) {
            e = e3;
            inet4Address = null;
        }
        if (inet4Address2 != null) {
            return inet4Address2.getHostAddress();
        }
        return inet4Address != null ? inet4Address.getHostAddress() : "127.0.0.1";
    }

    public static String hardware(Context context) {
        return net.rtccloud.sdk.util.Utils.deviceName(context);
    }

    public static int installId(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        int i2 = sharedPreferences.getInt("ID", -1);
        if (i2 >= 0 && i2 < 46656) {
            return i2;
        }
        int iNextInt = new SecureRandom().nextInt(46656);
        sharedPreferences.edit().putInt("ID", iNextInt).apply();
        return iNextInt;
    }

    public static String networkCarrier(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    public static NetworkType networkType(Context context) {
        boolean z = context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0;
        boolean z2 = context.checkPermission("android.permission.READ_PHONE_STATE", Process.myPid(), Process.myUid()) == 0;
        if (!z || !z2) {
            return NetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return NetworkType.UNKNOWN;
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return NetworkType.MOBILE_2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return NetworkType.MOBILE_3G;
                case 13:
                case 18:
                case 19:
                    return NetworkType.MOBILE_4G;
                case 20:
                    return NetworkType.MOBILE_5G;
            }
        }
        if (type == 1 || type == 6 || type == 9) {
            return NetworkType.WIFI;
        }
        return NetworkType.UNKNOWN;
    }

    public static void printVersion() {
        String[][] strArr = {new String[]{"Type", "release"}, new String[]{"Version", n00.r(Rtcc.VERSION_NAME, " (120952)", new StringBuilder())}, new String[]{"Code", String.valueOf(Rtcc.VERSION_CODE)}, new String[]{"Date", "2026-09-07 08:49:28 UTC"}, new String[]{"Git", "#84e19ba2"}};
        Logger.INSTANCE.i("Rtcc\n" + FlipTable.of(new String[]{"Rtcc", " © 2017 SightCall "}, strArr), null);
    }

    public static RuntimeException throwAbiIncompatibilityError(Context context, UnsatisfiedLinkError unsatisfiedLinkError) {
        String str = context.getApplicationInfo().nativeLibraryDir;
        File file = new File(str);
        StringBuilder sb = new StringBuilder(fc.h("Unable to load Rtcc native library [libRtcc.so] from [", str, "]"));
        sb.append("\nBucket [");
        String[] list = file.list();
        sb.append(file.getName());
        sb.append("] is ");
        if (list == null) {
            sb.append("empty");
        } else {
            sb.append("forced by ");
            sb.append(Arrays.toString(list));
        }
        File[] fileArrListFiles = file.getParentFile().listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 1) {
            sb.append("\nAvailable ABI buckets: [");
            for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                File file2 = fileArrListFiles[i2];
                sb.append(file2.getName());
                sb.append(" -> ");
                sb.append(Arrays.toString(file2.list()));
                if (i2 < fileArrListFiles.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
        }
        sb.append("\nPlease consider ABI filtering solutions: [packagingOptions], [APK splits] or [abiFilters]");
        RuntimeException runtimeExceptionNewRuntimeException = RtccExceptions.newRuntimeException(sb.toString());
        runtimeExceptionNewRuntimeException.initCause(unsatisfiedLinkError);
        return runtimeExceptionNewRuntimeException;
    }
}
