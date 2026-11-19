package defpackage;

import android.os.Bundle;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.fragment.app.FragmentResultListener;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j00 implements FragmentResultListener, ObserverHandle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function2 f71249b;

    public /* synthetic */ j00(Function2 function2) {
        this.f71249b = function2;
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void a(String str, Bundle bundle) {
        this.f71249b.invoke(str, bundle);
    }

    @Override // androidx.compose.runtime.snapshots.ObserverHandle
    public void dispose() {
        Function2 function2 = this.f71249b;
        synchronized (SnapshotKt.f8483c) {
            SnapshotKt.f8486h = CollectionsKt.S(SnapshotKt.f8486h, function2);
        }
    }
}
