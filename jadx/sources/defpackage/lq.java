package defpackage;

import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lq implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LegacyTextFieldState f76071c;

    public /* synthetic */ lq(LegacyTextFieldState legacyTextFieldState, int i2) {
        this.f76070b = i2;
        this.f76071c = legacyTextFieldState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76070b;
        LegacyTextFieldState legacyTextFieldState = this.f76071c;
        switch (i2) {
            case 0:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
                if (textLayoutResultProxyD != null) {
                    textLayoutResultProxyD.f6013c = layoutCoordinates;
                }
                return Unit.f71739a;
            case 1:
                MutableState mutableState = legacyTextFieldState.t;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                String str = textFieldValue.f10840a.f10420c;
                AnnotatedString annotatedString = legacyTextFieldState.f5932j;
                if (!Intrinsics.c(str, annotatedString != null ? annotatedString.f10420c : null)) {
                    ((SnapshotMutableStateImpl) legacyTextFieldState.f5933k).setValue(HandleState.None);
                    if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue()) {
                        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
                    } else {
                        ((SnapshotMutableStateImpl) legacyTextFieldState.s).setValue(Boolean.FALSE);
                    }
                }
                TextRange.f10564b.getClass();
                long j2 = TextRange.f10565c;
                legacyTextFieldState.f(j2);
                legacyTextFieldState.e(j2);
                legacyTextFieldState.u.invoke(textFieldValue);
                legacyTextFieldState.f5926b.invalidate();
                return Unit.f71739a;
            case 2:
                legacyTextFieldState.r.b(((ImeAction) obj).f10792a);
                return Unit.f71739a;
            case 3:
                return Boolean.valueOf(legacyTextFieldState.r.b(((ImeAction) obj).f10792a));
            default:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((SnapshotMutableStateImpl) legacyTextFieldState.q).setValue(bool);
                return Unit.f71739a;
        }
    }
}
