package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotIntStateKt {
    public static final MutableIntState a(int i2) {
        return new ParcelableSnapshotMutableIntState(i2);
    }
}
