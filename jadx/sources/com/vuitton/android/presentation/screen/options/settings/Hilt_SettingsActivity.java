package com.vuitton.android.presentation.screen.options.settings;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SettingsActivity extends BaseActivity {
    private boolean o;

    public Hilt_SettingsActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.options.settings.Hilt_SettingsActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_SettingsActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((SettingsActivity_GeneratedInjector) C()).N((SettingsActivity) this);
    }

    public Hilt_SettingsActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
