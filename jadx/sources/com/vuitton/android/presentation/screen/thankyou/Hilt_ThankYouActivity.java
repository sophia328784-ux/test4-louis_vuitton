package com.vuitton.android.presentation.screen.thankyou;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ThankYouActivity extends BaseActivity {
    private boolean o;

    public Hilt_ThankYouActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.thankyou.Hilt_ThankYouActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ThankYouActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ThankYouActivity_GeneratedInjector) C()).V((ThankYouActivity) this);
    }

    public Hilt_ThankYouActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
