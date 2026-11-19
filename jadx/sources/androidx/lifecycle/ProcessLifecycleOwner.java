package androidx.lifecycle;

import android.os.Handler;
import defpackage.hn0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleOwner;", "Landroidx/lifecycle/LifecycleOwner;", "Companion", "lifecycle-process"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProcessLifecycleOwner implements LifecycleOwner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f13468i = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ProcessLifecycleOwner f13469j = new ProcessLifecycleOwner();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13471c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Handler f13473f;
    public boolean d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13472e = true;
    public final LifecycleRegistry g = new LifecycleRegistry(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final hn0 f13474h = new hn0(this, 9);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleOwner$Companion;", "", "Landroidx/lifecycle/ProcessLifecycleOwner;", "newInstance", "Landroidx/lifecycle/ProcessLifecycleOwner;", "lifecycle-process"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getF13561b() {
        return this.g;
    }
}
