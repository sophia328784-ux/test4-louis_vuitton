package defpackage;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vc implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80550c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f80551e;

    public /* synthetic */ vc(Function1 function1, MutableState mutableState, MutableState mutableState2, int i2) {
        this.f80549b = i2;
        this.f80550c = function1;
        this.d = mutableState;
        this.f80551e = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80549b;
        MutableState mutableState = this.f80551e;
        MutableState mutableState2 = this.d;
        Function1 function1 = this.f80550c;
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        switch (i2) {
            case 0:
                int i3 = BasicTextFieldKt.f5854a;
                mutableState2.setValue(textFieldValue);
                boolean zC = Intrinsics.c((String) mutableState.getF10755b(), textFieldValue.f10840a.f10420c);
                AnnotatedString annotatedString = textFieldValue.f10840a;
                mutableState.setValue(annotatedString.f10420c);
                if (!zC) {
                    function1.invoke(annotatedString.f10420c);
                }
                break;
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                textFieldValue.getClass();
                mutableState2.setValue(textFieldValue);
                String str = (String) mutableState.getF10755b();
                AnnotatedString annotatedString2 = textFieldValue.f10840a;
                boolean zC2 = Intrinsics.c(str, annotatedString2.f10420c);
                String str2 = annotatedString2.f10420c;
                mutableState.setValue(str2);
                if (!zC2) {
                    function1.invoke(str2);
                }
                break;
            default:
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                textFieldValue.getClass();
                mutableState2.setValue(textFieldValue);
                String str3 = (String) mutableState.getF10755b();
                AnnotatedString annotatedString3 = textFieldValue.f10840a;
                boolean zC3 = Intrinsics.c(str3, annotatedString3.f10420c);
                String str4 = annotatedString3.f10420c;
                mutableState.setValue(str4);
                if (!zC3) {
                    function1.invoke(str4);
                }
                break;
        }
        return Unit.f71739a;
    }
}
