package org.teleal.cling.model.message.header;

import com.linkplay.medialib.FinalDataUtil;
import defpackage.ct0;
import defpackage.v40;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CallbackHeader extends UpnpHeader<List<URL>> {
    public CallbackHeader() {
        this.f78433a = new ArrayList();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        StringBuilder sb = new StringBuilder();
        for (URL url : (List) this.f78433a) {
            sb.append("<");
            sb.append(url.toString());
            sb.append(">");
        }
        return sb.toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (str.length() == 0) {
            return;
        }
        if (!str.contains("<") || !str.contains(">")) {
            v40.m("URLs not in brackets: ".concat(str));
            return;
        }
        String strReplaceAll = str.replaceAll("<", "");
        String[] strArrSplit = strReplaceAll.split(">");
        try {
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArrSplit) {
                String strTrim = str2.trim();
                if (!strTrim.startsWith(FinalDataUtil.HTTP_HEAD)) {
                    throw new InvalidHeaderException("Can't parse non-http callback URL: " + strTrim);
                }
                arrayList.add(new URL(strTrim));
            }
            this.f78433a = arrayList;
        } catch (MalformedURLException e2) {
            ct0.m("Can't parse callback URLs from '", strReplaceAll, "': ", e2);
        }
    }

    public CallbackHeader(List<URL> list) {
        this();
        ((List) this.f78433a).addAll(list);
    }

    public CallbackHeader(URL url) {
        this();
        ((List) this.f78433a).add(url);
    }
}
