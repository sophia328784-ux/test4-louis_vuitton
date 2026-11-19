package androidx.navigation.fragment;

import androidx.lifecycle.Observer;
import defpackage.jx;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class FragmentNavigator$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ jx f18310b;

    public FragmentNavigator$sam$androidx_lifecycle_Observer$0(jx jxVar) {
        this.f18310b = jxVar;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f18310b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f18310b;
    }

    public final int hashCode() {
        return this.f18310b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.f18310b.invoke(obj);
    }
}
