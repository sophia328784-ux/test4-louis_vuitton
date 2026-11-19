package androidx.compose.ui.platform;

import android.content.Context;
import android.view.View;
import androidx.compose.ui.input.pointer.AndroidPointerIcon;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.PointerIcon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;", "", "Landroid/view/View;", "view", "Landroidx/compose/ui/input/pointer/PointerIcon;", "icon", "", "a", "(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AndroidComposeViewVerificationHelperMethodsN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidComposeViewVerificationHelperMethodsN f9931a = new AndroidComposeViewVerificationHelperMethodsN();

    public final void a(View view, PointerIcon icon) {
        android.view.PointerIcon systemIcon;
        Context context = view.getContext();
        if (icon instanceof AndroidPointerIcon) {
            systemIcon = ((AndroidPointerIcon) icon).f9263b;
        } else {
            systemIcon = icon instanceof AndroidPointerIconType ? android.view.PointerIcon.getSystemIcon(context, ((AndroidPointerIconType) icon).f9264b) : android.view.PointerIcon.getSystemIcon(context, 1000);
        }
        if (Intrinsics.c(view.getPointerIcon(), systemIcon)) {
            return;
        }
        view.setPointerIcon(systemIcon);
    }
}
