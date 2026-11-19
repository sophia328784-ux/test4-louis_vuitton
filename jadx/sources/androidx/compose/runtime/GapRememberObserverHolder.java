package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/GapRememberObserverHolder;", "Landroidx/compose/runtime/RememberObserverHolder;", "Landroidx/compose/runtime/RememberObserver;", "wrapped", "", "afterGroupIndex", "<init>", "(Landroidx/compose/runtime/RememberObserver;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class GapRememberObserverHolder implements RememberObserverHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RememberObserver f8001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8002b;

    public GapRememberObserverHolder(RememberObserver rememberObserver, int i2) {
        this.f8001a = rememberObserver;
        this.f8002b = i2;
    }

    @Override // androidx.compose.runtime.RememberObserverHolder
    /* JADX INFO: renamed from: a, reason: from getter */
    public final RememberObserver getF8001a() {
        return this.f8001a;
    }
}
