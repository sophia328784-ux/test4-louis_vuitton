package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g80 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69334c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f69336f;
    public final /* synthetic */ boolean g;

    public /* synthetic */ g80(MyInformationViewState myInformationViewState, boolean z, Function2 function2, boolean z2, MutableState mutableState) {
        this.f69333b = 2;
        this.f69334c = myInformationViewState;
        this.f69336f = z;
        this.d = function2;
        this.g = z2;
        this.f69335e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69333b;
        Object obj4 = this.f69335e;
        Object obj5 = this.d;
        Object obj6 = this.f69334c;
        switch (i2) {
            case 0:
                Modifier modifierE = (Modifier) obj6;
                ConfigurationTextField configurationTextField = (ConfigurationTextField) obj5;
                String str = (String) obj4;
                AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "DecorationBox$lambda$3$0$0$0");
                }
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                LVTextFieldInternal.f48624a.c(ImageMetadata.EDGE_MODE, composer, modifierE, configurationTextField, str, this.f69336f, this.g);
                break;
            case 1:
                Modifier modifierE2 = (Modifier) obj6;
                ConfigurationTextField configurationTextField2 = (ConfigurationTextField) obj5;
                String str2 = (String) obj4;
                AnimatedVisibilityScope animatedVisibilityScope2 = (AnimatedVisibilityScope) obj;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                LVTextFieldInternal lVTextFieldInternal2 = LVTextFieldInternal.f48624a;
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "DecorationBox$lambda$3$0$0$1$0");
                }
                animatedVisibilityScope2.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                LVTextFieldInternal.f48624a.d(ImageMetadata.EDGE_MODE, composer2, modifierE2, configurationTextField2, str2, this.f69336f, this.g);
                break;
            default:
                MyInformationViewState myInformationViewState = (MyInformationViewState) obj6;
                Function2 function2 = (Function2) obj5;
                MutableState mutableState = (MutableState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Object objX = composer3.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new j6(26, mutableState);
                        composer3.q(objX);
                    }
                    EditMyInfoScreenKt.a(paddingValues, myInformationViewState, this.f69336f, zBooleanValue, function2, (Function1) objX, this.g, composer3, (iIntValue & 14) | ImageMetadata.EDGE_MODE);
                } else {
                    composer3.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ g80(Modifier modifier, ConfigurationTextField configurationTextField, String str, boolean z, boolean z2, int i2) {
        this.f69333b = i2;
        this.f69334c = modifier;
        this.d = configurationTextField;
        this.f69335e = str;
        this.f69336f = z;
        this.g = z2;
    }
}
