package com.google.android.datatransport.cct;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedDestination;
import defpackage.fc;
import defpackage.md;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class CCTDestination implements EncodedDestination {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f27793c;
    public static final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CCTDestination f27794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CCTDestination f27795f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27797b;

    static {
        String strA = StringMerger.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f27793c = strA;
        String strA2 = StringMerger.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strA3 = StringMerger.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new Encoding("proto"), new Encoding("json"))));
        f27794e = new CCTDestination(strA, null);
        f27795f = new CCTDestination(strA2, strA3);
    }

    public CCTDestination(String str, String str2) {
        this.f27796a = str;
        this.f27797b = str2;
    }

    public static CCTDestination b(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            md.n("Version marker missing from extras");
            return null;
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            md.n("Extra is not a valid encoded LegacyFlgDestination");
            return null;
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            md.n("Missing endpoint in CCTDestination extras");
            return null;
        }
        String str3 = strArrSplit[1];
        return new CCTDestination(str2, str3.isEmpty() ? null : str3);
    }

    @Override // com.google.android.datatransport.runtime.EncodedDestination
    public final Set a() {
        return d;
    }

    @Override // com.google.android.datatransport.runtime.Destination
    public final byte[] getExtras() {
        String str = this.f27796a;
        String str2 = this.f27797b;
        if (str2 == null && str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        return fc.i("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
    }
}
