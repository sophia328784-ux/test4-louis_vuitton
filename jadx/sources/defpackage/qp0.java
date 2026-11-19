package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyConfirmationBottomSheetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qp0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f79136c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ qp0(LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, int i2) {
        this.f79135b = i2;
        this.f79136c = lVModalBottomSheetState;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79135b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        MutableState mutableState = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f79136c;
        ColumnScope columnScope = (ColumnScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        switch (i2) {
            case 0:
                columnScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zY = composer.y(lVModalBottomSheetState);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new m8(lVModalBottomSheetState, mutableState, 9);
                        composer.q(objX);
                    }
                    PrivacyConfirmationBottomSheetKt.a((Function0) objX, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                columnScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean zY2 = composer.y(lVModalBottomSheetState);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new m8(lVModalBottomSheetState, mutableState, 13);
                        composer.q(objX2);
                    }
                    PrivacyConfirmationBottomSheetKt.a((Function0) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
