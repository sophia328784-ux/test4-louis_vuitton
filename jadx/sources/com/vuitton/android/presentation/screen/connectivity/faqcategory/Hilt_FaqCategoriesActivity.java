package com.vuitton.android.presentation.screen.connectivity.faqcategory;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_FaqCategoriesActivity extends BaseActivity {
    private boolean o;

    public Hilt_FaqCategoriesActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.faqcategory.Hilt_FaqCategoriesActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_FaqCategoriesActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((FaqCategoriesActivity_GeneratedInjector) C()).I((FaqCategoriesActivity) this);
    }

    public Hilt_FaqCategoriesActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
