package com.vuitton.android.presentation.screen.exclusivesales;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ExclusiveSalesActivity extends BaseActivity {
    private boolean o;

    public Hilt_ExclusiveSalesActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.exclusivesales.Hilt_ExclusiveSalesActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ExclusiveSalesActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ExclusiveSalesActivity_GeneratedInjector) C()).B((ExclusiveSalesActivity) this);
    }

    public Hilt_ExclusiveSalesActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
