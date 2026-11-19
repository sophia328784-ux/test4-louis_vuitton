package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightDataItemKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuItemKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotDetailUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightProductUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yu implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81440b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f81441c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f81442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81443f;
    public final /* synthetic */ Object g;

    public /* synthetic */ yu(List list, int i2, boolean z, Function1 function1, Function1 function2) {
        this.f81443f = list;
        this.f81441c = i2;
        this.d = z;
        this.f81442e = function1;
        this.g = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f81440b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.g;
        Function1 function1 = this.f81442e;
        int i3 = this.f81441c;
        Object obj5 = this.f81443f;
        switch (i2) {
            case 0:
                DistantRepairPhoto distantRepairPhoto = (DistantRepairPhoto) obj5;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                Modifier modifierO = ((Modifier) obj4).o(new DTFunctionNameModifier("PhotoItem$lambda$3"));
                ((Modifier) obj).getClass();
                composer.L(1230135182);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (this.d || distantRepairPhoto != null) {
                    composer.L(-1998540828);
                    composer.F();
                } else {
                    composer.L(-1998676081);
                    boolean zK = composer.K(function1) | composer.d(i3);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new is(i3, 3, function1);
                        composer.q(objX);
                    }
                    modifierO = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX, 31);
                    composer.F();
                }
                composer.F();
                return modifierO;
            default:
                List list = (List) obj5;
                Function1 function2 = (Function1) obj4;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = SpotlightSkuPagerKt.f64617a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                if (((SpotlightHotspotUiModel) list.get(i3)).d.f64626c != null) {
                    composer2.L(-2011781400);
                    SpotlightProductUiModel spotlightProductUiModel = ((SpotlightHotspotUiModel) list.get(i3)).d.f64626c;
                    if (spotlightProductUiModel == null) {
                        composer2.L(-2011781401);
                        composer2.F();
                    } else {
                        composer2.L(-2011781400);
                        String str = spotlightProductUiModel.f64648b;
                        String str2 = spotlightProductUiModel.d;
                        String str3 = spotlightProductUiModel.f64649c;
                        boolean zK2 = composer2.K(function1) | composer2.d(i3);
                        Object objX2 = composer2.x();
                        if (zK2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new is(i3, 11, function1);
                            composer2.q(objX2);
                        }
                        SpotlightSkuItemKt.a(null, str, str2, str3, this.d, (Function0) objX2, composer2, 0);
                        composer2.F();
                    }
                    composer2.F();
                } else {
                    composer2.L(-2011287415);
                    HotspotDetailUiModel hotspotDetailUiModel = ((SpotlightHotspotUiModel) list.get(i3)).d.f64625b;
                    if (hotspotDetailUiModel == null) {
                        composer2.L(-2011287416);
                        composer2.F();
                    } else {
                        composer2.L(-2011287415);
                        String str4 = hotspotDetailUiModel.f64627a;
                        String str5 = hotspotDetailUiModel.f64628b;
                        String str6 = hotspotDetailUiModel.f64629c.f51778b;
                        String str7 = hotspotDetailUiModel.d.f64641a;
                        boolean zK3 = composer2.K(function2) | composer2.y(list) | composer2.d(i3);
                        Object objX3 = composer2.x();
                        if (zK3 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new ou(function2, list, i3, 6);
                            composer2.q(objX3);
                        }
                        SpotlightDataItemKt.a(null, str4, str5, str6, str7, (Function0) objX3, composer2, 0);
                        composer2.F();
                    }
                    composer2.F();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ yu(boolean z, DistantRepairPhoto distantRepairPhoto, Modifier modifier, Function1 function1, int i2) {
        this.d = z;
        this.f81443f = distantRepairPhoto;
        this.g = modifier;
        this.f81442e = function1;
        this.f81441c = i2;
    }
}
