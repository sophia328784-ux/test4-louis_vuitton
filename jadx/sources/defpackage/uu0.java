package defpackage;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.material.search.SearchView;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uu0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchView f80403c;

    public /* synthetic */ uu0(SearchView searchView, int i2) {
        this.f80402b = i2;
        this.f80403c = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WindowInsetsControllerCompat windowInsetsControllerCompatL;
        WindowInsetsControllerCompat windowInsetsControllerCompatL2;
        int i2 = this.f80402b;
        SearchView searchView = this.f80403c;
        switch (i2) {
            case 0:
                EditText editText = searchView.l;
                if (editText.requestFocus()) {
                    editText.sendAccessibilityEvent(8);
                }
                if (searchView.B && (windowInsetsControllerCompatL = ViewCompat.l(editText)) != null) {
                    windowInsetsControllerCompatL.g(8);
                } else {
                    ((InputMethodManager) ContextCompat.getSystemService(editText.getContext(), InputMethodManager.class)).showSoftInput(editText, 1);
                }
                break;
            case 1:
                searchView.l();
                break;
            case 2:
                EditText editText2 = searchView.l;
                editText2.clearFocus();
                if (searchView.B && (windowInsetsControllerCompatL2 = ViewCompat.l(editText2)) != null) {
                    windowInsetsControllerCompatL2.a(8);
                } else {
                    InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(editText2.getContext(), InputMethodManager.class);
                    if (inputMethodManager != null) {
                        inputMethodManager.hideSoftInputFromWindow(editText2.getWindowToken(), 0);
                    }
                }
                break;
            default:
                searchView.j();
                break;
        }
    }
}
