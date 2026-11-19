package kotlin.comparisons;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f71832b;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null ? 0 : 1;
        }
        if (obj2 == null) {
            return -1;
        }
        return ((NaturalOrderComparator) this.f71832b).compare(obj, obj2);
    }
}
