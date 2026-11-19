package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AirportListActivity extends BaseActivity {
    private boolean o;

    public Hilt_AirportListActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.Hilt_AirportListActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AirportListActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AirportListActivity_GeneratedInjector) C()).E((AirportListActivity) this);
    }

    public Hilt_AirportListActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
