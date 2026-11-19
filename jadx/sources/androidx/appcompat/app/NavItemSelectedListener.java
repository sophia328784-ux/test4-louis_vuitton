package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import com.dynatrace.android.callback.Callback;

/* JADX INFO: loaded from: classes.dex */
class NavItemSelectedListener implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActionBar.OnNavigationListener f863b;

    public NavItemSelectedListener(ActionBar.OnNavigationListener onNavigationListener) {
        this.f863b = onNavigationListener;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i2, long j2) {
        Callback.s(view);
        try {
            ActionBar.OnNavigationListener onNavigationListener = this.f863b;
            if (onNavigationListener != null) {
                onNavigationListener.a();
            }
        } finally {
            Callback.t();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
