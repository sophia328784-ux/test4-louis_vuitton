package com.linkplay.medialib;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.linkplay.core.model.menubar.MenuBarConstants;

/* JADX INFO: loaded from: classes2.dex */
public class FinalDataUtil {
    public static final String HTTP_HEAD = "http://";

    public static String makeIPV4IP(Context context) {
        int ipAddress = ((WifiManager) context.getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI)).getConnectionInfo().getIpAddress();
        return String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255));
    }
}
