package com.perfectcorp.perfectlib.ph.utility;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.RingPosition;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements VtoSetting.Parameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectEffect f41735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41737c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41739f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f41740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f41741i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f41742j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f41743k;
    public final RingPosition l;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PerfectEffect f41744a;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f41747e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41748f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f41749h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f41750i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f41751j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f41752k;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41745b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41746c = "";
        public RingPosition l = RingPosition.RING_FINGER;

        public a(PerfectEffect perfectEffect, String str, String str2) {
            this.f41744a = perfectEffect;
            this.d = str;
            this.f41747e = str2;
        }

        public final void a(String str) {
            Objects.requireNonNull(str, "obbPath can't be null");
            this.f41748f = str;
        }
    }

    public b(a aVar) {
        PerfectEffect perfectEffect = aVar.f41744a;
        Objects.requireNonNull(perfectEffect, "perfectEffect can't be null");
        this.f41735a = perfectEffect;
        String str = aVar.f41745b;
        Objects.requireNonNull(str, "skuSetId can't be null");
        this.f41736b = str;
        String str2 = aVar.d;
        Objects.requireNonNull(str2, "productId can't be null");
        this.f41737c = str2;
        String str3 = aVar.f41747e;
        Objects.requireNonNull(str3, "skuGuid can't be null");
        this.d = str3;
        String str4 = aVar.f41748f;
        Objects.requireNonNull(str4, "obbPath can't be null");
        this.f41739f = str4;
        String str5 = aVar.f41746c;
        Objects.requireNonNull(str5, "lookId can't be null");
        this.f41738e = str5;
        this.g = aVar.g;
        this.f41740h = aVar.f41749h;
        this.f41741i = aVar.f41750i;
        this.f41742j = aVar.f41751j;
        this.f41743k = aVar.f41752k;
        this.l = aVar.l;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("HandParameter");
        toStringHelper.b("type", this.f41735a);
        toStringHelper.b("skuSetId", this.f41736b);
        toStringHelper.b("productId", this.f41737c);
        toStringHelper.b("skuGuid", this.d);
        toStringHelper.b("obbPath", this.f41739f);
        toStringHelper.b("objectDistanceRatio", Float.valueOf(this.g));
        toStringHelper.b("isRigidBody", Boolean.valueOf(this.f41740h));
        toStringHelper.b("objectDistanceRatioBack", Float.valueOf(this.f41741i));
        toStringHelper.b("objectDistanceRatioPalm", Float.valueOf(this.f41742j));
        toStringHelper.b("adaptiveRotate", Boolean.valueOf(this.f41743k));
        toStringHelper.b("ringPosition", this.l);
        return toStringHelper.toString();
    }
}
