package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class MANHeader extends UpnpHeader<String> {
    public static final Pattern d = Pattern.compile("\"(.+?)\"(;.+?)??");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f78426e = Pattern.compile(";\\s?ns\\s?=\\s?([0-9]{2})");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f78427c;

    public MANHeader(String str) {
        this.f78433a = str;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        if (this.f78433a == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("\"");
        sb.append((String) this.f78433a);
        sb.append("\"");
        if (this.f78427c != null) {
            sb.append("; ns=");
            sb.append(this.f78427c);
        }
        return sb.toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        Matcher matcher = d.matcher(str);
        if (!matcher.matches()) {
            v40.m("Invalid MAN header value: ".concat(str));
            return;
        }
        this.f78433a = matcher.group(1);
        if (matcher.group(2) != null) {
            Matcher matcher2 = f78426e.matcher(matcher.group(2));
            if (matcher2.matches()) {
                this.f78427c = matcher2.group(1);
            } else {
                v40.m("Invalid namespace in MAN header value: ".concat(str));
            }
        }
    }

    public MANHeader() {
    }

    public MANHeader(String str, String str2) {
        this(str);
        this.f78427c = str2;
    }
}
