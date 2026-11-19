package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.cl0;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/input/PlatformTextInputService;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PlatformTextInputService {
    default void a() {
    }

    void b();

    void c(TextFieldValue textFieldValue, ImeOptions imeOptions, cl0 cl0Var, Function1 function1);

    void d();

    void e(TextFieldValue textFieldValue, TextFieldValue textFieldValue2);

    void f();

    default void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, Rect rect, Rect rect2) {
    }

    default void h(Rect rect) {
    }
}
