package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class PrimitiveSnapshotStateKt {
    public static final MutableFloatState a(float f2) {
        return new ParcelableSnapshotMutableFloatState(f2);
    }
}
