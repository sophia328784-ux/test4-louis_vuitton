package defpackage;

import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w70 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SwipeAction f80781c;

    public /* synthetic */ w70(SwipeAction swipeAction, int i2) {
        this.f80780b = i2;
        this.f80781c = swipeAction;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80780b;
        SwipeAction swipeAction = this.f80781c;
        switch (i2) {
            case 0:
                float f2 = LVSwipeToRevealKt.f48255a;
                swipeAction.d.mo47invoke();
                return Unit.f71739a;
            default:
                float f3 = LVSwipeToRevealKt.f48255a;
                swipeAction.d.mo47invoke();
                return Boolean.TRUE;
        }
    }
}
