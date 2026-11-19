package com.vuitton.android.presentation.screen.account.addressbook;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AddressBookActivity extends BaseActivity {
    private boolean o;

    public Hilt_AddressBookActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.addressbook.Hilt_AddressBookActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AddressBookActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AddressBookActivity_GeneratedInjector) C()).H((AddressBookActivity) this);
    }

    public Hilt_AddressBookActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
