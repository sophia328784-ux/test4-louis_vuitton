package com.sensorsdata.analytics.android.sdk.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.FinalDataUtil;
import com.networkbench.agent.impl.performance.coulometry.a;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkUtils {
    private static final int HTTP_307 = 307;
    private static final String TAG = "SA.NetworkUtils";
    private static SABroadcastReceiver mReceiver;
    private static SANetworkCallbackImpl networkCallback;
    private static String networkType;

    public static class SABroadcastReceiver extends BroadcastReceiver {
        private SABroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkUtils.cleanNetworkTypeCache();
                SensorsDataAPI.sharedInstance().flush();
                SALog.i(NetworkUtils.TAG, "SABroadcastReceiver is receiving ConnectivityManager.CONNECTIVITY_ACTION broadcast");
            }
        }
    }

    public static class SANetworkCallbackImpl extends ConnectivityManager.NetworkCallback {
        private SANetworkCallbackImpl() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            NetworkUtils.cleanNetworkTypeCache();
            SensorsDataAPI.sharedInstance().flush();
            SALog.i(NetworkUtils.TAG, "onAvailable is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            NetworkUtils.cleanNetworkTypeCache();
            SALog.i(NetworkUtils.TAG, "onCapabilitiesChanged is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            NetworkUtils.cleanNetworkTypeCache();
            SALog.i(NetworkUtils.TAG, "onLost is calling");
        }
    }

    public static void cleanNetworkTypeCache() {
        networkType = null;
    }

    public static boolean compareMainDomain(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str2.contains(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX)) {
            return false;
        }
        return str.substring(str.indexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX) + 1).equals(str2.substring(str2.indexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX) + 1));
    }

    public static String getHost(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return (str.startsWith(FinalDataUtil.HTTP_HEAD) || str.startsWith("https://")) ? Uri.parse(str).getHost() : "";
    }

    public static String getLocation(HttpURLConnection httpURLConnection, String str) throws MalformedURLException {
        if (httpURLConnection == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String strE = Callback.e(a.f37790a, httpURLConnection);
        if (TextUtils.isEmpty(strE)) {
            strE = Callback.e("location", httpURLConnection);
        }
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        if (strE.startsWith(FinalDataUtil.HTTP_HEAD) || strE.startsWith("https://")) {
            return strE;
        }
        URL url = new URL(str);
        return url.getProtocol() + "://" + url.getHost() + strE;
    }

    public static String getRequestUrl(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!str.startsWith(FinalDataUtil.HTTP_HEAD) && !str.startsWith("https://")) {
            return "";
        }
        Uri uri = Uri.parse(str);
        try {
            return new URI(uri.getScheme(), uri.getUserInfo(), uri.getHost(), uri.getPort(), null, null, null) + "/" + str2;
        } catch (URISyntaxException e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static boolean isNetworkAvailable(Context context) {
        if (!PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return false;
        }
        try {
            return isNetworkAvailable((ConnectivityManager) context.getSystemService("connectivity"));
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    public static boolean isNetworkValid(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities != null) {
            return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(7) || networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(16);
        }
        return false;
    }

    public static boolean isShouldFlush(String str, int i2) {
        return (toNetworkType(str) & i2) != 0;
    }

    private static boolean isWiFiNetwork(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    private static String mobileNetworkType(Context context, TelephonyManager telephonyManager, ConnectivityManager connectivityManager) {
        int subtype;
        NetworkInfo activeNetworkInfo;
        if (telephonyManager == null) {
            subtype = 0;
        } else if (Build.VERSION.SDK_INT < 30) {
            subtype = telephonyManager.getNetworkType();
        } else if (PermissionUtils.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager.hasCarrierPrivileges()) {
            subtype = telephonyManager.getDataNetworkType();
        } else {
            subtype = 0;
        }
        if (subtype == 0) {
            if (Build.VERSION.SDK_INT >= 30) {
                return "NULL";
            }
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                subtype = activeNetworkInfo.getSubtype();
            }
        }
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
            case 18:
            case 19:
                return "4G";
            case 16:
            case 17:
            default:
                return "NULL";
            case 20:
                return "5G";
        }
    }

    public static boolean needRedirects(int i2) {
        return i2 == 301 || i2 == 302 || i2 == HTTP_307;
    }

    public static String networkType(Context context) {
        try {
            if (!TextUtils.isEmpty(networkType) && !"NULL".equals(networkType)) {
                return networkType;
            }
            if (!PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                networkType = "NULL";
                return "NULL";
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                if (!isNetworkAvailable(connectivityManager)) {
                    networkType = "NULL";
                    return "NULL";
                }
                if (isWiFiNetwork(connectivityManager)) {
                    networkType = "WIFI";
                    return "WIFI";
                }
            }
            String strMobileNetworkType = mobileNetworkType(context, (TelephonyManager) context.getSystemService("phone"), connectivityManager);
            networkType = strMobileNetworkType;
            return strMobileNetworkType;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            networkType = "NULL";
            return "NULL";
        }
    }

    public static void registerNetworkListener(Context context) {
        try {
            if (PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                if (networkCallback == null) {
                    networkCallback = new SANetworkCallbackImpl();
                }
                NetworkRequest networkRequestBuild = new NetworkRequest.Builder().build();
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    connectivityManager.registerNetworkCallback(networkRequestBuild, networkCallback);
                    SALog.i(TAG, "Register ConnectivityManager");
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private static int toNetworkType(String str) {
        if ("NULL".equals(str)) {
            return 255;
        }
        if ("WIFI".equals(str)) {
            return 8;
        }
        if ("2G".equals(str)) {
            return 1;
        }
        if ("3G".equals(str)) {
            return 2;
        }
        if ("4G".equals(str)) {
            return 4;
        }
        return "5G".equals(str) ? 16 : 255;
    }

    public static void unregisterNetworkListener(Context context) {
        ConnectivityManager connectivityManager;
        try {
            if (networkCallback == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
                return;
            }
            connectivityManager.unregisterNetworkCallback(networkCallback);
            SALog.i(TAG, "unregister ConnectivityManager");
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private static boolean isNetworkAvailable(ConnectivityManager connectivityManager) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return isNetworkValid(networkCapabilities);
    }
}
