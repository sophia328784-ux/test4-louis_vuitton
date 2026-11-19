package androidx.compose.material3.internal;

import android.view.accessibility.AccessibilityManager;
import androidx.compose.material3.TooltipState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7686c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(Object obj, Object obj2, int i2) {
        this.f7685b = i2;
        this.f7686c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f7685b;
        Object obj = this.d;
        Object obj2 = this.f7686c;
        switch (i2) {
            case 0:
                ((Listener) obj2).s((AccessibilityManager) obj);
                return Unit.f71739a;
            default:
                BuildersKt.c((CoroutineScope) obj2, null, null, new BasicTooltipKt$anchorSemantics$1$1$1((TooltipState) obj, null), 3);
                return Boolean.TRUE;
        }
    }
}
