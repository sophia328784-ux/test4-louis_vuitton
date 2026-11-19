package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "", "Companion", "iso31661Alpha2", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class RegionCode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67513b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f67514c = "AU";
    public static final String d = "AT";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f67515e = "BE";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f67516f = "BR";
    public static final String g = "CA";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f67517h = "CN";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f67518i = "DK";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f67519j = "FI";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f67520k = "FR";
    public static final String l = "DE";
    public static final String m = "HK";
    public static final String n = "E1";
    public static final String o = "IE";
    public static final String p = "IT";
    public static final String q = "JP";
    public static final String r = "LU";
    public static final String s = "MX";
    public static final String t = "MC";
    public static final String u = "NL";
    public static final String v = "RU";
    public static final String w = "SA";
    public static final String x = "SG";
    public static final String y = "KR";
    public static final String z = "ES";
    public static final String A = "SE";
    public static final String B = "TW";
    public static final String C = "TH";
    public static final String D = "AE";
    public static final String E = "GB";
    public static final String F = "US";
    public static final String G = "CH";
    public static final String H = "PL";
    public static final String I = "PH";
    public static final String J = "IN";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(String str) throws Throwable {
            Object failure;
            str.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                RegionCode.f67513b.getClass();
                if (!upperCase.equals(RegionCode.n) && !new Regex("^[A-Z]{2}$").f(upperCase)) {
                    throw new IllegalArgumentException("Invalid ISO 3166-1 alpha-2 format: ".concat(upperCase).toString());
                }
                failure = new Result(new RegionCode(upperCase));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            RegionCode regionCode = (RegionCode) obj;
            if (regionCode != null) {
                return regionCode.f67521a;
            }
            return null;
        }
    }

    public /* synthetic */ RegionCode(String str) {
        this.f67521a = str;
    }

    public static String a(String str) {
        return fc.h("RegionCode(iso31661Alpha2=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RegionCode) {
            return Intrinsics.c(this.f67521a, ((RegionCode) obj).f67521a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67521a.hashCode();
    }

    public final String toString() {
        return a(this.f67521a);
    }
}
