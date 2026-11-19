package com.perfectcorp.perfectlib.ph.template;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class p {
    public static final HashMap d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41704c;

    static {
        HashMap map = new HashMap();
        d = map;
        map.put("shape_lipstick_original", "Original Lips");
        map.put("pattern_lipshape_01", "Plump Lips");
        map.put("pattern_lipshape_02", "Smile Lips");
        map.put("pattern_lipshape_03", "Petal Lips");
        map.put("pattern_lipshape_04", "Vintage Lips");
        map.put("pattern_lipshape_05", "M-shaped Lips");
        map.put("pattern_lipshape_06", "Pouty Lips");
        map.put("pattern_lipshape_07", "Heart-shaped Lips");
    }

    public p(String str, String str2, String str3) {
        this.f41702a = str;
        this.f41703b = str2;
        this.f41704c = str3;
    }
}
