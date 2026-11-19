package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Constraints;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class td implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f80040c;

    public /* synthetic */ td(float f2, int i2) {
        this.f80039b = i2;
        this.f80040c = f2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80039b;
        float f2 = this.f80040c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SpacerKt.a(composer, SizeKt.s(new DTFunctionNameModifier("BeautyColorSlider$lambda$8$1$0$0"), f2));
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("BeautyColorSlider$lambda$8$1$0$2"), f2));
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                measureScope.getClass();
                measurable.getClass();
                long j2 = ((Constraints) obj3).f10999a;
                Placeable placeableT = measurable.T(Constraints.a(j2, 0, (measureScope.B0(f2) * 2) + Constraints.h(j2), 0, 0, 13));
                return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 10));
            case 3:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    SpacerKt.a(composer3, SizeKt.f(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$5"), LVAppDesignKitTheme.l(composer3).f48416e));
                    NativeCartFilledScreenKt.a(PaddingKt.j(SizeKt.d(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$5"), 1.0f), f2, LVAppDesignKitTheme.l(composer3).f48416e), StringResources_androidKt.c(composer3, R.string.cart_gifting_packaging_section_title), StringResources_androidKt.c(composer3, R.string.cart_free_option_label), composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    SpacerKt.a(composer4, SizeKt.f(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$3"), LVAppDesignKitTheme.l(composer4).f48416e));
                    NativeCartFilledScreenKt.a(PaddingKt.j(SizeKt.d(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$3"), 1.0f), f2, LVAppDesignKitTheme.l(composer4).f48416e), StringResources_androidKt.c(composer4, R.string.cart_samples_section_title), StringResources_androidKt.c(composer4, R.string.cart_free_option_label), composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                lazyItemScope.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer5.K(lazyItemScope) ? 4 : 2;
                }
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    PLPItemsKt.b(SizeKt.f(lazyItemScope.a(new DTFunctionNameModifier("plpFullError_3ABfNKs$lambda$0")), f2), composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    SpacerKt.a(composer6, SizeKt.o(new DTFunctionNameModifier("PLP$lambda$12$0$0"), f2));
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            default:
                MeasureScope measureScope2 = (MeasureScope) obj;
                Measurable measurable2 = (Measurable) obj2;
                measureScope2.getClass();
                measurable2.getClass();
                Placeable placeableT2 = measurable2.T(((Constraints) obj3).f10999a);
                int i3 = placeableT2.f9548b;
                int iB0 = placeableT2.f9549c - measureScope2.B0(f2);
                return measureScope2.V0(i3, iB0 >= 0 ? iB0 : 0, MapsKt.c(), new a2(placeableT2, 16));
        }
    }
}
