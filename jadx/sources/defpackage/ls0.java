package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ls0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76083c;
    public final /* synthetic */ LVModalBottomSheetState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f76085f;

    public /* synthetic */ ls0(Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, MutableState mutableState, int i2) {
        this.f76082b = i2;
        this.f76083c = function1;
        this.d = lVModalBottomSheetState;
        this.f76084e = function0;
        this.f76085f = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f76082b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        MutableState mutableState = this.f76085f;
        LVModalBottomSheetState lVModalBottomSheetState = this.d;
        Modifier modifierE = (Modifier) obj;
        Composer composer = (Composer) obj2;
        switch (i2) {
            case 0:
                int iIntValue = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "RepairListBffComposable$lambda$5");
                }
                modifierE.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableState.getF10755b();
                    boolean zY = composer.y(lVModalBottomSheetState);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new t8(lVModalBottomSheetState, 18);
                        composer.q(objX);
                    }
                    RepairListComposableKt.c(0, composer, contactUsUiModel, (Function0) objX, this.f76084e, this.f76083c);
                } else {
                    composer.D();
                }
                break;
            default:
                int iIntValue2 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "RepairListComposable$lambda$5");
                }
                modifierE.getClass();
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableState.getF10755b();
                    boolean zY2 = composer.y(lVModalBottomSheetState);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new t8(lVModalBottomSheetState, 19);
                        composer.q(objX2);
                    }
                    RepairListComposableKt.c(0, composer, contactUsUiModel2, (Function0) objX2, this.f76084e, this.f76083c);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
