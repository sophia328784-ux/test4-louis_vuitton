package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_BookingActivity extends BaseActivity {
    private boolean o;

    public Hilt_BookingActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.booking.Hilt_BookingActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_BookingActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((BookingActivity_GeneratedInjector) C()).s((BookingActivity) this);
    }

    public Hilt_BookingActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
