package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/focus/FocusOwner;", "Landroidx/compose/ui/focus/FocusManager;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FocusOwner extends FocusManager {
    Boolean A(int i2, Rect rect, Function1 function1);

    void a();

    boolean b();

    void c(FocusEventModifierNode focusEventModifierNode);

    boolean d(int i2, boolean z);

    boolean f(KeyEvent keyEvent);

    FocusTargetNode g();

    void h(FocusTargetNode focusTargetNode);

    void i();

    FocusOwnerImpl$modifier$1 j();

    boolean k(KeyEvent keyEvent, Function0 function0);

    boolean l(RotaryScrollEvent rotaryScrollEvent, Function0 function0);

    void m();

    boolean n();

    boolean o();

    FocusStateImpl q();

    boolean r();

    boolean s(int i2);

    Rect t();

    boolean u(int i2, boolean z, boolean z2);

    void v(FocusTargetNode focusTargetNode);

    boolean w(AndroidIndirectPointerEvent androidIndirectPointerEvent);

    void x();

    MutableObjectList y();
}
