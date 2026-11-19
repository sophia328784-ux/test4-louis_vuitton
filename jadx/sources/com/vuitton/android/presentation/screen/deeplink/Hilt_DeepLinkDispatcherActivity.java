package com.vuitton.android.presentation.screen.deeplink;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_DeepLinkDispatcherActivity extends AppCompatActivity implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ActivityComponentManager f56865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f56866j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f56867k;

    public Hilt_DeepLinkDispatcherActivity() {
        this.f56866j = new Object();
        this.f56867k = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.deeplink.Hilt_DeepLinkDispatcherActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_DeepLinkDispatcherActivity.this.A();
            }
        });
    }

    private void z() {
        x().c();
    }

    public void A() {
        if (this.f56867k) {
            return;
        }
        this.f56867k = true;
        ((DeepLinkDispatcherActivity_GeneratedInjector) C()).h0((DeepLinkDispatcherActivity) this);
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
        if (this.f56865i == null) {
            synchronized (this.f56866j) {
                try {
                    if (this.f56865i == null) {
                        this.f56865i = y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f56865i;
    }

    public ActivityComponentManager y() {
        return new ActivityComponentManager(this);
    }

    public Hilt_DeepLinkDispatcherActivity(int i2) {
        super(i2);
        this.f56866j = new Object();
        this.f56867k = false;
        v();
    }
}
