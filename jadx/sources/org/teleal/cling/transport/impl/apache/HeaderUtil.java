package org.teleal.cling.transport.impl.apache;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.teleal.common.http.Headers;

/* JADX INFO: loaded from: classes5.dex */
public class HeaderUtil {
    public static void a(HttpMessage httpMessage, Headers headers) {
        for (Map.Entry entry : headers.f78640b.entrySet()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                httpMessage.addHeader((String) entry.getKey(), (String) it.next());
            }
        }
    }

    public static Headers b(HttpMessage httpMessage) {
        Headers headers = new Headers();
        for (Header header : httpMessage.getAllHeaders()) {
            headers.a(header.getName(), header.getValue());
        }
        return headers;
    }
}
