package com.vuitton.android.presentation.screen.wishlist;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_WishlistActivity extends BaseActivity {
    private boolean o;

    public Hilt_WishlistActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.wishlist.Hilt_WishlistActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_WishlistActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((WishlistActivity_GeneratedInjector) C()).k0((WishlistActivity) this);
    }

    public Hilt_WishlistActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
