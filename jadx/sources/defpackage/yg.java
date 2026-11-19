package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomappbar.BottomAppBar;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yg implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f81360c;

    public /* synthetic */ yg(View view, int i2) {
        this.f81359b = i2;
        this.f81360c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81359b;
        View view = this.f81360c;
        switch (i2) {
            case 0:
                int i3 = BottomAppBar.v1;
                view.requestLayout();
                break;
            case 1:
                view.requestFocus();
                view.post(new yg(view, 3));
                break;
            case 2:
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                break;
            default:
                ((InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
                break;
        }
    }
}
