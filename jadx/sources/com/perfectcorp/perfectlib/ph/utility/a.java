package com.perfectcorp.perfectlib.ph.utility;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements VtoSetting.Parameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectEffect f41729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41731c;
    public final String d;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.utility.a$a, reason: collision with other inner class name */
    public static final class C0185a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PerfectEffect f41732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41734c;
        public String d;

        public C0185a(PerfectEffect perfectEffect, String str, String str2) {
            this.f41732a = perfectEffect;
            this.f41733b = str;
            this.f41734c = str2;
        }
    }

    public a(C0185a c0185a) {
        PerfectEffect perfectEffect = c0185a.f41732a;
        Objects.requireNonNull(perfectEffect, "perfectEffect can't be null");
        this.f41729a = perfectEffect;
        String str = c0185a.f41733b;
        Objects.requireNonNull(str, "productId can't be null");
        this.f41730b = str;
        String str2 = c0185a.f41734c;
        Objects.requireNonNull(str2, "skuGuid can't be null");
        this.f41731c = str2;
        String str3 = c0185a.d;
        Objects.requireNonNull(str3, "obbPath can't be null");
        this.d = str3;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("AccessoryParameter");
        toStringHelper.b("type", this.f41729a);
        toStringHelper.b("productId", this.f41730b);
        toStringHelper.b("skuGuid", this.f41731c);
        toStringHelper.b("obbPath", this.d);
        return toStringHelper.toString();
    }
}
