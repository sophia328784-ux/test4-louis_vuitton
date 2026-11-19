package defpackage;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.search.SearchView;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vu0 implements ViewUtils.OnApplyWindowInsetsListener, OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f80664b;

    public /* synthetic */ vu0(SearchView searchView) {
        this.f80664b = searchView;
    }

    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
        MaterialToolbar materialToolbar = this.f80664b.f32891h;
        boolean z = materialToolbar.getLayoutDirection() == 1;
        int i2 = z ? relativePadding.f32748c : relativePadding.f32746a;
        int i3 = z ? relativePadding.f32746a : relativePadding.f32748c;
        Insets insetsE = windowInsetsCompat.e(647);
        materialToolbar.setPadding(i2 + insetsE.f12054a, relativePadding.f32747b, i3 + insetsE.f12056c, relativePadding.d);
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        SearchView.e(this.f80664b, windowInsetsCompat);
        return windowInsetsCompat;
    }
}
