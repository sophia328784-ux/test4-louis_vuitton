package com.vuitton.android.presentation.screen.connectivity.travel;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AddTravelActivity extends BaseActivity {
    private boolean o;

    public Hilt_AddTravelActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.Hilt_AddTravelActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AddTravelActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AddTravelActivity_GeneratedInjector) C()).P((AddTravelActivity) this);
    }

    public Hilt_AddTravelActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
