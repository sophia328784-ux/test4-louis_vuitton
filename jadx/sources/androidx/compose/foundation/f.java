package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
        ComputedProvidableCompositionLocal computedProvidableCompositionLocal = OverscrollKt.f4285a;
        PaddingValuesImpl paddingValuesImpl = AndroidOverscroll_androidKt.f4144b;
        Context context = (Context) compositionLocalAccessorScope.b(AndroidCompositionLocals_androidKt.f9936b);
        Density density = (Density) compositionLocalAccessorScope.b(CompositionLocalsKt.f10031h);
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) compositionLocalAccessorScope.b(OverscrollConfiguration_androidKt.f4284a);
        if (overscrollConfiguration == null) {
            return null;
        }
        return new AndroidEdgeEffectOverscrollFactory(context, density, overscrollConfiguration.f4282a, overscrollConfiguration.f4283b, null);
    }
}
