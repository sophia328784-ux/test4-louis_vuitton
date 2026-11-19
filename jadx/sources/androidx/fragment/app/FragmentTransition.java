package androidx.fragment.app;

import android.view.View;
import androidx.collection.ArrayMap;
import androidx.transition.FragmentTransitionSupport;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/FragmentTransition;", "", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class FragmentTransition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FragmentTransitionImpl f13344a = new FragmentTransitionCompat21();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FragmentTransitionImpl f13345b;

    static {
        FragmentTransitionImpl fragmentTransitionImpl = null;
        try {
            fragmentTransitionImpl = (FragmentTransitionImpl) FragmentTransitionSupport.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f13345b = fragmentTransitionImpl;
    }

    public static final void a(Fragment fragment, Fragment fragment2, boolean z, ArrayMap arrayMap) {
        fragment.getClass();
        fragment2.getClass();
        arrayMap.getClass();
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList(arrayMap.size());
            Iterator it = arrayMap.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add((View) ((Map.Entry) it.next()).getValue());
            }
            ArrayList arrayList2 = new ArrayList(arrayMap.size());
            Iterator it2 = arrayMap.entrySet().iterator();
            while (it2.hasNext()) {
                arrayList2.add((String) ((Map.Entry) it2.next()).getKey());
            }
        }
    }

    public static final String b(ArrayMap arrayMap, String str) {
        str.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : arrayMap.entrySet()) {
            if (Intrinsics.c(entry.getValue(), str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Map.Entry) it.next()).getKey());
        }
        return (String) CollectionsKt.firstOrNull(arrayList);
    }

    public static final void c(int i2, ArrayList arrayList) {
        arrayList.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i2);
        }
    }
}
