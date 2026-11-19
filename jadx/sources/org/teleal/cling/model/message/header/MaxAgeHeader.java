package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class MaxAgeHeader extends UpnpHeader<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f78429c = Pattern.compile(".*max-age\\s*=\\s*([0-9]+).*");

    public MaxAgeHeader() {
        this.f78433a = 1800;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return "max-age=" + ((Integer) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        Matcher matcher = f78429c.matcher(str.toLowerCase());
        if (matcher.matches()) {
            this.f78433a = Integer.valueOf(Integer.parseInt(matcher.group(1)));
        } else {
            v40.m("Invalid cache-control value, can't parse max-age seconds: ".concat(str));
        }
    }

    public MaxAgeHeader(Integer num) {
        this.f78433a = num;
    }
}
