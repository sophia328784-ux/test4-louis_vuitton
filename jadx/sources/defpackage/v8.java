package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v8 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f80527c;
    public final /* synthetic */ ContactUsUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f80528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f80529f;

    public /* synthetic */ v8(int i2, LVModalBottomSheetState lVModalBottomSheetState, ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1) {
        this.f80526b = i2;
        this.f80527c = function0;
        this.d = contactUsUiModel;
        this.f80528e = lVModalBottomSheetState;
        this.f80529f = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80526b;
        Function1 function1 = this.f80529f;
        LVModalBottomSheetState lVModalBottomSheetState = this.f80528e;
        ContactUsUiModel contactUsUiModel = this.d;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(-1999500257, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 0), composer), null, null, null, composer, 12582912, 0, 3895);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer2, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(-1369295763, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 1), composer2), null, null, null, composer2, 12582912, 0, 3895);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer3, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(469600064, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 2), composer3), null, null, null, composer3, 12582912, 0, 3895);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer4, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(2048454934, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 3), composer4), null, null, null, composer4, 12582912, 0, 3895);
                } else {
                    composer4.D();
                }
                break;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer5, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(2139379900, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 4), composer5), null, null, null, composer5, 12582912, 0, 3895);
                } else {
                    composer5.D();
                }
                break;
            case 5:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer6, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(-345266327, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 5), composer6), null, null, null, composer6, 12582912, 0, 3895);
                } else {
                    composer6.D();
                }
                break;
            default:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer7, R.string.dr_screen_title), null, null, this.f80527c, ComposableLambdaKt.b(-575895229, new y8(contactUsUiModel, lVModalBottomSheetState, function1, 6), composer7), null, null, null, composer7, 12582912, 0, 3895);
                } else {
                    composer7.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
