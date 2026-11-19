package org.teleal.cling.transport.impl;

import android.text.TextUtils;
import defpackage.cj;
import defpackage.wp;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpOperation;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.transport.spi.DatagramProcessor;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.teleal.common.http.Headers;

/* JADX INFO: loaded from: classes5.dex */
public class DatagramProcessorImpl implements DatagramProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f78619a = Logger.getLogger(DatagramProcessor.class.getName());

    @Override // org.teleal.cling.transport.spi.DatagramProcessor
    public final DatagramPacket a(OutgoingDatagramMessage outgoingDatagramMessage) {
        StringBuilder sb = new StringBuilder();
        UpnpOperation upnpOperation = outgoingDatagramMessage.f78411b;
        if (upnpOperation instanceof UpnpRequest) {
            sb.append(((UpnpRequest) upnpOperation).f78415b.b());
            sb.append(" * HTTP/1.");
            sb.append(upnpOperation.f78414a);
            sb.append("\r\n");
        } else {
            if (!(upnpOperation instanceof UpnpResponse)) {
                wp.c(outgoingDatagramMessage, "Message operation is not request or response, don't know how to process: ");
                return null;
            }
            UpnpResponse upnpResponse = (UpnpResponse) upnpOperation;
            sb.append("HTTP/1.");
            sb.append(upnpOperation.f78414a);
            sb.append(" ");
            sb.append(upnpResponse.f78417b);
            sb.append(" ");
            sb.append(upnpResponse.f78418c);
            sb.append("\r\n");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) sb);
        sb2.append(outgoingDatagramMessage.f78412c.toString());
        sb2.append("\r\n");
        Level level = Level.FINER;
        Logger logger = f78619a;
        if (logger.isLoggable(level)) {
            logger.finer("Writing message data for: " + outgoingDatagramMessage);
            logger.finer("---------------------------------------------------------------------------------");
            logger.finer(sb2.toString().substring(0, sb2.length() + (-2)));
            logger.finer("---------------------------------------------------------------------------------");
        }
        try {
            byte[] bytes = sb2.toString().getBytes("US-ASCII");
            logger.fine("Writing new datagram packet with " + bytes.length + " bytes for: " + outgoingDatagramMessage);
            return new DatagramPacket(bytes, bytes.length, outgoingDatagramMessage.f78408f, outgoingDatagramMessage.g);
        } catch (UnsupportedEncodingException e2) {
            throw new UnsupportedDataException("Can't convert message content to US-ASCII: " + e2.getMessage(), e2);
        }
    }

    @Override // org.teleal.cling.transport.spi.DatagramProcessor
    public final IncomingDatagramMessage b(InetAddress inetAddress, DatagramPacket datagramPacket) {
        String[] strArrSplit;
        try {
            Logger logger = f78619a;
            if (logger.isLoggable(Level.FINER)) {
                logger.finer("===================================== DATAGRAM BEGIN ============================================");
                logger.finer(new String(datagramPacket.getData()));
                logger.finer("-===================================== DATAGRAM END =============================================");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(datagramPacket.getData());
            String strF = Headers.f(byteArrayInputStream);
            if (!TextUtils.isEmpty(strF) && (strArrSplit = strF.split(" ")) != null && strArrSplit.length > 0) {
                if (strArrSplit[0].startsWith("HTTP/1.")) {
                    if (strArrSplit.length <= 2) {
                        HashMap map = a.f71507a;
                        return null;
                    }
                    int iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                    String str = strArrSplit[2];
                    String str2 = strArrSplit[0];
                    UpnpHeaders upnpHeaders = new UpnpHeaders(byteArrayInputStream);
                    UpnpResponse upnpResponse = new UpnpResponse(iIntValue, str);
                    upnpResponse.f78414a = str2.toUpperCase().equals("HTTP/1.1") ? 1 : 0;
                    IncomingDatagramMessage incomingDatagramMessage = new IncomingDatagramMessage(upnpResponse, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
                    incomingDatagramMessage.f78412c = upnpHeaders;
                    return incomingDatagramMessage;
                }
                if (strArrSplit.length > 2) {
                    String str3 = strArrSplit[0];
                    String str4 = strArrSplit[2];
                    UpnpHeaders upnpHeaders2 = new UpnpHeaders(byteArrayInputStream);
                    UpnpRequest upnpRequest = new UpnpRequest(UpnpRequest.Method.a(str3));
                    upnpRequest.f78414a = str4.toUpperCase().equals("HTTP/1.1") ? 1 : 0;
                    IncomingDatagramMessage incomingDatagramMessage2 = new IncomingDatagramMessage(upnpRequest, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
                    incomingDatagramMessage2.f78412c = upnpHeaders2;
                    return incomingDatagramMessage2;
                }
            }
            return null;
        } catch (Exception e2) {
            throw new UnsupportedDataException(cj.j("Could not parse headers: ", e2), e2);
        }
    }
}
