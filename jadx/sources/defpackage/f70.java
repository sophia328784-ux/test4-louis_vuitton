package defpackage;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f70 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69061c;
    public final /* synthetic */ FocusRequester d;

    public /* synthetic */ f70(Function1 function1, FocusRequester focusRequester, int i2) {
        this.f69060b = i2;
        this.f69061c = function1;
        this.d = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69060b;
        FocusRequester focusRequester = this.d;
        Function1 function1 = this.f69061c;
        switch (i2) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                function1.invoke(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null));
                FocusRequester.a(focusRequester);
                break;
            default:
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                function1.invoke(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null));
                FocusRequester.a(focusRequester);
                break;
        }
        return Unit.f71739a;
    }
}
