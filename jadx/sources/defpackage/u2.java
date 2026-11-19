package defpackage;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u2 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f80210c;

    public /* synthetic */ u2(PagerState pagerState, int i2) {
        this.f80209b = i2;
        this.f80210c = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int iR;
        int iK;
        int i2 = this.f80209b;
        PagerState pagerState = this.f80210c;
        switch (i2) {
            case 0:
                iR = pagerState.r();
                break;
            case 1:
                iR = pagerState.r();
                break;
            case 2:
                iR = pagerState.k();
                break;
            case 3:
                iR = pagerState.k();
                break;
            case 4:
                iR = pagerState.k();
                break;
            case 5:
                iR = pagerState.k();
                break;
            case 6:
                iR = pagerState.r();
                break;
            case 7:
                iR = pagerState.k();
                break;
            case 8:
                iR = pagerState.o();
                break;
            case 9:
                iR = pagerState.o();
                break;
            case 10:
                return Integer.valueOf(pagerState.f5765k.a() ? ((SnapshotMutableIntStateImpl) pagerState.r).f() : pagerState.k());
            case 11:
                ScrollableState scrollableState = pagerState.f5765k;
                MutableIntState mutableIntState = pagerState.q;
                if (scrollableState.a()) {
                    SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) mutableIntState;
                    if (snapshotMutableIntStateImpl.f() != -1) {
                        iK = snapshotMutableIntStateImpl.f();
                    } else if (Math.abs(pagerState.l()) >= Math.abs(Math.min(pagerState.n.u1(PagerStateKt.f5784a), pagerState.p() / 2.0f) / pagerState.p())) {
                        boolean zM = pagerState.m();
                        int i3 = pagerState.f5760e;
                        iK = zM ? i3 + 1 : i3;
                    } else {
                        iK = pagerState.k();
                    }
                } else {
                    iK = pagerState.k();
                }
                iR = pagerState.j(iK);
                break;
            case 12:
                iR = pagerState.o();
                break;
            case 13:
                iR = pagerState.k();
                break;
            case 14:
                iR = pagerState.k();
                break;
            case 15:
                iR = pagerState.k();
                break;
            case 16:
                iR = pagerState.k();
                break;
            case 17:
                iR = pagerState.k();
                break;
            case 18:
                iR = pagerState.k();
                break;
            case 19:
                iR = pagerState.k();
                break;
            case 20:
                iR = pagerState.k();
                break;
            default:
                iR = pagerState.k();
                break;
        }
        return Integer.valueOf(iR);
    }
}
