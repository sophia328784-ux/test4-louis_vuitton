package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u4 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f80223c;

    public /* synthetic */ u4(SnackbarHostState snackbarHostState, int i2) {
        this.f80222b = i2;
        this.f80223c = snackbarHostState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80222b;
        SnackbarHostState snackbarHostState = this.f80223c;
        switch (i2) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("AddressEditorErrorScreen$lambda$0", paddingValues), this.f80223c, StringResources_androidKt.c(composer, R.string.mylv_error_ws_generic_label_title), null, null, null, null, composer, 0, 504);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer2, 48, 1);
                } else {
                    composer2.D();
                }
                break;
            default:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((SnackbarHostState) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer3, 0, 1);
                } else {
                    composer3.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
