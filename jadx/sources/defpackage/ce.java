package defpackage;

import androidx.compose.runtime.MutableState;
import com.perfectcorp.perfectlib.MakeupCam;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ce implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f21134c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ ce(BeautyVtoActivity beautyVtoActivity, MutableState mutableState, int i2) {
        this.f21133b = i2;
        this.f21134c = beautyVtoActivity;
        this.d = mutableState;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        MakeupCam makeupCam;
        ColorUiModel colorUiModel;
        ColorUiModel colorUiModel2;
        ColorUiModel colorUiModel3;
        int i2 = this.f21133b;
        str = null;
        String str = null;
        str = null;
        String str2 = null;
        str = null;
        String str3 = null;
        MutableState mutableState = this.d;
        BeautyVtoActivity beautyVtoActivity = this.f21134c;
        switch (i2) {
            case 0:
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                beautyVtoActivity.M().r6();
                if (((BeautyVtoViewState) mutableState.getF10755b()).u.f62138c) {
                    beautyVtoActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToNativeCartPage.f61109a, beautyVtoActivity));
                } else {
                    beautyVtoActivity.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(((BeautyVtoViewState) mutableState.getF10755b()).f62152e.f61550b, true), beautyVtoActivity));
                }
                break;
            case 1:
                BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                if (((BeautyVtoViewState) mutableState.getF10755b()).f62149a == BeautyVtoMode.DUAL && (makeupCam = beautyVtoActivity.s) != null) {
                    makeupCam.enableComparison(false);
                }
                beautyVtoActivity.M().Sb();
                break;
            case 2:
                BeautyVtoActivity.Companion companion3 = BeautyVtoActivity.D;
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) mutableState.getF10755b();
                int i3 = BeautyVtoActivity.WhenMappings.f61771a[beautyVtoViewState.f62149a.ordinal()];
                if (i3 == 1) {
                    MakeupCam makeupCam2 = beautyVtoActivity.s;
                    if (makeupCam2 != null) {
                        makeupCam2.enableComparison(false);
                    }
                    beautyVtoActivity.M().E6();
                } else if (i3 != 2) {
                    MakeupCam makeupCam3 = beautyVtoActivity.s;
                    if (makeupCam3 != null) {
                        makeupCam3.enableComparison(true);
                    }
                    beautyVtoActivity.M().E6();
                } else {
                    TryOnProductUiModel tryOnProductUiModel = beautyVtoViewState.f62156j;
                    BeautyProductTypeUiModel beautyProductTypeUiModel = tryOnProductUiModel != null ? tryOnProductUiModel.f62185c : null;
                    if (beautyProductTypeUiModel == BeautyProductTypeUiModel.EYESHADOW) {
                        beautyVtoActivity.K(new be(beautyVtoActivity, 2));
                    } else {
                        beautyVtoActivity.J(beautyProductTypeUiModel, new be(beautyVtoActivity, 3));
                    }
                }
                break;
            case 3:
                BeautyVtoActivity.Companion companion4 = BeautyVtoActivity.D;
                TryOnProductUiModel tryOnProductUiModel2 = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
                if (tryOnProductUiModel2 != null && (colorUiModel = tryOnProductUiModel2.g) != null) {
                    str3 = colorUiModel.f62159a;
                }
                BeautyVtoActivity.H(beautyVtoActivity, str3 != null ? str3 : "");
                break;
            case 4:
                BeautyVtoActivity.Companion companion5 = BeautyVtoActivity.D;
                TryOnProductUiModel tryOnProductUiModel3 = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
                if (tryOnProductUiModel3 != null && (colorUiModel2 = tryOnProductUiModel3.g) != null) {
                    str2 = colorUiModel2.f62159a;
                }
                BeautyVtoActivity.H(beautyVtoActivity, str2 != null ? str2 : "");
                break;
            default:
                BeautyVtoActivity.Companion companion6 = BeautyVtoActivity.D;
                TryOnProductUiModel tryOnProductUiModel4 = ((BeautyVtoViewState) mutableState.getF10755b()).r;
                if (tryOnProductUiModel4 != null && (colorUiModel3 = tryOnProductUiModel4.g) != null) {
                    str = colorUiModel3.f62159a;
                }
                BeautyVtoActivity.H(beautyVtoActivity, str != null ? str : "");
                break;
        }
        return Unit.f71739a;
    }
}
