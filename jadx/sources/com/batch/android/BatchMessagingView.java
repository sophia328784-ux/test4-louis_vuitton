package com.batch.android;

import android.app.Activity;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.batch.android.e.t;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public class BatchMessagingView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Kind f22796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f22797b;

    public enum Kind {
        Fragment,
        View
    }

    public BatchMessagingView(Kind kind, Object obj) {
        this.f22796a = kind;
        this.f22797b = obj;
    }

    public void dismissFragment() {
        Object obj = this.f22797b;
        if (obj instanceof DialogFragment) {
            ((DialogFragment) obj).dismiss();
            return;
        }
        t.a(com.batch.android.v0.g.f24103i, "Cannot dismiss a BatchMessagingView of kind " + this.f22796a + FileUtils.HIDDEN_PREFIX);
    }

    public void dismissView(boolean z) {
        Object obj = this.f22797b;
        if (obj instanceof a) {
            ((a) obj).a(z);
            return;
        }
        t.a(com.batch.android.v0.g.f24103i, "Cannot dismiss a BatchMessagingView of kind " + this.f22796a + FileUtils.HIDDEN_PREFIX);
    }

    public Kind getKind() {
        return this.f22796a;
    }

    public void showFragment(FragmentActivity fragmentActivity, String str) {
        Object obj = this.f22797b;
        if (!(obj instanceof DialogFragment)) {
            t.a(com.batch.android.v0.g.f24103i, "Cannot show a BatchMessagingView of kind " + this.f22796a + " as a fragment. Please use showView() instead.");
            return;
        }
        DialogFragment dialogFragment = (DialogFragment) obj;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        if (str == null) {
            str = "batch-messaging-fragment";
        }
        dialogFragment.show(supportFragmentManager, str);
    }

    public void showView(Activity activity) {
        Object obj = this.f22797b;
        if (obj instanceof a) {
            ((a) obj).a(activity);
            return;
        }
        t.a(com.batch.android.v0.g.f24103i, "Cannot show a BatchMessagingView of kind " + this.f22796a + " as a view. Please use showFragment() instead.");
    }

    public DialogFragment toFragment() {
        Object obj = this.f22797b;
        if (obj instanceof DialogFragment) {
            return (DialogFragment) obj;
        }
        return null;
    }

    public void showView(View view) {
        Object obj = this.f22797b;
        if (obj instanceof a) {
            ((a) obj).b(view);
            return;
        }
        t.a(com.batch.android.v0.g.f24103i, "Cannot show a BatchMessagingView of kind " + this.f22796a + " as a view. Please use showFragment() instead.");
    }

    public void showFragment(FragmentManager fragmentManager, String str) {
        Object obj = this.f22797b;
        if (obj instanceof DialogFragment) {
            DialogFragment dialogFragment = (DialogFragment) obj;
            if (str == null) {
                str = "batch-messaging-fragment";
            }
            dialogFragment.show(fragmentManager, str);
            return;
        }
        t.a(com.batch.android.v0.g.f24103i, "Cannot show a BatchMessagingView of kind " + this.f22796a + " as a fragment. Please use showView() instead.");
    }
}
