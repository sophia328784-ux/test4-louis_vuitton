package com.vuitton.android.presentation.screen.certificates;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_CertificateActivity extends BaseActivity {
    private boolean o;

    public Hilt_CertificateActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.certificates.Hilt_CertificateActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_CertificateActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((CertificateActivity_GeneratedInjector) C()).g0((CertificateActivity) this);
    }

    public Hilt_CertificateActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
