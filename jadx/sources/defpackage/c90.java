package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.navigation.NavArgument;
import androidx.navigation.NavDestination;
import androidx.navigation.serialization.RouteSerializerKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21099c;

    public /* synthetic */ c90(Object obj, int i2) {
        this.f21098b = i2;
        this.f21099c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f21098b;
        Object obj2 = this.f21099c;
        switch (i2) {
            case 0:
                ((Integer) obj).intValue();
                n50 n50Var = LazyGridIntervalContent.d;
                return obj2;
            case 1:
                ((Integer) obj).intValue();
                return obj2;
            default:
                NavDestination navDestination = (NavDestination) obj;
                navDestination.getClass();
                Map mapH = navDestination.h();
                LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(mapH.size()));
                for (Map.Entry entry : mapH.entrySet()) {
                    linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).f18102a);
                }
                return RouteSerializerKt.d(obj2, linkedHashMap);
        }
    }
}
