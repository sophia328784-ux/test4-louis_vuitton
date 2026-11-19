package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gq implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69460c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ gq(boolean z, Function0 function0, int i2) {
        this.f69459b = i2;
        this.f69460c = z;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69459b;
        Function0 function0 = this.d;
        boolean z = this.f69460c;
        switch (i2) {
            case 0:
                ContextMenuColors contextMenuColors = ContextMenuUiKt.f4333a;
                if (z) {
                    function0.mo47invoke();
                }
                break;
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVPushCardKt.f48653a;
                if (z) {
                    function0.mo47invoke();
                }
                break;
            default:
                if (!z) {
                    function0.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}
