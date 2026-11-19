package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleChoiceChipsKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleChoiceRadioGroupKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80566c;
    public final /* synthetic */ BookingFormModuleDataUiModel.SingleChoice d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f80567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f80568f;

    public /* synthetic */ vf(Modifier modifier, BookingFormModuleDataUiModel.SingleChoice singleChoice, boolean z, Function1 function1, int i2, int i3) {
        this.f80565b = i3;
        this.f80566c = modifier;
        this.d = singleChoice;
        this.f80567e = z;
        this.f80568f = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80565b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BookingModuleChoiceChipsKt.a(this.f80566c, this.d, this.f80567e, this.f80568f, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                BookingModuleChoiceRadioGroupKt.a(this.f80566c, this.d, this.f80567e, this.f80568f, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
