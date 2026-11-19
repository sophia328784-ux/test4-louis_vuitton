package org.teleal.cling;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.linkplay.log.LinkplayLog;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.teleal.cling.model.message.UpnpHeaders;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpDescriptionTools {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f78289a = false;

    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x009e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00b3, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(UpnpHeaders upnpHeaders, String str) throws Throwable {
        String bssid;
        Socket socket;
        WifiInfo connectionInfo = ((WifiManager) LPDeviceManager.getInstance().getContext().getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI)).getConnectionInfo();
        boolean zIsConnected = false;
        if (connectionInfo == null || (bssid = connectionInfo.getBSSID()) == null || (!bssid.startsWith("00:22:6c") && !bssid.startsWith("00:25:92") && !bssid.startsWith("0:22:6c") && !bssid.startsWith("0:25:92"))) {
            f78289a = false;
            return;
        }
        f78289a = true;
        if (upnpHeaders.containsKey("Server")) {
            String str2 = (String) upnpHeaders.get("Server").get(0);
            if (!TextUtils.isEmpty(str2)) {
                str2.contains("HTTPS");
            }
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, 8819);
        String str3 = null;
        Socket socket2 = null;
        try {
            try {
                try {
                    socket = new Socket();
                    try {
                        socket.setSoTimeout(5000);
                        socket.connect(inetSocketAddress, 5000);
                        zIsConnected = socket.isConnected();
                        socket.close();
                    } catch (IOException e2) {
                        e = e2;
                        socket2 = socket;
                        e.printStackTrace();
                        if (socket2 != null) {
                            socket2.close();
                        }
                        str3 = "Connect ";
                        if (zIsConnected) {
                            LinkplayLog.i("UPNP-SEARCH", "Connect " + str + ":8819 Success.");
                            return;
                        }
                        LinkplayLog.i("UPNP-SEARCH", "Connect " + str + ":8819 Failed.");
                    } catch (Throwable th) {
                        th = th;
                        if (socket != 0) {
                            try {
                                socket.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (IOException e5) {
                e = e5;
            }
            str3 = "Connect ";
            if (zIsConnected) {
                LinkplayLog.i("UPNP-SEARCH", "Connect " + str + ":8819 Success.");
                return;
            }
            LinkplayLog.i("UPNP-SEARCH", "Connect " + str + ":8819 Failed.");
        } catch (Throwable th2) {
            th = th2;
            socket = str3;
        }
    }
}
