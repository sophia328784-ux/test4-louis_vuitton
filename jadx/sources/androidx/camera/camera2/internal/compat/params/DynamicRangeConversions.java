package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public abstract class DynamicRangeConversions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f1711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f1712b;

    static {
        HashMap map = new HashMap();
        f1711a = map;
        HashMap map2 = new HashMap();
        f1712b = map2;
        DynamicRange dynamicRange = DynamicRange.d;
        map.put(1L, dynamicRange);
        map2.put(dynamicRange, Collections.singletonList(1L));
        map.put(2L, DynamicRange.f1914e);
        map2.put((DynamicRange) map.get(2L), Collections.singletonList(2L));
        DynamicRange dynamicRange2 = DynamicRange.f1915f;
        map.put(4L, dynamicRange2);
        map2.put(dynamicRange2, Collections.singletonList(4L));
        DynamicRange dynamicRange3 = DynamicRange.g;
        map.put(8L, dynamicRange3);
        map2.put(dynamicRange3, Collections.singletonList(8L));
        List listAsList = Arrays.asList(64L, 128L, 16L, 32L);
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            f1711a.put((Long) it.next(), DynamicRange.f1916h);
        }
        f1712b.put(DynamicRange.f1916h, listAsList);
        List listAsList2 = Arrays.asList(Long.valueOf(RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE), 2048L, 256L, 512L);
        Iterator it2 = listAsList2.iterator();
        while (it2.hasNext()) {
            f1711a.put((Long) it2.next(), DynamicRange.f1917i);
        }
        f1712b.put(DynamicRange.f1917i, listAsList2);
    }

    public static Long a(DynamicRange dynamicRange, DynamicRangeProfiles dynamicRangeProfiles) {
        List<Long> list = (List) f1712b.get(dynamicRange);
        if (list == null) {
            return null;
        }
        Set<Long> supportedProfiles = dynamicRangeProfiles.getSupportedProfiles();
        for (Long l : list) {
            if (supportedProfiles.contains(l)) {
                return l;
            }
        }
        return null;
    }
}
