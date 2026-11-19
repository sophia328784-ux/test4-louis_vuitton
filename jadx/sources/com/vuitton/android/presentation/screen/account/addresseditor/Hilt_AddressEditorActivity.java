package com.vuitton.android.presentation.screen.account.addresseditor;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AddressEditorActivity extends BaseActivity {
    private boolean o;

    public Hilt_AddressEditorActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.addresseditor.Hilt_AddressEditorActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AddressEditorActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AddressEditorActivity_GeneratedInjector) C()).Z((AddressEditorActivity) this);
    }

    public Hilt_AddressEditorActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
