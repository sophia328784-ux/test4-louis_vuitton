package androidx.compose.ui.platform;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "Landroidx/compose/ui/platform/AccessibilityManager;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidAccessibilityManager implements AccessibilityManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.accessibility.AccessibilityManager f9859a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;", "", "", "FlagContentIcons", "I", "FlagContentText", "FlagContentControls", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AndroidAccessibilityManager(Context context) {
        Object systemService = context.getSystemService("accessibility");
        systemService.getClass();
        this.f9859a = (android.view.accessibility.AccessibilityManager) systemService;
    }

    @Override // androidx.compose.ui.platform.AccessibilityManager
    public final long a(long j2, boolean z) {
        if (j2 >= 2147483647L) {
            return j2;
        }
        int recommendedTimeoutMillis = this.f9859a.getRecommendedTimeoutMillis((int) j2, z ? 7 : 3);
        if (recommendedTimeoutMillis == Integer.MAX_VALUE) {
            return Long.MAX_VALUE;
        }
        return recommendedTimeoutMillis;
    }
}
