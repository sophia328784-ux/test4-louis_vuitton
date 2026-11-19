package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.serialization.RouteDecoder;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-common_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavBackStackEntryKt {
    public static final Object a(NavBackStackEntry navBackStackEntry, KClass kClass) {
        navBackStackEntry.getClass();
        kClass.getClass();
        Bundle bundleA = navBackStackEntry.f18117i.a();
        if (bundleA == null) {
            MapsKt.c();
            bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        Map mapH = navBackStackEntry.f18113c.h();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(mapH.size()));
        for (Map.Entry entry : mapH.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).f18102a);
        }
        return SerializersKt.b(kClass).b(new RouteDecoder(bundleA, linkedHashMap));
    }
}
