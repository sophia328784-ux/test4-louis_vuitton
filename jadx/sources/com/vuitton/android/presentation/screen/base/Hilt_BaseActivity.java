package com.vuitton.android.presentation.screen.base;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_BaseActivity extends AppCompatActivity implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ActivityComponentManager f54283i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f54284j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f54285k;

    public Hilt_BaseActivity() {
        this.f54284j = new Object();
        this.f54285k = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.base.Hilt_BaseActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_BaseActivity.this.A();
            }
        });
    }

    private void z() {
        x().c();
    }

    public void A() {
        if (this.f54285k) {
            return;
        }
        this.f54285k = true;
        ((BaseActivity_GeneratedInjector) C()).i((BaseActivity) this);
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
        if (this.f54283i == null) {
            synchronized (this.f54284j) {
                try {
                    if (this.f54283i == null) {
                        this.f54283i = y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f54283i;
    }

    public ActivityComponentManager y() {
        return new ActivityComponentManager(this);
    }

    public Hilt_BaseActivity(int i2) {
        super(i2);
        this.f54284j = new Object();
        this.f54285k = false;
        v();
    }
}
