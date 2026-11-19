package com.vuitton.android.presentation.screen.imageviewer;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ImageViewerActivity extends BaseActivity {
    private boolean o;

    public Hilt_ImageViewerActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.imageviewer.Hilt_ImageViewerActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ImageViewerActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ImageViewerActivity_GeneratedInjector) C()).r0((ImageViewerActivity) this);
    }

    public Hilt_ImageViewerActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
