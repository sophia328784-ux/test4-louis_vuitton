package org.teleal.cling.protocol.async;

import android.content.Intent;
import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.utils.LPBytesUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.performance.coulometry.a;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.android.AndroidEzlinkHandler;
import org.teleal.cling.model.ValidationError;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.discovery.IncomingSearchResponse;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.UDN;
import org.teleal.cling.protocol.ReceivingAsync;
import org.teleal.cling.protocol.RetrieveRemoteDescriptors;
import org.teleal.cling.protocol.UpnpUDNManager;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingSearchResponse extends ReceivingAsync<IncomingSearchResponse> {
    public static final String ACTION_EASY_LINK_OK = "easy link successful";
    private static final Logger log = Logger.getLogger(ReceivingSearchResponse.class.getName());

    public ReceivingSearchResponse(UpnpService upnpService, IncomingDatagramMessage<UpnpResponse> incomingDatagramMessage) {
        super(upnpService, new IncomingSearchResponse(incomingDatagramMessage));
    }

    private String getBootid(UpnpHeaders upnpHeaders) {
        return (upnpHeaders == null || !upnpHeaders.containsKey("Bootid.upnp.org")) ? "" : (String) upnpHeaders.get("Bootid.upnp.org").get(0);
    }

    private String getHeaderItemValueByKey(UpnpHeaders upnpHeaders, String str) {
        if (upnpHeaders == null || TextUtils.isEmpty(str)) {
            return "SSDP";
        }
        for (Map.Entry entry : upnpHeaders.f78640b.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return "SSDP";
    }

    private String getIP(UpnpHeaders upnpHeaders) {
        if (upnpHeaders == null) {
            return "";
        }
        try {
            if (upnpHeaders.containsKey(a.f37790a)) {
                String str = (String) upnpHeaders.get(a.f37790a).get(0);
                return !TextUtils.isEmpty(str) ? new URL(str).getHost() : "";
            }
            if (!upnpHeaders.containsKey("LOCATION")) {
                return "";
            }
            String str2 = (String) upnpHeaders.get("LOCATION").get(0);
            return !TextUtils.isEmpty(str2) ? new URL(str2).getHost() : "";
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private String getMediaType(UpnpHeaders upnpHeaders) {
        if (upnpHeaders == null || !upnpHeaders.containsKey("St")) {
            return "";
        }
        String str = (String) upnpHeaders.get("St").get(0);
        if (str.equals(NotificationSubtype.DMSALL.a())) {
            return "MediaServer";
        }
        return str.equals(NotificationSubtype.DMALL.a()) ? "MediaRenderer" : "";
    }

    private String getSecurity(UpnpHeaders upnpHeaders) {
        if (upnpHeaders == null || !upnpHeaders.containsKey("Server")) {
            return "";
        }
        String str = (String) upnpHeaders.get("Server").get(0);
        if (str.toLowerCase().contains(SecurityConstants.SECURITY_HTTPS3)) {
            return SecurityConstants.SECURITY_HTTPS3;
        }
        if (str.toLowerCase().contains(SecurityConstants.SECURITY_HTTPS2)) {
            return SecurityConstants.SECURITY_HTTPS2;
        }
        return str.toLowerCase().contains(SecurityConstants.SECURITY_HTTPS) ? SecurityConstants.SECURITY_HTTPS : SecurityConstants.SECURITY_NONE;
    }

    private String getServiceName(UpnpHeaders upnpHeaders) {
        if (upnpHeaders == null) {
            return "";
        }
        if (upnpHeaders.containsKey("Servicename")) {
            return (String) upnpHeaders.get("Servicename").get(0);
        }
        return upnpHeaders.containsKey("ServiceName") ? (String) upnpHeaders.get("ServiceName").get(0) : "";
    }

    private synchronized void matchEasylink(IncomingSearchResponse incomingSearchResponse) {
        try {
            UpnpHeaders upnpHeaders = incomingSearchResponse.f78412c;
            if (upnpHeaders == null) {
                return;
            }
            String lowerCase = upnpHeaders.toString().toLowerCase();
            if (lowerCase.contains("easylink")) {
                String strTrim = null;
                String strSubstring = null;
                String host = null;
                for (String str : lowerCase.split("\r\n")) {
                    if (str.contains("easylink")) {
                        strTrim = str.split(":")[1].trim();
                    } else if (str.contains("location")) {
                        try {
                            host = new URL(str.substring(str.indexOf(SecurityConstants.SECURITY_NONE)).trim()).getHost();
                        } catch (MalformedURLException e2) {
                            e2.printStackTrace();
                        }
                    } else if (str.contains("usn")) {
                        strSubstring = str.substring(str.indexOf("uuid"), str.indexOf("::"));
                    }
                }
                if (strTrim != null && strTrim.equals("1") && host != null && strSubstring != null) {
                    System.out.println("parse ok all -----" + strTrim + "," + host + "," + strSubstring);
                    Intent intent = new Intent();
                    intent.putExtra("EASYLINK", strTrim);
                    intent.putExtra("IP", host);
                    intent.putExtra("UUID", strSubstring);
                    intent.setAction(ACTION_EASY_LINK_OK);
                    LPDeviceManager.getInstance().getContext().sendBroadcast(intent);
                    HashMap map = new HashMap();
                    map.put("EASYLINK", strTrim);
                    map.put("IP", host);
                    map.put("UUID", strSubstring);
                    AndroidEzlinkHandler.a().b(map);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.teleal.cling.protocol.ReceivingAsync
    public void execute() {
        String str;
        IncomingSearchResponse inputMessage = getInputMessage();
        if (inputMessage == null || inputMessage.g() == null) {
            return;
        }
        UpnpHeaders upnpHeaders = inputMessage.f78412c;
        if (upnpHeaders == null) {
            LinkplayLog.i("UPNP-SEARCH", "Receiving Search Response getInputMsg getHeaders null");
            return;
        }
        if (upnpHeaders.containsKey("Easylink")) {
            LinkplayLog.i("UPNP-SEARCH", "Receiving Search Response getInputMsg getHeaders contains Easylink");
            matchEasylink(inputMessage);
        }
        UpnpHeaders upnpHeaders2 = inputMessage.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.ST;
        List list = null;
        UpnpHeader upnpHeader = upnpHeaders2.j(type).length > 0 ? upnpHeaders2.j(type)[0] : null;
        UpnpHeaders upnpHeaders3 = inputMessage.f78412c;
        UpnpHeader.Type type2 = UpnpHeader.Type.USN;
        UpnpHeader upnpHeader2 = upnpHeaders3.j(type2).length > 0 ? upnpHeaders3.j(type2)[0] : null;
        if (upnpHeader == null || upnpHeader.f78433a == null || upnpHeader2 == null || upnpHeader2.f78433a == null) {
            log.fine("Ignoring invalid search response message: " + getInputMessage());
            return;
        }
        UDN udnH = inputMessage.h();
        if (udnH == null) {
            LinkplayLog.i("UPNP-SEARCH", "getInputMessage() getRootDeviceUDN() == null");
            log.fine("Ignoring search response message without UDN: " + getInputMessage());
            return;
        }
        if (upnpHeaders.containsKey("St")) {
            list = upnpHeaders.get("St");
        } else if (upnpHeaders.f78640b.containsValue("ST")) {
            list = upnpHeaders.get("ST");
        }
        if (list != null && list.size() > 0 && (str = (String) list.get(0)) != null && (str.equals(NotificationSubtype.GETWAYDEVICE.a()) || str.equals(NotificationSubtype.WFADEVICE.a()))) {
            try {
                URL urlG = inputMessage.g();
                if (urlG == null && TextUtils.isEmpty(urlG.getHost())) {
                    return;
                }
                StreamResponseMessage streamResponseMessageC = getUpnpService().c().c(new StreamRequestMessage(UpnpRequest.Method.GET, urlG));
                if (streamResponseMessageC != null) {
                    LinkplayLog.i("UPNP-SEARCH", "ReceivingSearchResponse: Receive Router Description: " + streamResponseMessageC.d());
                    return;
                }
                return;
            } catch (Exception e2) {
                LinkplayLog.i("UPNP-SEARCH", "ReceivingSearchResponse: Receive Router Desc Error " + e2);
                return;
            }
        }
        UpnpUDNManager.UpnpUDNInstance upnpUDNInstance = new UpnpUDNManager.UpnpUDNInstance(udnH.toString(), getInputMessage().g().toString());
        upnpUDNInstance.f78543c = getMediaType(upnpHeaders);
        upnpUDNInstance.d = getSecurity(upnpHeaders);
        upnpUDNInstance.f78544e = getBootid(upnpHeaders);
        String serviceName = getServiceName(upnpHeaders);
        if (!TextUtils.isEmpty(serviceName) && serviceName.startsWith("##hexStr##")) {
            LPBytesUtils.hexStr2Str(serviceName.substring(10));
        }
        getHeaderItemValueByKey(upnpHeaders, "Device-source");
        UpnpUDNManager upnpUDNManager = UpnpUDNManager.f78538c;
        if (upnpUDNManager.c(udnH.toString())) {
            return;
        }
        String string = udnH.toString();
        boolean zIsEmpty = TextUtils.isEmpty(string);
        if (TextUtils.isEmpty(UpnpUDNManager.b(string))) {
            zIsEmpty = true;
        }
        if (zIsEmpty) {
            return;
        }
        upnpUDNManager.a(udnH.toString());
        RemoteDeviceIdentity remoteDeviceIdentity = new RemoteDeviceIdentity(getInputMessage());
        Logger logger = log;
        logger.fine("Received device search response: " + remoteDeviceIdentity);
        if (getUpnpService().b().B(remoteDeviceIdentity)) {
            logger.fine("Remote device was already known: " + udnH);
            LinkplayLog.i("UPNP-SEARCH", "RemoteDeviceIdentity update true.");
            return;
        }
        if (remoteDeviceIdentity.f78474c == null) {
            logger.finer("Ignoring message without location URL header: " + getInputMessage());
            LinkplayLog.i("UPNP-SEARCH", "ReceivingSearchResponse getDescriptorURL() == null, " + getInputMessage());
            return;
        }
        if (remoteDeviceIdentity.f78459b == null) {
            logger.finer("Ignoring message without max-age header: " + getInputMessage());
            LinkplayLog.i("UPNP-SEARCH", "ReceivingSearchResponse rdIdentity.getMaxAgeSeconds() == null, " + getInputMessage());
            return;
        }
        try {
            LinkplayLog.i("UPNP-SEARCH", "RemoteDeviceIdentity:UDN = ".concat(remoteDeviceIdentity.f78458a.toString()));
            getUpnpService().getConfiguration().m().execute(new RetrieveRemoteDescriptors(getUpnpService(), new RemoteDevice(remoteDeviceIdentity), getInputMessage().f78412c));
        } catch (ValidationException e3) {
            log.warning("Validation errors of device during discovery: " + remoteDeviceIdentity);
            LinkplayLog.i("UPNP-SEARCH", "ValidationException: " + e3.getMessage());
            for (ValidationError validationError : e3.f78392b) {
                LinkplayLog.i("UPNP-SEARCH", "new RemoteDevice ValidationError: ".concat(validationError.toString()));
                log.warning(validationError.toString());
            }
        }
    }
}
