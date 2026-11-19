package com.perfectcorp.perfectlib.ph.camera;

import com.perfectcorp.perfectlib.NailPosition;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NailPosition f41116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final YMKPrimitiveData.MakeupColor f41117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f41118c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f41119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f41120f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f41121h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f41122i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f41123j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b f41124k;
    public final String l;
    public final YMKPrimitiveData.MakeupColor m;
    public final float n;

    public enum b {
        V14_PALETTE_ONLY_CASE("not part of template format; for handling v14 palette only case"),
        POLISH_IMAGE("PolishImage"),
        POLISH_COLOR("PolishColor"),
        TIP_SHAPE("TipShape"),
        TIP_IMAGE("TipImage");


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f41138f;

        b(String str) {
            this.f41138f = str;
        }

        public final boolean b() {
            int i2 = com.perfectcorp.perfectlib.ph.camera.b.f41139a[ordinal()];
            return i2 == 2 || i2 == 3;
        }
    }

    public a(C0133a c0133a) {
        b bVar;
        String str;
        this.f41116a = c0133a.f41125a;
        YMKPrimitiveData.MakeupColor makeupColor = c0133a.f41126b;
        this.f41117b = makeupColor;
        this.f41118c = c0133a.f41127c;
        this.d = c0133a.d;
        this.f41119e = c0133a.f41128e;
        this.f41120f = c0133a.f41129f;
        this.g = c0133a.g;
        this.f41121h = c0133a.f41130h;
        this.f41122i = c0133a.f41131i;
        this.f41123j = c0133a.f41132j;
        if (makeupColor == null) {
            String str2 = c0133a.f41133k;
            b[] bVarArrValues = b.values();
            int length = bVarArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    bVar = b.POLISH_IMAGE;
                    break;
                }
                b bVar2 = bVarArrValues[i2];
                if (bVar2.f41138f.equalsIgnoreCase(str2)) {
                    bVar = bVar2;
                    break;
                }
                i2++;
            }
        } else {
            bVar = b.V14_PALETTE_ONLY_CASE;
        }
        this.f41124k = bVar;
        int[] iArr = com.perfectcorp.perfectlib.ph.camera.b.f41139a;
        int i3 = iArr[bVar.ordinal()];
        if (i3 == 1 || i3 == 2 || i3 == 3) {
            str = c0133a.l;
            Objects.requireNonNull(str);
        } else {
            str = null;
        }
        this.l = str;
        int i4 = iArr[bVar.ordinal()];
        this.m = (i4 == 2 || i4 == 4) ? new YMKPrimitiveData.MakeupColor(TemplateUtils.v(c0133a.m)) : null;
        this.n = c0133a.n;
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.camera.a$a, reason: collision with other inner class name */
    public static final class C0133a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public NailPosition f41125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public YMKPrimitiveData.MakeupColor f41126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f41127c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f41128e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f41129f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f41130h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f41131i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f41132j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f41133k;
        public String l;
        public String m;
        public float n;

        public C0133a(a aVar) {
            this.n = 1.5f;
            this.f41125a = aVar.f41116a;
            this.f41126b = aVar.f41117b;
            this.f41127c = aVar.f41118c;
            this.d = aVar.d;
            this.f41128e = aVar.f41119e;
            this.f41129f = aVar.f41120f;
            this.g = aVar.g;
            this.f41130h = aVar.f41121h;
            this.f41131i = aVar.f41122i;
            this.f41132j = aVar.f41123j;
            this.f41133k = aVar.f41124k.f41138f;
            this.l = aVar.l;
            YMKPrimitiveData.MakeupColor makeupColor = aVar.m;
            this.m = makeupColor != null ? String.format(Locale.US, "%06x", Integer.valueOf(makeupColor.d & 16777215)) : null;
            this.n = aVar.n;
        }

        public C0133a() {
            this.n = 1.5f;
        }
    }
}
