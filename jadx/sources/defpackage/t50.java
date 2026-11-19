package defpackage;

import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.designkit.ui.theme.atoms.LVDragHandleKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t50 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79967c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ t50(int i2, String str, Function0 function0) {
        this.f79966b = i2;
        this.f79967c = str;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79966b;
        Function0 function0 = this.d;
        String str = this.f79967c;
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        switch (i2) {
            case 0:
                float f2 = LVDragHandleKt.f48470a;
                semanticsPropertyReceiver.getClass();
                if (str != null) {
                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                }
                if (function0 != null) {
                    SemanticsPropertiesKt.e(semanticsPropertyReceiver, str, new py(function0, 15));
                }
                break;
            case 1:
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, str, new py(function0, 21));
                break;
            case 2:
                float f3 = ModalBottomSheetKt.f7058a;
                SemanticsPropertiesKt.w(semanticsPropertyReceiver, 1.0f);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new py(function0, 27));
                break;
            default:
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new ee0(function0, 18));
                break;
        }
        return Unit.f71739a;
    }
}
