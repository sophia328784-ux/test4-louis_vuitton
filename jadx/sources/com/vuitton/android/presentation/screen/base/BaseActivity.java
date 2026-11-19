package com.vuitton.android.presentation.screen.base;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.batch.android.b.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.presentation.extensions.ActivityViewTreeExtKt;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screenshaker.ScreenShakerDebugActivity;
import com.vuitton.android.presentation.screenshaker.ScreenShakerSensorManager;
import com.vuitton.android.presentation.screenshaker.ShakeListener;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0013\b\u0016\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0016\u0010\u0004J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0000@\u0000X\u0081.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0000@\u0000X\u0081.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/vuitton/android/presentation/screenshaker/ShakeListener;", "<init>", "()V", "", "contentLayoutId", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onPostCreate", "onDestroy", "onPause", "onResume", "E", "Landroid/content/res/Configuration;", "overrideConfiguration", "applyOverrideConfiguration", "(Landroid/content/res/Configuration;)V", "onStart", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;", b.d, "Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;", "D", "()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;", "G", "(Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;)V", "shakeSensorManager", "Lcom/vuitton/android/presentation/push/NotificationsManager;", NBSSpanMetricUnit.Minute, "Lcom/vuitton/android/presentation/push/NotificationsManager;", NBSSpanMetricUnit.Byte, "()Lcom/vuitton/android/presentation/push/NotificationsManager;", "F", "(Lcom/vuitton/android/presentation/push/NotificationsManager;)V", "notificationsManager", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public abstract class BaseActivity extends Hilt_BaseActivity implements ShakeListener {
    public static final int n = 8;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    @Inject
    public ScreenShakerSensorManager shakeSensorManager;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    @Inject
    public NotificationsManager notificationsManager;

    public BaseActivity() {
    }

    public final NotificationsManager B() {
        NotificationsManager notificationsManager = this.notificationsManager;
        if (notificationsManager != null) {
            return notificationsManager;
        }
        Intrinsics.h("notificationsManager");
        throw null;
    }

    public final ScreenShakerSensorManager D() {
        ScreenShakerSensorManager screenShakerSensorManager = this.shakeSensorManager;
        if (screenShakerSensorManager != null) {
            return screenShakerSensorManager;
        }
        Intrinsics.h("shakeSensorManager");
        throw null;
    }

    public void E() {
        ScreenShakerDebugActivity.l.getClass();
        startActivity(new Intent(this, (Class<?>) ScreenShakerDebugActivity.class));
    }

    public final void F(NotificationsManager notificationsManager) {
        notificationsManager.getClass();
        this.notificationsManager = notificationsManager;
    }

    public final void G(ScreenShakerSensorManager screenShakerSensorManager) {
        screenShakerSensorManager.getClass();
        this.shakeSensorManager = screenShakerSensorManager;
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(Configuration overrideConfiguration) {
        if (overrideConfiguration != null) {
            int i2 = overrideConfiguration.uiMode;
            overrideConfiguration.setTo(getBaseContext().getResources().getConfiguration());
            overrideConfiguration.uiMode = i2;
        }
        super.applyOverrideConfiguration(overrideConfiguration);
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        D().getClass();
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        D().getClass();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        B().g(this, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        D().getClass();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        ActivityViewTreeExtKt.a(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        D().getClass();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        B().f(this);
    }

    public BaseActivity(int i2) {
        super(i2);
    }
}
