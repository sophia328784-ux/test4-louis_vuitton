package org.bouncycastle.mime;

import com.linkplay.medialib.server.HttpServer;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.util.Iterable;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class Headers implements Iterable<String> {
    private String boundary;
    private final String contentTransferEncoding;
    private String contentType;
    private Map<String, String> contentTypeParameters;
    private final Map<String, List> headers;
    private final List<String> headersAsPresented;
    private boolean multipart;

    public Headers(List<String> list, String str) {
        Map<String, String> mapCreateContentTypeParameters;
        this.headers = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.headersAsPresented = list;
        String string = "";
        for (String str2 : list) {
            if (str2.startsWith(" ") || str2.startsWith("\t")) {
                StringBuilder sbT = n00.t(string);
                sbT.append(str2.trim());
                string = sbT.toString();
            } else {
                if (string.length() != 0) {
                    put(string.substring(0, string.indexOf(58)).trim(), string.substring(string.indexOf(58) + 1).trim());
                }
                string = str2;
            }
        }
        if (string.trim().length() != 0) {
            put(string.substring(0, string.indexOf(58)).trim(), string.substring(string.indexOf(58) + 1).trim());
        }
        String str3 = getValues("Content-Type") == null ? HttpServer.MIME_PLAINTEXT : getValues("Content-Type")[0];
        int iIndexOf = str3.indexOf(59);
        if (iIndexOf < 0) {
            this.contentType = str3;
            mapCreateContentTypeParameters = Collections.EMPTY_MAP;
        } else {
            this.contentType = str3.substring(0, iIndexOf);
            mapCreateContentTypeParameters = createContentTypeParameters(str3.substring(iIndexOf + 1).trim());
        }
        this.contentTypeParameters = mapCreateContentTypeParameters;
        this.contentTransferEncoding = getValues("Content-Transfer-Encoding") != null ? getValues("Content-Transfer-Encoding")[0] : str;
        if (this.contentType.indexOf("multipart") >= 0) {
            this.multipart = true;
            this.boundary = o60.g(1, 1, this.contentTypeParameters.get("boundary"));
        } else {
            this.boundary = null;
            this.multipart = false;
        }
    }

    private Map<String, String> createContentTypeParameters(String str) {
        String[] strArrSplit = str.split(";");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 = 0; i2 != strArrSplit.length; i2++) {
            String str2 = strArrSplit[i2];
            int iIndexOf = str2.indexOf(61);
            if (iIndexOf < 0) {
                md.n("malformed Content-Type header");
                return null;
            }
            linkedHashMap.put(str2.substring(0, iIndexOf).trim(), str2.substring(iIndexOf + 1).trim());
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    private static List<String> parseHeaders(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        LineReader lineReader = new LineReader(inputStream);
        while (true) {
            String line = lineReader.readLine();
            if (line == null || line.length() == 0) {
                break;
            }
            arrayList.add(line);
        }
        return arrayList;
    }

    private void put(String str, String str2) {
        synchronized (this) {
            try {
                KV kv = new KV(str, str2);
                List arrayList = this.headers.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.headers.put(str, arrayList);
                }
                arrayList.add(kv);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean containsKey(String str) {
        return this.headers.containsKey(str);
    }

    public void dumpHeaders(OutputStream outputStream) throws IOException {
        Iterator<String> it = this.headersAsPresented.iterator();
        while (it.hasNext()) {
            outputStream.write(Strings.toUTF8ByteArray(it.next().toString()));
            outputStream.write(13);
            outputStream.write(10);
        }
    }

    public String getBoundary() {
        return this.boundary;
    }

    public String getContentTransferEncoding() {
        return this.contentTransferEncoding;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Map<String, String> getContentTypeAttributes() {
        return this.contentTypeParameters;
    }

    public Iterator<String> getNames() {
        return this.headers.keySet().iterator();
    }

    public String[] getValues(String str) {
        synchronized (this) {
            try {
                List list = this.headers.get(str);
                if (list == null) {
                    return null;
                }
                String[] strArr = new String[list.size()];
                for (int i2 = 0; i2 < list.size(); i2++) {
                    strArr[i2] = ((KV) list.get(i2)).value;
                }
                return strArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this) {
            zIsEmpty = this.headers.isEmpty();
        }
        return zIsEmpty;
    }

    public boolean isMultipart() {
        return this.multipart;
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<String> iterator() {
        return this.headers.keySet().iterator();
    }

    public static class KV {
        public final String key;
        public final String value;

        public KV(KV kv) {
            this.key = kv.key;
            this.value = kv.value;
        }

        public KV(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    public Headers(String str, String str2) {
        this.headers = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        String strG = tr.g("Content-Type: ", str);
        ArrayList arrayList = new ArrayList();
        this.headersAsPresented = arrayList;
        arrayList.add(strG);
        put("Content-Type", str);
        String str3 = getValues("Content-Type") == null ? HttpServer.MIME_PLAINTEXT : getValues("Content-Type")[0];
        int iIndexOf = str3.indexOf(59);
        if (iIndexOf < 0) {
            this.contentTypeParameters = Collections.EMPTY_MAP;
        } else {
            String strSubstring = str3.substring(0, iIndexOf);
            this.contentTypeParameters = createContentTypeParameters(str3.substring(iIndexOf + 1).trim());
            str3 = strSubstring;
        }
        this.contentTransferEncoding = getValues("Content-Transfer-Encoding") != null ? getValues("Content-Transfer-Encoding")[0] : str2;
        if (str3.indexOf("multipart") < 0) {
            this.boundary = null;
            this.multipart = false;
            return;
        }
        this.multipart = true;
        String str4 = this.contentTypeParameters.get("boundary");
        if (str4.startsWith("\"") && str4.endsWith("\"")) {
            this.boundary = o60.g(1, 1, str4);
        } else {
            this.boundary = str4;
        }
    }

    public Headers(InputStream inputStream, String str) throws IOException {
        this(parseHeaders(inputStream), str);
    }
}
