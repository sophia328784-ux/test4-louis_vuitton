package com.vuitton.android.presentation.screen.osa;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_OsaActivity extends BaseActivity {
    private boolean o;

    public Hilt_OsaActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.osa.Hilt_OsaActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_OsaActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((OsaActivity_GeneratedInjector) C()).x((OsaActivity) this);
    }

    public Hilt_OsaActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
