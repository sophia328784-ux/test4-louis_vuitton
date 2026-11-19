package com.vuitton.android.presentation.screen.livevideo;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_LiveVideoActivity extends AppCompatActivity implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ActivityComponentManager f58926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f58927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f58928k;

    public Hilt_LiveVideoActivity() {
        this.f58927j = new Object();
        this.f58928k = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.livevideo.Hilt_LiveVideoActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_LiveVideoActivity.this.A();
            }
        });
    }

    private void z() {
        x().c();
    }

    public void A() {
        if (this.f58928k) {
            return;
        }
        this.f58928k = true;
        LiveVideoActivity_GeneratedInjector liveVideoActivity_GeneratedInjector = (LiveVideoActivity_GeneratedInjector) C();
        liveVideoActivity_GeneratedInjector.getClass();
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
        if (this.f58926i == null) {
            synchronized (this.f58927j) {
                try {
                    if (this.f58926i == null) {
                        this.f58926i = y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f58926i;
    }

    public ActivityComponentManager y() {
        return new ActivityComponentManager(this);
    }

    public Hilt_LiveVideoActivity(int i2) {
        super(i2);
        this.f58927j = new Object();
        this.f58928k = false;
        v();
    }
}
