package com.vuitton.android.presentation.screen.webview;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_WebViewActivity extends BaseActivity {
    private boolean o;

    public Hilt_WebViewActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.webview.Hilt_WebViewActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_WebViewActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((WebViewActivity_GeneratedInjector) C()).g((WebViewActivity) this);
    }

    public Hilt_WebViewActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
