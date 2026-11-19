package com.vuitton.android.presentation.screen.placesearch;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_PlaceSearchActivity extends BaseActivity {
    private boolean o;

    public Hilt_PlaceSearchActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.placesearch.Hilt_PlaceSearchActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_PlaceSearchActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((PlaceSearchActivity_GeneratedInjector) C()).Y((PlaceSearchActivity) this);
    }

    public Hilt_PlaceSearchActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
