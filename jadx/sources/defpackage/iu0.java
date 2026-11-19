package defpackage;

import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class iu0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScrollState f71204c;

    public /* synthetic */ iu0(ScrollState scrollState, int i2) {
        this.f71203b = i2;
        this.f71204c = scrollState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71203b;
        ScrollState scrollState = this.f71204c;
        switch (i2) {
            case 0:
                return Integer.valueOf(((SnapshotMutableIntStateImpl) scrollState.f4290a).f());
            case 1:
                return Boolean.valueOf(((SnapshotMutableIntStateImpl) scrollState.f4290a).f() < scrollState.g());
            case 2:
                return Boolean.valueOf(((SnapshotMutableIntStateImpl) scrollState.f4290a).f() > 0);
            default:
                return Boolean.valueOf(((SnapshotMutableIntStateImpl) scrollState.f4290a).f() == scrollState.g());
        }
    }
}
