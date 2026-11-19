package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSettingCtrl {
    public int o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableInteger f40742a = new MutableInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableInteger f40743b = new MutableInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableInteger f40744c = new MutableInteger();
    public final EnumSet d = EnumSet.noneOf(BeautyMode.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EnumMap f40745e = new EnumMap(BeautyMode.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EnumMap f40746f = new EnumMap(BeautyMode.class);
    public final EnumMap g = new EnumMap(BeautyMode.class);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EnumMap f40747h = new EnumMap(BeautyMode.class);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EnumMap f40748i = new EnumMap(BeautyMode.class);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f40749j = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConcurrentHashMap f40750k = new ConcurrentHashMap();
    public final ConcurrentHashMap l = new ConcurrentHashMap();
    public final ConcurrentHashMap m = new ConcurrentHashMap();
    public volatile LiveParameters.Eyebrow.Setting n = LiveParameters.Eyebrow.Setting.n;
    public final EnumMap p = new EnumMap(BeautyMode.class);
    public final EnumMap q = new EnumMap(BeautyMode.class);

    public static int c(BeautyMode beautyMode) {
        switch (m.f40914a[beautyMode.ordinal()]) {
            case 1:
                return 25;
            case 2:
                return 75;
            case 3:
                return 40;
            case 4:
                return YMKPrimitiveData.EyebrowMode.ORIGINAL.a();
            case 5:
            case 6:
                return 0;
            case 7:
                return 45;
            default:
                return 50;
        }
    }

    public final void a(BeautyMode beautyMode) {
        synchronized (this.d) {
            this.d.remove(beautyMode);
        }
    }

    public final void b(BeautyMode beautyMode) {
        synchronized (this.d) {
            this.d.add(beautyMode);
        }
    }

    public final EnumSet d() {
        EnumSet enumSetCopyOf;
        synchronized (this.d) {
            enumSetCopyOf = EnumSet.copyOf((Collection) this.d);
        }
        return enumSetCopyOf;
    }

    public final List e(BeautyMode beautyMode) {
        return (List) this.f40747h.get(beautyMode);
    }

    public final List f(String str) {
        return (List) this.f40750k.get(str);
    }

    public final List g(String str) {
        return (List) this.m.get(str);
    }

    public final String h(BeautyMode beautyMode) {
        return (String) this.f40746f.get(beautyMode);
    }

    public final YMKPrimitiveData.Pattern i(String str) {
        return (YMKPrimitiveData.Pattern) this.f40749j.get(str);
    }

    public final String j(BeautyMode beautyMode) {
        return (String) this.f40745e.get(beautyMode);
    }

    public final int k(BeautyMode beautyMode) {
        EnumMap enumMap = this.f40748i;
        if (enumMap.containsKey(beautyMode)) {
            return ((Integer) enumMap.get(beautyMode)).intValue();
        }
        return -1000;
    }

    public final String l(BeautyMode beautyMode) {
        return (String) this.p.get(beautyMode);
    }

    public final String m(BeautyMode beautyMode) {
        return (String) this.q.get(beautyMode);
    }

    public final String n(BeautyMode beautyMode) {
        return (String) this.g.get(beautyMode);
    }

    public final boolean o(BeautyMode beautyMode) {
        boolean zContains;
        synchronized (this.d) {
            zContains = this.d.contains(beautyMode);
        }
        return zContains;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    public final boolean p(BeautyMode beautyMode, ItemSubType itemSubType) {
        synchronized (this.d) {
            try {
                boolean z = false;
                if (this.d.contains(beautyMode)) {
                    if (beautyMode != BeautyMode.FACE_CONTOUR) {
                        return true;
                    }
                    Object obj = this.l.get(beautyMode);
                    if (obj instanceof FaceContourPayload) {
                        FaceContourPayload.Setting setting = ((FaceContourPayload) obj).f40632a;
                        FaceContourPayload.Setting setting2 = ((FaceContourPayload) obj).f40633b;
                        if (setting != null && setting.f40644h == itemSubType) {
                            z = true;
                        } else if (setting2 != null && setting2.f40644h == itemSubType) {
                            z = true;
                        }
                    }
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
