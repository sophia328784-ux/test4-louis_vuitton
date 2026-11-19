package com.vuitton.android.presentation.screen.story;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_StoryActivity extends BaseActivity {
    private boolean o;

    public Hilt_StoryActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.story.Hilt_StoryActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_StoryActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((StoryActivity_GeneratedInjector) C()).e0((StoryActivity) this);
    }

    public Hilt_StoryActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
