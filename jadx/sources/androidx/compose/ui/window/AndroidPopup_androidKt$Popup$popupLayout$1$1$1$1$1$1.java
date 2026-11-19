package androidx.compose.ui.window;

import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1 extends Lambda implements Function1<SemanticsPropertyReceiver, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1 f11148c = new AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.x;
        Unit unit = Unit.f71739a;
        ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, unit);
        return unit;
    }
}
