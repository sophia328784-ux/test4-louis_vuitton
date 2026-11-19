package com.vuitton.android.presentation.screenshaker;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ScreenShakerDebugActivity extends AppCompatActivity implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ActivityComponentManager f65774i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f65775j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65776k;

    public Hilt_ScreenShakerDebugActivity() {
        this.f65775j = new Object();
        this.f65776k = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screenshaker.Hilt_ScreenShakerDebugActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ScreenShakerDebugActivity.this.A();
            }
        });
    }

    private void z() {
        x().c();
    }

    public void A() {
        if (this.f65776k) {
            return;
        }
        this.f65776k = true;
        ScreenShakerDebugActivity_GeneratedInjector screenShakerDebugActivity_GeneratedInjector = (ScreenShakerDebugActivity_GeneratedInjector) C();
        screenShakerDebugActivity_GeneratedInjector.getClass();
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return x().C();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return DefaultViewModelFactories.a(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        x().a();
    }

    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final ActivityComponentManager x() {
        if (this.f65774i == null) {
            synchronized (this.f65775j) {
                try {
                    if (this.f65774i == null) {
                        this.f65774i = y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f65774i;
    }

    public ActivityComponentManager y() {
        return new ActivityComponentManager(this);
    }

    public Hilt_ScreenShakerDebugActivity(int i2) {
        super(i2);
        this.f65775j = new Object();
        this.f65776k = false;
        v();
    }
}
