package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MyExperiencesActivity extends BaseActivity {
    private boolean o;

    public Hilt_MyExperiencesActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.booking.Hilt_MyExperiencesActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MyExperiencesActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MyExperiencesActivity_GeneratedInjector) C()).h((MyExperiencesActivity) this);
    }

    public Hilt_MyExperiencesActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
