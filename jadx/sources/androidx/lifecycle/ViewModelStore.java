package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/ViewModelStore;", "", "<init>", "()V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ViewModelStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13536a = new LinkedHashMap();

    public final void a() {
        LinkedHashMap linkedHashMap = this.f13536a;
        Map mapO = MapsKt.o(linkedHashMap);
        linkedHashMap.clear();
        Iterator it = mapO.values().iterator();
        while (it.hasNext()) {
            ((ViewModel) it.next()).clear$lifecycle_viewmodel();
        }
    }

    public final String toString() {
        String strB = Reflection.f71922a.b(getClass()).B();
        if (strB == null) {
            strB = "ViewModelStore";
        }
        String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
        string.getClass();
        return strB + "@" + string + "(keys=" + CollectionsKt.B0(this.f13536a.keySet()) + ")";
    }
}
