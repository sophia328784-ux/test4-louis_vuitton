package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsUtils_androidKt {
    public static final ScrollObservationScope a(int i2, ArrayList arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (((ScrollObservationScope) arrayList.get(i3)).f10146b == i2) {
                return (ScrollObservationScope) arrayList.get(i3);
            }
        }
        return null;
    }

    public static final TextLayoutResult b(SemanticsConfiguration semanticsConfiguration) {
        Function1 function1;
        ArrayList arrayList = new ArrayList();
        SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.f10302a;
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.f10302a);
        if (accessibilityAction == null || (function1 = (Function1) accessibilityAction.f10270b) == null || !((Boolean) function1.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (TextLayoutResult) arrayList.get(0);
    }

    public static final AndroidViewHolder c(AndroidViewsHandler androidViewsHandler, int i2) {
        Object next;
        Iterator<T> it = androidViewsHandler.getLayoutNodeToHolder().entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((LayoutNode) ((Map.Entry) next).getKey()).f9689c != i2);
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (AndroidViewHolder) entry.getValue();
        }
        return null;
    }

    public static final String d(int i2) {
        Role.f10289b.getClass();
        if (i2 == 0) {
            return "android.widget.Button";
        }
        if (i2 == Role.f10290c) {
            return "android.widget.CheckBox";
        }
        if (i2 == Role.f10291e) {
            return "android.widget.RadioButton";
        }
        if (i2 == Role.g) {
            return "android.widget.ImageView";
        }
        if (i2 == Role.f10293h) {
            return "android.widget.Spinner";
        }
        if (i2 == Role.f10294i) {
            return "android.widget.NumberPicker";
        }
        return null;
    }
}
