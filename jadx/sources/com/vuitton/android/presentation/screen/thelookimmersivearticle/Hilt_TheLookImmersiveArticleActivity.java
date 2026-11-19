package com.vuitton.android.presentation.screen.thelookimmersivearticle;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_TheLookImmersiveArticleActivity extends BaseActivity {
    private boolean o;

    public Hilt_TheLookImmersiveArticleActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.Hilt_TheLookImmersiveArticleActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_TheLookImmersiveArticleActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((TheLookImmersiveArticleActivity_GeneratedInjector) C()).M((TheLookImmersiveArticleActivity) this);
    }

    public Hilt_TheLookImmersiveArticleActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
