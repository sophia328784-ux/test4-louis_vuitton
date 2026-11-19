package com.android.wiimu.service.online_service.util;

import android.net.nsd.NsdServiceInfo;
import android.text.TextUtils;
import com.linkplay.bonjour.model.LinkPlayService;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.utils.LPBytesUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.UpnpService;
import org.teleal.cling.UpnpServiceImpl;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.impl.DatagramProcessorImpl;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f22481b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ReentrantLock f22482a = new ReentrantLock();

    /* JADX INFO: renamed from: com.android.wiimu.service.online_service.util.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes.dex */
    public class RunnableC0036a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h.a f22483a;

        public RunnableC0036a(h.a aVar) {
            this.f22483a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            LPSearchControlPoint.getInstance();
            if (LPSearchControlPoint.upnpservice == null) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess upnpservice is Null return");
                return;
            }
            LPSearchControlPoint.getInstance();
            UpnpService upnpServiceC = LPSearchControlPoint.upnpservice.c();
            if (upnpServiceC == null) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess getUpnpService is Null return");
                return;
            }
            Router router = ((UpnpServiceImpl) upnpServiceC).f78294e;
            if (router == null) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess getRouter is Null return");
                return;
            }
            byte[] bytes = a.this.a(this.f22483a).getBytes();
            try {
                router.b(new DatagramProcessorImpl().b(InetAddress.getByName(this.f22483a.f69532i.f69533b), new DatagramPacket(bytes, bytes.length)));
            } catch (AssertionError e2) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess getRouter AssertionError:" + e2.getLocalizedMessage());
                e2.printStackTrace();
            } catch (Exception e3) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess getRouter Exception:" + e3.getLocalizedMessage());
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f22485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f22486b;

        public b(String str, String str2) {
            this.f22485a = str;
            this.f22486b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Router router;
            LPSearchControlPoint.getInstance();
            if (LPSearchControlPoint.upnpservice == null) {
                return;
            }
            LPSearchControlPoint.getInstance();
            UpnpService upnpServiceC = LPSearchControlPoint.upnpservice.c();
            if (upnpServiceC == null || (router = ((UpnpServiceImpl) upnpServiceC).f78294e) == null) {
                return;
            }
            byte[] bytes = a.this.a(this.f22485a, this.f22486b).getBytes();
            try {
                router.b(new DatagramProcessorImpl().b(InetAddress.getByName(this.f22486b), new DatagramPacket(bytes, bytes.length)));
            } catch (AssertionError e2) {
                e2.printStackTrace();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(h.a aVar) {
        StringBuffer stringBuffer = new StringBuffer("HTTP/1.1 200 OK\r\nCACHE-CONTROL: max-age=1800\r\n");
        stringBuffer.append("LOCATION: http://" + aVar.f69532i.f69533b + ":" + aVar.f69532i.f69534c + "/description.xml\r\n");
        if (!TextUtils.isEmpty(aVar.g)) {
            stringBuffer.append("Bootid.upnp.org: " + aVar.g + "\r\n");
        }
        stringBuffer.append("ServiceName: ##hexStr##" + LPBytesUtils.str2HexStr(aVar.f69527b) + "\r\n");
        stringBuffer.append("SERVER: Linux/2.6.21 HTTPS 1.0\r\nST: urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
        stringBuffer.append("USN: " + aVar.d + "::urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
        stringBuffer.append("DEVICE-SOURCE: " + aVar.f69531h + "\r\n");
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }

    public h.a b(NsdServiceInfo nsdServiceInfo) {
        this.f22482a.lock();
        h.a aVar = new h.a();
        h.b bVar = aVar.f69532i;
        try {
            bVar.f69533b = nsdServiceInfo.getHost().getHostAddress();
            bVar.f69534c = String.valueOf(nsdServiceInfo.getPort());
            aVar.f69527b = nsdServiceInfo.getServiceName();
            aVar.f69530f = nsdServiceInfo.getHost().getHostAddress();
            aVar.f69529e = nsdServiceInfo.getPort();
            String string = nsdServiceInfo.toString();
            if (string.indexOf("txtRecord") > 0) {
                int iIndexOf = string.indexOf("bootid=");
                if (iIndexOf >= 0) {
                    aVar.g = string.substring(iIndexOf + 7, iIndexOf + 43);
                }
                int iIndexOf2 = string.indexOf("MAC=");
                if (iIndexOf2 >= 0) {
                    string.substring(iIndexOf2 + 4, iIndexOf2 + 21);
                }
                int iIndexOf3 = string.indexOf("uuid=");
                if (iIndexOf3 >= 0) {
                    aVar.d = string.substring(iIndexOf3 + 5, iIndexOf3 + 46);
                }
                int iIndexOf4 = string.indexOf("security=");
                if (iIndexOf4 >= 0) {
                    string.substring(iIndexOf4 + 9);
                }
            }
            aVar.f69531h = "mDNS";
            aVar.f69528c = nsdServiceInfo.getServiceType();
        } catch (Exception unused) {
        }
        this.f22482a.unlock();
        return aVar;
    }

    public void b(h.a aVar) {
        if (aVar == null) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "OnlineServiceInfoProcess ndsResolveInfo is Null return");
            return;
        }
        this.f22482a.lock();
        new Thread(new RunnableC0036a(aVar)).start();
        this.f22482a.unlock();
    }

    public void b(String str, String str2) {
        this.f22482a.lock();
        new Thread(new b(str, str2)).start();
        this.f22482a.unlock();
    }

    public static a a() {
        if (f22481b == null) {
            f22481b = new a();
        }
        return f22481b;
    }

    public h.a a(LinkPlayService linkPlayService) {
        if (linkPlayService == null) {
            return null;
        }
        this.f22482a.lock();
        h.a aVar = new h.a();
        String ip = linkPlayService.getIp();
        h.b bVar = aVar.f69532i;
        bVar.f69533b = ip;
        bVar.f69534c = String.valueOf(linkPlayService.getPort());
        aVar.f69527b = linkPlayService.getUuid();
        this.f22482a.unlock();
        return aVar;
    }

    public h.a a(NsdServiceInfo nsdServiceInfo) {
        this.f22482a.lock();
        h.a aVar = new h.a();
        h.b bVar = aVar.f69532i;
        try {
            bVar.f69533b = nsdServiceInfo.getHost().getHostAddress();
            bVar.f69534c = String.valueOf(nsdServiceInfo.getPort());
            aVar.f69527b = nsdServiceInfo.getServiceName();
            aVar.f69530f = nsdServiceInfo.getHost().getHostAddress();
            aVar.f69529e = nsdServiceInfo.getPort();
            String string = nsdServiceInfo.toString();
            if (string.indexOf("txtRecord") > 0) {
                int iIndexOf = string.indexOf("manufacturer=");
                if (iIndexOf >= 0) {
                    string.substring(iIndexOf + 13, iIndexOf + 19);
                }
                int iIndexOf2 = string.indexOf("deviceid=");
                if (iIndexOf2 >= 0) {
                    aVar.d = string.substring(iIndexOf2 + 9, iIndexOf2 + 26);
                }
            }
            aVar.f69531h = "mDNS";
            aVar.f69528c = nsdServiceInfo.getServiceType();
        } catch (Exception unused) {
        }
        this.f22482a.unlock();
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer("HTTP/1.1 200 OK\r\nCACHE-CONTROL: max-age=1800\r\n");
        stringBuffer.append("LOCATION: http://" + str2 + ":59152/description.xml\r\n");
        stringBuffer.append("SERVER: Linux/2.6.21\r\nST: urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
        stringBuffer.append("USN: " + str + "::urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }
}
