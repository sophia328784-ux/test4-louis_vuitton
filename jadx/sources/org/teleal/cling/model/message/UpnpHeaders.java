package org.teleal.cling.model.message;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.teleal.cling.model.message.header.InvalidHeaderException;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.common.http.Headers;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpHeaders extends Headers {
    public static final Logger d = Logger.getLogger(UpnpHeaders.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinkedHashMap f78409c;

    public UpnpHeaders() {
    }

    @Override // org.teleal.common.http.Headers
    public final void a(String str, String str2) {
        throw null;
    }

    @Override // org.teleal.common.http.Headers, java.util.Map
    public final void clear() {
        this.f78409c = null;
        super.clear();
    }

    @Override // org.teleal.common.http.Headers, java.util.Map
    /* JADX INFO: renamed from: e */
    public final List put(String str, List list) {
        this.f78409c = null;
        return super.put(str, list);
    }

    @Override // org.teleal.common.http.Headers, java.util.Map
    /* JADX INFO: renamed from: g */
    public final List remove(Object obj) {
        this.f78409c = null;
        return super.remove(obj);
    }

    public final void h(UpnpHeader.Type type, UpnpHeader upnpHeader) {
        super.a(type.c(), upnpHeader.a());
        if (this.f78409c != null) {
            i(type, upnpHeader);
        }
    }

    public final void i(UpnpHeader.Type type, UpnpHeader upnpHeader) {
        d.fine("Adding parsed header: " + upnpHeader);
        List linkedList = (List) this.f78409c.get(type);
        if (linkedList == null) {
            linkedList = new LinkedList();
            this.f78409c.put(type, linkedList);
        }
        linkedList.add(upnpHeader);
    }

    public final UpnpHeader[] j(UpnpHeader.Type type) {
        if (this.f78409c == null) {
            m();
        }
        return this.f78409c.get(type) != null ? (UpnpHeader[]) ((List) this.f78409c.get(type)).toArray(new UpnpHeader[((List) this.f78409c.get(type)).size()]) : new UpnpHeader[0];
    }

    public final UpnpHeader k(UpnpHeader.Type type, Class cls) {
        UpnpHeader[] upnpHeaderArrJ = j(type);
        if (upnpHeaderArrJ.length == 0) {
            return null;
        }
        for (UpnpHeader upnpHeader : upnpHeaderArrJ) {
            if (cls.isAssignableFrom(upnpHeader.getClass())) {
                return upnpHeader;
            }
        }
        return null;
    }

    public final void m() {
        UpnpHeader upnpHeader;
        Exception e2;
        this.f78409c = new LinkedHashMap();
        StringBuilder sb = new StringBuilder("Parsing all HTTP headers for known UPnP headers: ");
        HashMap map = this.f78640b;
        sb.append(map.size());
        String string = sb.toString();
        Logger logger = d;
        logger.fine(string);
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                UpnpHeader.Type typeA = UpnpHeader.Type.a((String) entry.getKey());
                if (typeA == null) {
                    logger.fine("Ignoring non-UPNP HTTP header: " + ((String) entry.getKey()));
                } else {
                    for (String str : (List) entry.getValue()) {
                        Logger logger2 = UpnpHeader.f78432b;
                        UpnpHeader upnpHeader2 = null;
                        for (int i2 = 0; i2 < typeA.b().length && upnpHeader2 == null; i2++) {
                            Class cls = typeA.b()[i2];
                            try {
                                try {
                                    logger2.finest("Trying to parse '" + typeA + "' with class: " + cls.getSimpleName());
                                    upnpHeader = (UpnpHeader) cls.newInstance();
                                    if (str != null) {
                                        try {
                                            upnpHeader.b(str);
                                        } catch (Exception e3) {
                                            e2 = e3;
                                            logger2.severe("Error instantiating header of type '" + typeA + "' with value: " + str);
                                            logger2.log(Level.SEVERE, "Exception root cause: ", Exceptions.a(e2));
                                        }
                                    }
                                } catch (Exception e4) {
                                    upnpHeader = upnpHeader2;
                                    e2 = e4;
                                }
                                upnpHeader2 = upnpHeader;
                            } catch (InvalidHeaderException e5) {
                                logger2.finest("Invalid header value for tested type: " + cls.getSimpleName() + " - " + e5.getMessage());
                                upnpHeader2 = null;
                            }
                        }
                        if (upnpHeader2 == null || upnpHeader2.f78433a == null) {
                            logger.fine("Ignoring known but non-parsable header (value violates the UDA specification?) '" + typeA.c() + "': " + str);
                        } else {
                            i(typeA, upnpHeader2);
                        }
                    }
                }
            }
        }
    }

    public UpnpHeaders(Map<String, List<String>> map) {
        super(map);
    }

    public UpnpHeaders(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
    }
}
