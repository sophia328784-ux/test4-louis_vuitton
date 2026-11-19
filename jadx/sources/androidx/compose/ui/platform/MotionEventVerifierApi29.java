package androidx.compose.ui.platform;

import android.view.MotionEvent;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/MotionEventVerifierApi29;", "", "Landroid/view/MotionEvent;", MvelScriptManager.VAR_EVENT, "", "index", "", "a", "(Landroid/view/MotionEvent;I)Z", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MotionEventVerifierApi29 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MotionEventVerifierApi29 f10127a = new MotionEventVerifierApi29();

    public final boolean a(MotionEvent event, int index) {
        return (Float.floatToRawIntBits(event.getRawX(index)) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(event.getRawY(index)) & Integer.MAX_VALUE) < 2139095040;
    }
}
