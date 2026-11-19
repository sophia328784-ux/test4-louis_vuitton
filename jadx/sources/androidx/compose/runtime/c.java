package androidx.compose.runtime;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Intrinsics.d(((Invalidation) obj).f8007b, ((Invalidation) obj2).f8007b);
    }
}
