package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope$items$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.common.editorial.components.grids.GridSItemKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a10 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f363c;

    public /* synthetic */ a10(float f2, int i2) {
        this.f362b = i2;
        this.f363c = f2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f362b;
        final float f2 = this.f363c;
        switch (i2) {
            case 0:
                LazyGridScope lazyGridScope = (LazyGridScope) obj;
                lazyGridScope.getClass();
                lazyGridScope.d(4, LazyGridScope$items$1.f5334b, new ComposableLambdaImpl(605651385, true, new Function4() { // from class: b10
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                        ((Integer) obj3).getClass();
                        Composer composer = (Composer) obj4;
                        int iIntValue = ((Integer) obj5).intValue();
                        ((LazyGridItemScope) obj2).getClass();
                        if (composer.p(iIntValue & 1, (iIntValue & 129) != 128)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            GridSItemKt.b(SizeKt.s(new DTFunctionNameModifier("GridS_f8_ukHw$lambda$3$0$0$0$0"), f2), composer, 0);
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 1:
                ((Integer) obj).intValue();
                return Integer.valueOf((int) f2);
            case 2:
                ((Integer) obj).intValue();
                return Integer.valueOf((int) f2);
            case 3:
                return Float.valueOf(((Float) obj).floatValue() * f2);
            case 4:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                graphicsLayerScope.d(1.0f - f2);
                return Unit.f71739a;
            case 5:
                GraphicsLayerScope graphicsLayerScope2 = (GraphicsLayerScope) obj;
                graphicsLayerScope2.getClass();
                graphicsLayerScope2.d(f2);
                return Unit.f71739a;
            default:
                GraphicsLayerScope graphicsLayerScope3 = (GraphicsLayerScope) obj;
                graphicsLayerScope3.getClass();
                graphicsLayerScope3.d(f2);
                return Unit.f71739a;
        }
    }
}
