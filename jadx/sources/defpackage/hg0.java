package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Transition f69701c;

    public /* synthetic */ hg0(Transition transition, int i2) {
        this.f69700b = i2;
        this.f69701c = transition;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69700b;
        Transition transition = this.f69701c;
        switch (i2) {
            case 0:
                return Boolean.valueOf(transition.h());
            case 1:
                return Long.valueOf(transition.b());
            default:
                return Boolean.valueOf(!Intrinsics.c(((SnapshotMutableStateImpl) transition.d).getF10755b(), transition.f3988a.a()) || transition.h() || ((Boolean) ((SnapshotMutableStateImpl) transition.f3993h).getF10755b()).booleanValue());
        }
    }
}
