package com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.HairDyePayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveParameters;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public h d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f41360e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f41358b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g f41357a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f41359c = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f41361f = null;
    public c g = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o f41363i = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k f41362h = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i f41364j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public i f41365k = null;
    public l p = null;
    public l o = null;
    public b q = null;
    public int l = 0;
    public m m = null;
    public n n = null;
    public ArrayList r = null;
    public LiveSettingCtrl s = null;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$a, reason: collision with other inner class name */
    public static class C0159a extends l {
        public C0159a(Sku sku, String str, String str2) {
            super(sku, str, str2, "", "", "", Collections.EMPTY_LIST, 0);
        }
    }

    public static final class d extends C0159a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final EarringsPayload f41373i;

        public d(Sku sku, String str, EarringsPayload earringsPayload) {
            super(sku, str, "");
            this.f41373i = earringsPayload;
        }
    }

    public static final class h extends C0159a {
        public h(Sku sku, String str, String str2) {
            super(sku, str, str2);
        }
    }

    public static final class i extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f41381i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f41382j;

        public i(Sku sku, String str, String str2, String str3, List<YMKPrimitiveData.MakeupColor> list, int i2, int i3, int i4, int i5) {
            super(sku, str, str2, str3, "", list, i2);
            this.f41382j = -1;
            this.f41381i = i5;
        }
    }

    public static class j extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41383i = new ArrayList();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final HashMap f41384j = new HashMap();
    }

    public static final class p {
        public p(int i2, int i3, int i4, int i5) {
        }
    }

    public final void a(ArrayList arrayList) {
        if (this.r == null) {
            this.r = new ArrayList();
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            BeautyMode beautyMode = (BeautyMode) it.next();
            if (beautyMode.isReshape()) {
                this.r.add(beautyMode);
            }
        }
    }

    public static final class o extends l {
        public o(o oVar) {
            super(oVar);
            oVar.getClass();
        }

        public final List e() {
            if (this.f41389f.isEmpty()) {
                return null;
            }
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVarD = ApplyEffectUtility.D(this.f41389f);
            ArrayList arrayList = new ArrayList();
            Iterator<com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a> it = kVarD.colorReferences.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().paletteGuid);
            }
            return arrayList;
        }

        public final ArrayList f() {
            if (this.f41389f.isEmpty()) {
                return null;
            }
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVarD = ApplyEffectUtility.D(this.f41389f);
            ArrayList arrayList = new ArrayList();
            Iterator<com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a> it = kVarD.colorReferences.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().skuGuid);
            }
            return arrayList;
        }

        public o(Sku sku, String str, String str2, String str3, String str4, Iterable<YMKPrimitiveData.MakeupColor> iterable, int i2, int i3, p pVar, int i4) {
            super(sku, str, str2, str3, str4, iterable, i2);
        }
    }

    public static class k extends l {
        public k(Sku sku, String str, String str2, Iterable<YMKPrimitiveData.MakeupColor> iterable, int i2) {
            super(sku, "", str, str2, null, iterable, i2);
        }

        public k(k kVar) {
            super(kVar);
        }
    }

    public static class f extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f41374i;

        public f(Sku sku, String str, String str2, String str3, List<YMKPrimitiveData.MakeupColor> list, int i2, int i3) {
            super(sku, str, str2, str3, null, list, i2);
            this.f41374i = i3;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String toString() {
            StringBuilder sbU = n00.u(super.toString(), ", getSizeStrength=");
            sbU.append(this.f41374i);
            return sbU.toString();
        }

        public f(f fVar) {
            super(fVar);
            this.f41374i = fVar == null ? 0 : fVar.f41374i;
        }
    }

    public static class b extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final BackgroundPayload f41366i;

        public b(b bVar) {
            super(bVar.d(), bVar.f41366i.b().f40583a, null, null, null, null, Collections.singletonList(null), 0);
            this.f41366i = bVar.f41366i;
        }

        public b(Sku sku, BackgroundPayload backgroundPayload) {
            super(sku, backgroundPayload.b().f40583a, null, null, null, null, Collections.singletonList(null), 0);
            this.f41366i = backgroundPayload;
        }
    }

    public static final class c extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41367i;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$c$a, reason: collision with other inner class name */
        public static class C0160a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f41368a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f41369b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f41370c;
            public final int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final int f41371e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final ArrayList f41372f = new ArrayList();

            public C0160a(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
                this.f41368a = str;
                this.f41369b = str2;
                this.f41370c = str3;
                this.d = i2;
                this.f41371e = i3;
                Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
                while (it.hasNext()) {
                    this.f41372f.add(new YMKPrimitiveData.MakeupColor(it.next()));
                }
            }

            public final String toString() {
                StringBuilder sbU = n00.u("patternId=" + this.f41368a, ", paletteId=");
                sbU.append(this.f41369b);
                StringBuilder sbU2 = n00.u(sbU.toString(), ", paletteColorIndex=");
                sbU2.append(this.d);
                StringBuilder sbU3 = n00.u(sbU2.toString(), ", patternMaskIndex=");
                sbU3.append(this.f41371e);
                StringBuilder sbU4 = n00.u(sbU3.toString(), ", colors=");
                sbU4.append(this.f41372f);
                return sbU4.toString();
            }
        }

        public c(Sku sku, List<C0160a> list) {
            super(sku);
            ArrayList arrayList = new ArrayList();
            this.f41367i = arrayList;
            arrayList.clear();
            for (C0160a c0160a : list) {
                arrayList.add(new C0160a(c0160a.f41368a, c0160a.f41369b, c0160a.f41370c, c0160a.d, c0160a.f41371e, c0160a.f41372f));
            }
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String a() {
            ArrayList arrayList = this.f41367i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0160a) arrayList.get(0)).f41368a;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String b() {
            ArrayList arrayList = this.f41367i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0160a) arrayList.get(0)).f41369b;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final List c() {
            ArrayList arrayList = new ArrayList();
            for (C0160a c0160a : this.f41367i) {
                int i2 = c0160a.d;
                ArrayList arrayList2 = c0160a.f41372f;
                if (i2 < arrayList2.size()) {
                    arrayList.add((YMKPrimitiveData.MakeupColor) arrayList2.get(c0160a.d));
                }
            }
            return arrayList;
        }

        public final boolean e() {
            LoadingCache loadingCacheA = CacheBuilder.b().a(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.b());
            for (C0160a c0160a : this.f41367i) {
                String str = c0160a.f41369b;
                ArrayList arrayList = c0160a.f41372f;
                int i2 = c0160a.d;
                List list = (List) loadingCacheA.a(str);
                if (i2 >= list.size() || !((YMKPrimitiveData.MakeupColor) list.get(i2)).equals(Collections.unmodifiableList(arrayList).get(i2)) || ((YMKPrimitiveData.MakeupColor) list.get(i2)).g.f40795c != ((YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(arrayList).get(i2)).g.f40795c) {
                    loadingCacheA.b();
                    return true;
                }
            }
            loadingCacheA.b();
            return false;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String toString() {
            StringBuilder sb = new StringBuilder("Sku guid=");
            sb.append(d() == null ? "NULL metadata" : d().f41266f);
            StringBuilder sbU = n00.u(sb.toString(), ", getColorUnits=");
            sbU.append(Collections.unmodifiableList(this.f41367i));
            return sbU.toString();
        }

        public c(c cVar) {
            this(cVar == null ? null : cVar.d(), cVar == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(cVar.f41367i));
        }
    }

    public static class n extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41394i;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$n$a, reason: collision with other inner class name */
        public static class C0162a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f41395a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f41396b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f41397c;
            public final int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final int f41398e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final ArrayList f41399f = new ArrayList();

            public C0162a(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
                this.f41395a = str;
                this.f41396b = str2;
                this.f41397c = str3;
                this.d = i2;
                this.f41398e = i3;
                Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
                while (it.hasNext()) {
                    this.f41399f.add(new YMKPrimitiveData.MakeupColor(it.next()));
                }
            }

            public final String toString() {
                StringBuilder sbU = n00.u("patternId=" + this.f41395a, ", paletteId=");
                sbU.append(this.f41396b);
                StringBuilder sbU2 = n00.u(sbU.toString(), ", paletteColorIndex=");
                sbU2.append(this.d);
                StringBuilder sbU3 = n00.u(sbU2.toString(), ", patternMaskIndex=");
                sbU3.append(this.f41398e);
                StringBuilder sbU4 = n00.u(sbU3.toString(), ", colors=");
                sbU4.append(this.f41399f);
                return sbU4.toString();
            }
        }

        public n(Sku sku, List<C0162a> list) {
            super(sku);
            ArrayList arrayList = new ArrayList();
            this.f41394i = arrayList;
            arrayList.clear();
            for (C0162a c0162a : list) {
                arrayList.add(new C0162a(c0162a.f41395a, c0162a.f41396b, c0162a.f41397c, c0162a.d, c0162a.f41398e, c0162a.f41399f));
            }
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String a() {
            ArrayList arrayList = this.f41394i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0162a) arrayList.get(0)).f41395a;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String b() {
            ArrayList arrayList = this.f41394i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0162a) arrayList.get(0)).f41396b;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final List c() {
            ArrayList arrayList = new ArrayList();
            for (C0162a c0162a : this.f41394i) {
                int i2 = c0162a.d;
                ArrayList arrayList2 = c0162a.f41399f;
                if (i2 < arrayList2.size()) {
                    arrayList.add((YMKPrimitiveData.MakeupColor) arrayList2.get(c0162a.d));
                }
            }
            return arrayList;
        }

        public final boolean e() {
            LoadingCache loadingCacheA = CacheBuilder.b().a(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.d());
            for (C0162a c0162a : this.f41394i) {
                String str = c0162a.f41396b;
                ArrayList arrayList = c0162a.f41399f;
                int i2 = c0162a.d;
                List list = (List) loadingCacheA.a(str);
                if (i2 >= list.size() || !((YMKPrimitiveData.MakeupColor) list.get(i2)).equals(Collections.unmodifiableList(arrayList).get(i2)) || ((YMKPrimitiveData.MakeupColor) list.get(i2)).g.f40795c != ((YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(arrayList).get(i2)).g.f40795c) {
                    loadingCacheA.b();
                    return true;
                }
            }
            loadingCacheA.b();
            return false;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String toString() {
            StringBuilder sb = new StringBuilder("Sku guid=");
            sb.append(d() == null ? "NULL metadata" : d().f41266f);
            StringBuilder sbU = n00.u(sb.toString(), ", getColorUnits=");
            sbU.append(Collections.unmodifiableList(this.f41394i));
            return sbU.toString();
        }

        public n(n nVar) {
            this(nVar == null ? null : nVar.d(), nVar == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(nVar.f41394i));
        }
    }

    public static final class g extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41375i;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$g$a, reason: collision with other inner class name */
        public static class C0161a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f41376a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f41377b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f41378c;
            public final int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final int f41379e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final ArrayList f41380f = new ArrayList();

            public C0161a(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
                this.f41376a = str;
                this.f41377b = str2;
                this.f41378c = str3;
                this.d = i2;
                this.f41379e = i3;
                Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
                while (it.hasNext()) {
                    this.f41380f.add(new YMKPrimitiveData.MakeupColor(it.next()));
                }
            }

            public final String toString() {
                StringBuilder sbU = n00.u("patternId=" + this.f41376a, ", paletteId=");
                sbU.append(this.f41377b);
                StringBuilder sbU2 = n00.u(sbU.toString(), ", paletteColorIndex=");
                sbU2.append(this.d);
                StringBuilder sbU3 = n00.u(sbU2.toString(), ", patternMaskIndex=");
                sbU3.append(this.f41379e);
                StringBuilder sbU4 = n00.u(sbU3.toString(), ", colors=");
                sbU4.append(this.f41380f);
                return sbU4.toString();
            }
        }

        public g(Sku sku, List<C0161a> list, String str) {
            super(sku);
            ArrayList arrayList = new ArrayList();
            this.f41375i = arrayList;
            this.f41389f = str;
            arrayList.clear();
            for (C0161a c0161a : list) {
                arrayList.add(new C0161a(c0161a.f41376a, c0161a.f41377b, c0161a.f41378c, c0161a.d, c0161a.f41379e, c0161a.f41380f));
            }
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String a() {
            ArrayList arrayList = this.f41375i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0161a) arrayList.get(0)).f41376a;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String b() {
            ArrayList arrayList = this.f41375i;
            if (arrayList.isEmpty()) {
                return null;
            }
            return ((C0161a) arrayList.get(0)).f41377b;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final List c() {
            ArrayList arrayList = new ArrayList();
            for (C0161a c0161a : this.f41375i) {
                int i2 = c0161a.d;
                ArrayList arrayList2 = c0161a.f41380f;
                if (i2 < arrayList2.size()) {
                    arrayList.add((YMKPrimitiveData.MakeupColor) arrayList2.get(c0161a.d));
                }
            }
            return arrayList;
        }

        public final boolean e() {
            LoadingCache loadingCacheA = CacheBuilder.b().a(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.c());
            for (C0161a c0161a : this.f41375i) {
                String str = c0161a.f41377b;
                ArrayList arrayList = c0161a.f41380f;
                int i2 = c0161a.d;
                List list = (List) loadingCacheA.a(str);
                if (i2 >= list.size() || !((YMKPrimitiveData.MakeupColor) list.get(i2)).equals(Collections.unmodifiableList(arrayList).get(i2)) || ((YMKPrimitiveData.MakeupColor) list.get(i2)).g.f40795c != ((YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(arrayList).get(i2)).g.f40795c) {
                    loadingCacheA.b();
                    return true;
                }
            }
            loadingCacheA.b();
            return false;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l
        public final String toString() {
            StringBuilder sb = new StringBuilder("Sku guid=");
            sb.append(d() == null ? "NULL metadata" : d().f41266f);
            StringBuilder sbU = n00.u(sb.toString(), ", getColorUnits=");
            sbU.append(Collections.unmodifiableList(this.f41375i));
            return sbU.toString();
        }

        public g(g gVar) {
            this(gVar == null ? null : gVar.d(), gVar == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(gVar.f41375i), gVar != null ? gVar.f41389f : null);
        }
    }

    public static class e extends l {
        public e(e eVar) {
            super(eVar == null ? null : eVar.d(), eVar == null ? null : eVar.f41387c, eVar == null ? null : eVar.d, eVar == null ? null : eVar.f41389f, eVar != null ? eVar.f41388e : null, eVar == null ? Collections.EMPTY_LIST : eVar.g, eVar == null ? 0 : eVar.f41390h);
        }

        public e(Sku sku, String str, String str2, String str3, Iterable<YMKPrimitiveData.MakeupColor> iterable, int i2, LiveParameters.Eyebrow.Setting setting) {
            super(sku, str, str2, str3, null, iterable, i2);
            int i3 = setting.f40735c;
        }
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f41385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41387c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f41388e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41389f;
        public final ArrayList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f41390h;

        public l(l lVar) {
            this.g = new ArrayList();
            this.f41385a = lVar == null ? Collections.EMPTY_LIST : lVar.f41385a;
            this.f41387c = lVar == null ? null : lVar.a();
            this.d = lVar == null ? null : lVar.b();
            this.f41389f = lVar == null ? null : lVar.f41389f;
            this.f41388e = lVar == null ? null : lVar.f41388e;
            this.f41390h = lVar == null ? 0 : lVar.f41390h;
            this.f41389f = lVar != null ? lVar.f41389f : null;
            if (lVar != null) {
                Iterator it = lVar.g.iterator();
                while (it.hasNext()) {
                    this.g.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) it.next()));
                }
            }
        }

        public String a() {
            return this.f41387c;
        }

        public String b() {
            return this.d;
        }

        public List c() {
            return this.g;
        }

        public final Sku d() {
            List list = this.f41385a;
            if (MoreCollections.a(list)) {
                return null;
            }
            return (Sku) list.get(0);
        }

        public String toString() {
            StringBuilder sbU = n00.u("Skus=" + this.f41385a, ", getStyleID=");
            sbU.append(this.f41388e);
            StringBuilder sbU2 = n00.u(sbU.toString(), ", getPatternID=");
            sbU2.append(a());
            StringBuilder sbU3 = n00.u(sbU2.toString(), ", getPaletteID=");
            sbU3.append(b());
            StringBuilder sbU4 = n00.u(sbU3.toString(), ", getStrength=");
            sbU4.append(this.f41390h);
            StringBuilder sbU5 = n00.u(sbU4.toString(), ", getColors=");
            sbU5.append(c());
            return sbU5.toString();
        }

        public l(Sku sku) {
            List listSingletonList = Collections.singletonList(sku);
            this.g = new ArrayList();
            this.f41385a = Collections.unmodifiableList(new ArrayList(listSingletonList));
        }

        public l(Sku sku, String str, String str2, String str3, String str4, Iterable<YMKPrimitiveData.MakeupColor> iterable, int i2) {
            this(sku);
            this.f41387c = str;
            this.d = str2;
            this.f41388e = str4;
            this.f41390h = i2;
            this.f41389f = str3;
            Iterator<YMKPrimitiveData.MakeupColor> it = iterable.iterator();
            while (it.hasNext()) {
                this.g.add(new YMKPrimitiveData.MakeupColor(it.next()));
            }
        }

        public l(Sku sku, String str, String str2, String str3, String str4, String str5, Iterable<YMKPrimitiveData.MakeupColor> iterable, int i2) {
            this(sku);
            this.f41386b = str;
            this.f41387c = str2;
            this.d = str3;
            this.f41388e = str5;
            this.f41390h = i2;
            this.f41389f = str4;
            Iterator<YMKPrimitiveData.MakeupColor> it = iterable.iterator();
            while (it.hasNext()) {
                this.g.add(new YMKPrimitiveData.MakeupColor(it.next()));
            }
        }

        public l() {
            this.g = new ArrayList();
            this.f41385a = Collections.singletonList(Sku.q);
        }
    }

    public static class m extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41391i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ArrayList f41392j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f41393k;
        public final boolean l;

        public m(l lVar, HairDyePayload hairDyePayload) {
            super(lVar);
            this.f41391i = new ArrayList();
            this.f41392j = new ArrayList();
            this.f41393k = new ArrayList();
            List<HairDyePayload.Color> listUnmodifiableList = Collections.unmodifiableList(hairDyePayload.f40667a);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (HairDyePayload.Color color : listUnmodifiableList) {
                arrayList.add(color.f40675a);
                arrayList2.add(Integer.valueOf(color.f40676b));
                arrayList3.add(Integer.valueOf(color.f40677c));
            }
            this.f41391i.clear();
            this.f41391i.addAll(arrayList);
            this.f41392j.clear();
            this.f41392j.addAll(arrayList3);
            this.f41393k.clear();
            this.f41393k.addAll(arrayList2);
            hairDyePayload.b();
            hairDyePayload.c();
            this.l = hairDyePayload.d;
        }

        public m(l lVar) {
            super(lVar);
            this.f41391i = new ArrayList();
            this.f41392j = new ArrayList();
            this.f41393k = new ArrayList();
        }
    }
}
