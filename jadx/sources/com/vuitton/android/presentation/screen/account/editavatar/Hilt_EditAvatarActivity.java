package com.vuitton.android.presentation.screen.account.editavatar;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_EditAvatarActivity extends BaseActivity {
    private boolean o;

    public Hilt_EditAvatarActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.editavatar.Hilt_EditAvatarActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_EditAvatarActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((EditAvatarActivity_GeneratedInjector) C()).Q((EditAvatarActivity) this);
    }

    public Hilt_EditAvatarActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
