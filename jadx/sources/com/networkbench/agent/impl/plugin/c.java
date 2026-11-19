package com.networkbench.agent.impl.plugin;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.RouteInfo;
import java.io.BufferedReader;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f37957a = {"8.8.8.8", "8.8.4.4"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37958b = "]: [";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f37959c;

    public c(Context context) {
        this.f37959c = context;
    }

    private Set<String> a(BufferedReader bufferedReader) throws Exception {
        String hostAddress;
        HashSet hashSet = new HashSet(10);
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return hashSet;
            }
            int iIndexOf = line.indexOf(f37958b);
            if (iIndexOf != -1) {
                String strSubstring = line.substring(1, iIndexOf);
                int i2 = iIndexOf + 4;
                int length = line.length() - 1;
                if (length < i2) {
                    com.networkbench.agent.impl.c.g.k("Malformed property detected: \"" + line + '\"');
                } else {
                    String strSubstring2 = line.substring(i2, length);
                    if (!strSubstring2.isEmpty() && (strSubstring.endsWith(".dns") || strSubstring.endsWith(".dns1") || strSubstring.endsWith(".dns2") || strSubstring.endsWith(".dns3") || strSubstring.endsWith(".dns4"))) {
                        InetAddress byName = InetAddress.getByName(strSubstring2);
                        if (byName != null && (hostAddress = byName.getHostAddress()) != null && hostAddress.length() != 0) {
                            hashSet.add(hostAddress);
                        }
                    }
                }
            }
        }
    }

    private String[] b() {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f37959c.getSystemService("connectivity");
            if (connectivityManager != null) {
                for (Network network : connectivityManager.getAllNetworks()) {
                    if (connectivityManager.getNetworkInfo(network).isConnected()) {
                        LinkProperties linkProperties = connectivityManager.getLinkProperties(network);
                        List<InetAddress> dnsServers = linkProperties.getDnsServers();
                        if (a(linkProperties)) {
                            Iterator<InetAddress> it = dnsServers.iterator();
                            while (it.hasNext()) {
                                arrayList.add(it.next().getHostAddress());
                            }
                        } else {
                            Iterator<InetAddress> it2 = dnsServers.iterator();
                            while (it2.hasNext()) {
                                arrayList2.add(it2.next().getHostAddress());
                            }
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            if (arrayList.size() > 0) {
                return (String[]) arrayList.toArray(new String[0]);
            }
            return null;
        } catch (Exception e2) {
            com.networkbench.agent.impl.c.g.k("Exception detecting DNS servers using ConnectivityManager method" + e2.getMessage());
            return null;
        }
    }

    private String[] c() {
        return null;
    }

    private String[] d() {
        return null;
    }

    public String[] a() {
        String[] strArrC = c();
        if (strArrC != null && strArrC.length > 0) {
            return strArrC;
        }
        String[] strArrB = b();
        if (strArrB != null && strArrB.length > 0) {
            return strArrB;
        }
        String[] strArrD = d();
        return (strArrD == null || strArrD.length <= 0) ? f37957a : strArrD;
    }

    private boolean a(LinkProperties linkProperties) {
        Iterator<RouteInfo> it = linkProperties.getRoutes().iterator();
        while (it.hasNext()) {
            if (it.next().isDefaultRoute()) {
                return true;
            }
        }
        return false;
    }
}
