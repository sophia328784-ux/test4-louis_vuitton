package com.vuitton.android.presentation.screen.account.inbox;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_InboxActivity extends BaseActivity {
    private boolean o;

    public Hilt_InboxActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.inbox.Hilt_InboxActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_InboxActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((InboxActivity_GeneratedInjector) C()).i0((InboxActivity) this);
    }

    public Hilt_InboxActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
