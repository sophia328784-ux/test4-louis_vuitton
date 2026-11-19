package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.platform.actionmodecallback.TextActionModeCallback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidTextToolbar;", "Landroidx/compose/ui/platform/TextToolbar;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidTextToolbar implements TextToolbar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f9957a;

    public AndroidTextToolbar(View view) {
        this.f9957a = view;
        new TextActionModeCallback(new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidTextToolbar$textActionModeCallback$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return Unit.f71739a;
            }
        }, null, null, null, null, null, null, 126, null);
        TextToolbarStatus textToolbarStatus = TextToolbarStatus.Shown;
    }
}
