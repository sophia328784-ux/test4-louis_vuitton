package androidx.collection;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class IntSetKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f3266a;

    static {
        new MutableIntSet(0);
        f3266a = new int[0];
    }

    public static final MutableIntSet a() {
        return new MutableIntSet(0, 1, null);
    }
}
