package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import defpackage.j00;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"fragment-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class FragmentKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    public static final void a(Fragment fragment, String str, Bundle bundle) {
        FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
        FragmentManager.LifecycleAwareResultListener lifecycleAwareResultListener = (FragmentManager.LifecycleAwareResultListener) parentFragmentManager.n.get(str);
        if (lifecycleAwareResultListener != null) {
            if (lifecycleAwareResultListener.f13284b.getF13454i().a(Lifecycle.State.STARTED)) {
                lifecycleAwareResultListener.a(str, bundle);
            } else {
                parentFragmentManager.m.put(str, bundle);
            }
        } else {
            parentFragmentManager.m.put(str, bundle);
        }
        if (FragmentManager.O(2)) {
            Objects.toString(bundle);
        }
    }

    public static final void b(Fragment fragment, String str, Function2 function2) {
        fragment.getParentFragmentManager().j0(str, fragment, new j00(function2));
    }
}
