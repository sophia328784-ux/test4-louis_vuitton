package defpackage;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uc implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldValue f80284c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ uc(TextFieldValue textFieldValue, MutableState mutableState, int i2) {
        this.f80283b = i2;
        this.f80284c = textFieldValue;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80283b;
        MutableState mutableState = this.d;
        TextFieldValue textFieldValue = this.f80284c;
        switch (i2) {
            case 0:
                int i3 = BasicTextFieldKt.f5854a;
                if (!TextRange.b(textFieldValue.f10841b, ((TextFieldValue) mutableState.getF10755b()).f10841b) || !Intrinsics.c(textFieldValue.f10842c, ((TextFieldValue) mutableState.getF10755b()).f10842c)) {
                    mutableState.setValue(textFieldValue);
                }
                break;
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                if (!TextRange.b(textFieldValue.f10841b, ((TextFieldValue) mutableState.getF10755b()).f10841b) || !Intrinsics.c(textFieldValue.f10842c, ((TextFieldValue) mutableState.getF10755b()).f10842c)) {
                    mutableState.setValue(textFieldValue);
                }
                break;
            default:
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                if (!TextRange.b(textFieldValue.f10841b, ((TextFieldValue) mutableState.getF10755b()).f10841b) || !Intrinsics.c(textFieldValue.f10842c, ((TextFieldValue) mutableState.getF10755b()).f10842c)) {
                    mutableState.setValue(textFieldValue);
                }
                break;
        }
        return Unit.f71739a;
    }
}
