package com.vuitton.android.presentation.screen.search;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SearchActivity extends BaseActivity {
    private boolean o;

    public Hilt_SearchActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.search.Hilt_SearchActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_SearchActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((SearchActivity_GeneratedInjector) C()).X((SearchActivity) this);
    }

    public Hilt_SearchActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
