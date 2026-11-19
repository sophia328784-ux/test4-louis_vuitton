package androidx.compose.ui.platform;

import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidViewConfiguration;", "Landroidx/compose/ui/platform/ViewConfiguration;", "Landroid/view/ViewConfiguration;", "viewConfiguration", "<init>", "(Landroid/view/ViewConfiguration;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidViewConfiguration implements ViewConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.ViewConfiguration f9975a;

    public AndroidViewConfiguration(android.view.ViewConfiguration viewConfiguration) {
        this.f9975a = viewConfiguration;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final long a() {
        return android.view.ViewConfiguration.getDoubleTapTimeout();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final long b() {
        return android.view.ViewConfiguration.getLongPressTimeout();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float c() {
        return this.f9975a.getScaledMinimumFlingVelocity();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float d() {
        if (Build.VERSION.SDK_INT >= 34) {
            return AndroidViewConfigurationApi34.b(this.f9975a);
        }
        return 2.0f;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float f() {
        return this.f9975a.getScaledMaximumFlingVelocity();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float g() {
        return this.f9975a.getScaledTouchSlop();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float h() {
        if (Build.VERSION.SDK_INT >= 34) {
            return AndroidViewConfigurationApi34.a(this.f9975a);
        }
        return 16.0f;
    }
}
