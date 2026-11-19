package androidx.compose.ui.platform;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "RetainedValuesStoreEntry", "FrameEndScheduler", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LifecycleRetainedValuesStoreOwner extends ViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntObjectMap f10116a = IntObjectMapKt.a();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface FrameEndScheduler {
        CancellationHandle a(Function0 function0);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RetainedValuesStoreEntry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LifecycleRetainedValuesStore f10117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LifecycleRetainedValuesStore f10118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f10119c;
        public CancellationHandle d;

        public RetainedValuesStoreEntry() {
            LifecycleRetainedValuesStore lifecycleRetainedValuesStore = new LifecycleRetainedValuesStore(null, 1, null);
            this.f10117a = lifecycleRetainedValuesStore;
            this.f10118b = lifecycleRetainedValuesStore;
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        MutableIntObjectMap mutableIntObjectMap = this.f10116a;
        int[] iArr = mutableIntObjectMap.f3259b;
        Object[] objArr = mutableIntObjectMap.f3260c;
        long[] jArr = mutableIntObjectMap.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        int i6 = iArr[i5];
                        MutableObjectList mutableObjectList = (MutableObjectList) objArr[i5];
                        Object[] objArr2 = mutableObjectList.f3345a;
                        int i7 = mutableObjectList.f3346b;
                        for (int i8 = 0; i8 < i7; i8++) {
                            RetainedValuesStoreEntry retainedValuesStoreEntry = (RetainedValuesStoreEntry) objArr2[i8];
                            CancellationHandle cancellationHandle = retainedValuesStoreEntry.d;
                            if (cancellationHandle != null) {
                                cancellationHandle.cancel();
                            }
                            retainedValuesStoreEntry.d = null;
                            ManagedRetainedValuesStore managedRetainedValuesStore = retainedValuesStoreEntry.f10117a.f10115a;
                            managedRetainedValuesStore.f8415b = true;
                            managedRetainedValuesStore.f8414a = false;
                            managedRetainedValuesStore.a();
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }
}
