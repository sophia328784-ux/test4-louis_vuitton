package androidx.compose.foundation.text;

import androidx.compose.runtime.State;
import defpackage.o60;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HeightInLinesNode f6160c;

    public /* synthetic */ e(HeightInLinesNode heightInLinesNode, int i2) {
        this.f6159b = i2;
        this.f6160c = heightInLinesNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f6159b;
        HeightInLinesNode heightInLinesNode = this.f6160c;
        switch (i2) {
            case 0:
                State state = heightInLinesNode.w;
                if (state == null) {
                    throw o60.u("Font resolution state is not set.");
                }
                state.getF10755b();
                return Unit.f71739a;
            default:
                State state2 = heightInLinesNode.w;
                if (state2 == null) {
                    throw o60.u("Font resolution state is not set.");
                }
                state2.getF10755b();
                return Unit.f71739a;
        }
    }
}
