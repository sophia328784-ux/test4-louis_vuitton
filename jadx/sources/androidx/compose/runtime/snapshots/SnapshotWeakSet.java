package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotWeakSet;", "", "T", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotWeakSet<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8519b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference[] f8520c = new WeakReference[16];
}
