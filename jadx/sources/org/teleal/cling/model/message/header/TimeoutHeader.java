package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class TimeoutHeader extends UpnpHeader<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f78431c = Pattern.compile("Second-(?:([0-9]+)|infinite)");

    public TimeoutHeader() {
        this.f78433a = 1800;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        StringBuilder sb = new StringBuilder("Second-");
        sb.append(((Integer) this.f78433a).equals(Integer.MAX_VALUE) ? "infinite" : (Serializable) this.f78433a);
        return sb.toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        Matcher matcher = f78431c.matcher(str);
        if (!matcher.matches()) {
            v40.m("Can't parse timeout seconds integer from: ".concat(str));
        } else if (matcher.group(1) != null) {
            this.f78433a = Integer.valueOf(Integer.parseInt(matcher.group(1)));
        } else {
            this.f78433a = Integer.MAX_VALUE;
        }
    }

    public TimeoutHeader(int i2) {
        this.f78433a = Integer.valueOf(i2);
    }

    public TimeoutHeader(Integer num) {
        this.f78433a = num;
    }
}
