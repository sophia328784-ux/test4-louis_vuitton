package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableStateKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81005c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ x3(MutableState mutableState, Function1 function1, int i2) {
        this.f81004b = i2;
        this.d = mutableState;
        this.f81005c = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81004b;
        MutableState mutableState = this.d;
        Function1 function1 = this.f81005c;
        switch (i2) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                mutableState.setValue(bool);
                function1.invoke(bool);
                break;
            case 1:
                String str = (String) obj;
                str.getClass();
                int length = str.length();
                mutableState.setValue(new TextFieldValue(str, TextRangeKt.a(length, length), (TextRange) null, 4, (DefaultConstructorMarker) null));
                function1.invoke(str);
                break;
            case 2:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj;
                float f2 = BeautyVtoScreenKt.f62031a;
                tryOnProductUiModel.getClass();
                List list = tryOnProductUiModel.f62188h;
                if (list == null || list.isEmpty()) {
                    mutableState.setValue(Boolean.FALSE);
                }
                function1.invoke(tryOnProductUiModel);
                break;
            case 3:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                mutableState.setValue(textLayoutResult);
                function1.invoke(textLayoutResult);
                break;
            case 4:
                Offset offset = (Offset) obj;
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) mutableState.getF10755b();
                if (textLayoutResult2 != null) {
                    function1.invoke(Integer.valueOf(textLayoutResult2.f10553b.g(offset.f8808a)));
                }
                break;
            case 5:
                LVSwitchLegalState lVSwitchLegalState = (LVSwitchLegalState) obj;
                lVSwitchLegalState.getClass();
                LVSwitchLegalState lVSwitchLegalState2 = LVSwitchLegalState.ACCEPTED;
                mutableState.setValue(lVSwitchLegalState == lVSwitchLegalState2 ? LVSwitchLegalState.DENIED : lVSwitchLegalState2);
                function1.invoke(Boolean.valueOf(((LVSwitchLegalState) mutableState.getF10755b()) == lVSwitchLegalState2));
                break;
            case 6:
                String str2 = (String) obj;
                str2.getClass();
                Locale locale = Locale.ROOT;
                String upperCase = str2.toUpperCase(locale);
                upperCase.getClass();
                mutableState.setValue(upperCase);
                String upperCase2 = str2.toUpperCase(locale);
                upperCase2.getClass();
                function1.invoke(upperCase2);
                break;
            case 7:
                String str3 = (String) obj;
                str3.getClass();
                mutableState.setValue(str3);
                function1.invoke((String) mutableState.getF10755b());
                break;
            case 8:
                Boolean bool2 = (Boolean) obj;
                bool2.getClass();
                mutableState.setValue(bool2);
                function1.invoke(bool2);
                break;
            case 9:
                String str4 = (String) obj;
                str4.getClass();
                mutableState.setValue(StringsKt.V(50, StringsKt.J(str4, "\n", "")));
                function1.invoke(str4);
                break;
            case 10:
                Boolean bool3 = (Boolean) obj;
                function1.invoke(Boolean.valueOf(!bool3.booleanValue()));
                mutableState.setValue(bool3);
                break;
            case 11:
                Boolean bool4 = (Boolean) obj;
                bool4.booleanValue();
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                mutableState.setValue(bool4);
                function1.invoke(bool4);
                break;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(((LVSwitchLegalState) mutableState.getF10755b()) == LVSwitchLegalState.ACCEPTED));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.d);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new o8(mutableState, function1, 13));
                break;
            default:
                FiltersButtonState filtersButtonState = (FiltersButtonState) obj;
                filtersButtonState.getClass();
                mutableState.setValue(Boolean.TRUE);
                function1.invoke(filtersButtonState);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ x3(Function1 function1, MutableState mutableState, int i2) {
        this.f81004b = i2;
        this.f81005c = function1;
        this.d = mutableState;
    }
}
