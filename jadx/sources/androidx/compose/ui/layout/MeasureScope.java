package androidx.compose.ui.layout;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import com.batch.android.q0.b;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@MeasureScopeMarker
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface MeasureScope extends IntrinsicMeasureScope {
    default MeasureResult B1(final int i2, final int i3, final Map map, final Function1 function1, final Function1 function2) {
        if ((i2 & b.v) != 0 || ((-16777216) & i3) != 0) {
            InlineClassHelperKt.c("Size(" + i2 + " x " + i3 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult(i2, i3, map, function1, this, function2) { // from class: androidx.compose.ui.layout.MeasureScope$layout$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f9530a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f9531b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Map f9532c;
            public final Function1 d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ int f9533e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ MeasureScope f9534f;
            public final /* synthetic */ Function1 g;

            {
                this.f9533e = i2;
                this.f9534f = this;
                this.g = function2;
                this.f9530a = i2;
                this.f9531b = i3;
                this.f9532c = map;
                this.d = function1;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight, reason: from getter */
            public final int getF9531b() {
                return this.f9531b;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth, reason: from getter */
            public final int getF9530a() {
                return this.f9530a;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: j, reason: from getter */
            public final Map getF9532c() {
                return this.f9532c;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
                MeasureScope measureScope = this.f9534f;
                boolean z = measureScope instanceof LookaheadCapablePlaceable;
                Function1 function3 = this.g;
                if (z) {
                    function3.invoke(((LookaheadCapablePlaceable) measureScope).m);
                    return;
                }
                function3.invoke(new SimplePlacementScope(this.f9533e, measureScope.getLayoutDirection(), measureScope.getDensity(), measureScope.s1()));
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: l, reason: from getter */
            public final Function1 getD() {
                return this.d;
            }
        };
    }

    default MeasureResult V0(int i2, int i3, Map map, Function1 function1) {
        return B1(i2, i3, map, null, function1);
    }
}
