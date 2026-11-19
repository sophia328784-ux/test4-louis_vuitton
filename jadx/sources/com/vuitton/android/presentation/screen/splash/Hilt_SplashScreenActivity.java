package com.vuitton.android.presentation.screen.splash;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SplashScreenActivity extends AppCompatActivity implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ActivityComponentManager f64418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f64419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f64420k;

    public Hilt_SplashScreenActivity() {
        this.f64419j = new Object();
        this.f64420k = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.splash.Hilt_SplashScreenActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_SplashScreenActivity.this.A();
            }
        });
    }

    private void z() {
        x().c();
    }

    public void A() {
        if (this.f64420k) {
            return;
        }
        this.f64420k = true;
        ((SplashScreenActivity_GeneratedInjector) C()).F((SplashScreenActivity) this);
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return x().C();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    /* JADX INFO: renamed from: getDefaultViewModelProviderFactory */
    public ViewModelProvider.Factory getF13588e() {
        return DefaultViewModelFactories.a(this, super.getF13588e());
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
        if (this.f64418i == null) {
            synchronized (this.f64419j) {
                try {
                    if (this.f64418i == null) {
                        this.f64418i = y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f64418i;
    }

    public ActivityComponentManager y() {
        return new ActivityComponentManager(this);
    }

    public Hilt_SplashScreenActivity(int i2) {
        super(i2);
        this.f64419j = new Object();
        this.f64420k = false;
        v();
    }
}
