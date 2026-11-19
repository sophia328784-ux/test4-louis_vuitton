package androidx.camera.video.internal.utils;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.EncoderProfilesProxy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class DynamicRangeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f3103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f3104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f3105c;
    public static final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f3106e;

    static {
        HashMap map = new HashMap();
        f3103a = map;
        HashMap map2 = new HashMap();
        f3104b = map2;
        HashMap map3 = new HashMap();
        f3105c = map3;
        HashMap map4 = new HashMap();
        d = map4;
        HashMap map5 = new HashMap();
        f3106e = map5;
        map.put(8, new HashSet(Collections.singletonList(8)));
        map.put(10, new HashSet(Collections.singletonList(10)));
        map.put(0, new HashSet(Arrays.asList(8, 10)));
        map2.put(0, new HashSet(Arrays.asList(0, 1, 2, 3, 4)));
        map2.put(1, new HashSet(Collections.singletonList(0)));
        map2.put(2, new HashSet(Arrays.asList(1, 2, 3, 4)));
        map2.put(3, new HashSet(Collections.singletonList(1)));
        map2.put(4, new HashSet(Collections.singletonList(2)));
        map2.put(5, new HashSet(Collections.singletonList(3)));
        map2.put(6, new HashSet(Collections.singletonList(4)));
        map3.put(8, 8);
        map3.put(10, 10);
        map4.put(0, 1);
        map4.put(1, 3);
        map4.put(2, 4);
        map4.put(3, 5);
        map4.put(4, 6);
        HashMap map6 = new HashMap();
        DynamicRange dynamicRange = DynamicRange.d;
        map6.put(dynamicRange, 1);
        DynamicRange dynamicRange2 = DynamicRange.f1914e;
        map6.put(dynamicRange2, 2);
        DynamicRange dynamicRange3 = DynamicRange.f1915f;
        map6.put(dynamicRange3, 4096);
        DynamicRange dynamicRange4 = DynamicRange.g;
        map6.put(dynamicRange4, 8192);
        HashMap map7 = new HashMap();
        map7.put(dynamicRange, 1);
        map7.put(dynamicRange2, 2);
        map7.put(dynamicRange3, 4096);
        map7.put(dynamicRange4, 8192);
        HashMap map8 = new HashMap();
        map8.put(dynamicRange, 1);
        map8.put(dynamicRange2, 4);
        map8.put(dynamicRange3, 4096);
        map8.put(dynamicRange4, 16384);
        HashMap map9 = new HashMap();
        map9.put(DynamicRange.f1916h, 256);
        map9.put(DynamicRange.f1917i, 512);
        map5.put("video/hevc", map6);
        map5.put("video/av01", map7);
        map5.put("video/x-vnd.on2.vp9", map8);
        map5.put("video/dolby-vision", map9);
    }

    public static boolean a(EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, DynamicRange dynamicRange) {
        int iB = videoProfileProxy.b();
        Set set = (Set) f3103a.get(Integer.valueOf(dynamicRange.f1919b));
        if (set == null || !set.contains(Integer.valueOf(iB))) {
            return false;
        }
        int iG = videoProfileProxy.g();
        Set set2 = (Set) f3104b.get(Integer.valueOf(dynamicRange.f1918a));
        return set2 != null && set2.contains(Integer.valueOf(iG));
    }
}
