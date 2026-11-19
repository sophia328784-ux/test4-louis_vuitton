package org.teleal.cling.model.message.header;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.v40;
import org.teleal.cling.model.ServerClientTokens;

/* JADX INFO: loaded from: classes5.dex */
public class ServerHeader extends UpnpHeader<ServerClientTokens> {
    public ServerHeader() {
        this.f78433a = new ServerClientTokens();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        ServerClientTokens serverClientTokens = (ServerClientTokens) this.f78433a;
        return serverClientTokens.f78386c.replaceAll(" ", "_") + "/" + serverClientTokens.d.replaceAll(" ", "_") + " UPnP/" + serverClientTokens.f78384a + FileUtils.HIDDEN_PREFIX + serverClientTokens.f78385b + " " + serverClientTokens.f78387e.replaceAll(" ", "_") + "/" + serverClientTokens.f78388f.replaceAll(" ", "_");
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        String[] strArrSplit;
        String[] strArrSplit2;
        ServerClientTokens serverClientTokens = new ServerClientTokens();
        serverClientTokens.f78386c = "UNKNOWN";
        serverClientTokens.d = "UNKNOWN";
        serverClientTokens.f78387e = "UNKNOWN";
        serverClientTokens.f78388f = "UNKNOWN";
        if (str.contains("UPnP/1.1")) {
            serverClientTokens.f78385b = 1;
        } else if (!str.contains("UPnP/1.")) {
            v40.m("Missing 'UPnP/1.' in server information: ".concat(str));
            return;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            try {
                if (str.charAt(i3) == ' ') {
                    i2++;
                }
            } catch (Exception unused) {
                serverClientTokens.f78386c = "UNKNOWN";
                serverClientTokens.d = "UNKNOWN";
                serverClientTokens.f78387e = "UNKNOWN";
                serverClientTokens.f78388f = "UNKNOWN";
            }
        }
        if (str.contains(",")) {
            String[] strArrSplit3 = str.split(",");
            strArrSplit = strArrSplit3[0].split("/");
            strArrSplit2 = strArrSplit3[2].split("/");
        } else if (i2 > 2) {
            String strTrim = str.substring(0, str.indexOf("UPnP/1.")).trim();
            String strTrim2 = str.substring(str.indexOf("UPnP/1.") + 8).trim();
            strArrSplit = strTrim.split("/");
            strArrSplit2 = strTrim2.split("/");
        } else {
            String[] strArrSplit4 = str.split(" ");
            strArrSplit = strArrSplit4[0].split("/");
            strArrSplit2 = strArrSplit4[2].split("/");
        }
        serverClientTokens.f78386c = strArrSplit[0].trim();
        if (strArrSplit.length > 1) {
            serverClientTokens.d = strArrSplit[1].trim();
        }
        serverClientTokens.f78387e = strArrSplit2[0].trim();
        if (strArrSplit2.length > 1) {
            serverClientTokens.f78388f = strArrSplit2[1].trim();
        }
        this.f78433a = serverClientTokens;
    }

    public ServerHeader(ServerClientTokens serverClientTokens) {
        this.f78433a = serverClientTokens;
    }
}
