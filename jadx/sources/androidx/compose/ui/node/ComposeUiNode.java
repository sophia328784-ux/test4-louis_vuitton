package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\ba\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/ComposeUiNode;", "", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ComposeUiNode {
    public static final Companion b0 = Companion.f9640a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/ComposeUiNode$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f9640a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Function0 f9641b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Function0 f9642c;
        public static final Function2 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Function2 f9643e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Function2 f9644f;
        public static final Function2 g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Function1 f9645h;

        static {
            LayoutNode.T.getClass();
            f9641b = LayoutNode.W;
            f9642c = ComposeUiNode$Companion$VirtualConstructor$1.f9654c;
            d = ComposeUiNode$Companion$SetModifier$1.f9651c;
            int i2 = ComposeUiNode$Companion$SetDensity$1.f9648c;
            f9643e = ComposeUiNode$Companion$SetResolvedCompositionLocals$1.f9652c;
            f9644f = ComposeUiNode$Companion$SetMeasurePolicy$1.f9650c;
            int i3 = ComposeUiNode$Companion$SetLayoutDirection$1.f9649c;
            int i4 = ComposeUiNode$Companion$SetViewConfiguration$1.f9653c;
            g = ComposeUiNode$Companion$SetCompositeKeyHash$1.f9647c;
            f9645h = ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1.f9646c;
        }

        public static Function1 a() {
            return f9645h;
        }

        public static Function0 b() {
            return f9641b;
        }

        public static Function2 c() {
            return g;
        }

        public static Function2 d() {
            return f9644f;
        }

        public static Function2 e() {
            return d;
        }

        public static Function2 f() {
            return f9643e;
        }
    }

    void b(int i2);

    void f(ViewConfiguration viewConfiguration);

    void g(LayoutDirection layoutDirection);

    void l(MeasurePolicy measurePolicy);

    void m(Modifier modifier);

    void n(Density density);

    void q(CompositionLocalMap compositionLocalMap);
}
