package com.vuitton.android.presentation.screen.audioguide;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AudioGuideActivity extends BaseActivity {
    private boolean o;

    public Hilt_AudioGuideActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.audioguide.Hilt_AudioGuideActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AudioGuideActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AudioGuideActivity_GeneratedInjector) C()).p((AudioGuideActivity) this);
    }

    public Hilt_AudioGuideActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
