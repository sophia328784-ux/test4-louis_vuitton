package defpackage;

import android.view.View;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.search.SearchView;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tu0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchView f80149c;

    public /* synthetic */ tu0(SearchView searchView, int i2) {
        this.f80148b = i2;
        this.f80149c = searchView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f80148b;
        SearchView searchView = this.f80149c;
        switch (i2) {
            case 0:
                int i3 = SearchView.F;
                Callback.n(view);
                try {
                    searchView.l.setText("");
                    searchView.j();
                    return;
                } finally {
                    Callback.o();
                }
            case 1:
                int i4 = SearchView.F;
                Callback.n(view);
                try {
                    searchView.l();
                    return;
                } finally {
                    Callback.o();
                }
            default:
                int i5 = SearchView.F;
                Callback.n(view);
                try {
                    searchView.g();
                    return;
                } finally {
                    Callback.o();
                }
        }
    }
}
