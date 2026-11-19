package com.vuitton.android.presentation.screen.connectivity.watch.tutorial;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_WatchTutorialsActivity extends BaseActivity {
    private boolean o;

    public Hilt_WatchTutorialsActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.Hilt_WatchTutorialsActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_WatchTutorialsActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((WatchTutorialsActivity_GeneratedInjector) C()).t((WatchTutorialsActivity) this);
    }

    public Hilt_WatchTutorialsActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
