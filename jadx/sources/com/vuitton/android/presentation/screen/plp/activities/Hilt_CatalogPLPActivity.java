package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_CatalogPLPActivity extends BaseActivity {
    private boolean o;

    public Hilt_CatalogPLPActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.plp.activities.Hilt_CatalogPLPActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_CatalogPLPActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((CatalogPLPActivity_GeneratedInjector) C()).l0((CatalogPLPActivity) this);
    }

    public Hilt_CatalogPLPActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
