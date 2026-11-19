package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.fc;
import defpackage.md;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinearLayoutManager f20153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewPager2.PageTransformer f20154b;

    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f20153a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void a(int i2) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void b(int i2, int i3, float f2) {
        if (this.f20154b == null) {
            return;
        }
        float f3 = -f2;
        int i4 = 0;
        while (true) {
            LinearLayoutManager linearLayoutManager = this.f20153a;
            if (i4 >= linearLayoutManager.x()) {
                return;
            }
            View viewW = linearLayoutManager.w(i4);
            if (viewW == null) {
                Locale locale = Locale.US;
                md.k(fc.f(i4, linearLayoutManager.x(), "LayoutManager returned a null child at pos ", "/", " while transforming pages"));
                return;
            } else {
                this.f20154b.a((RecyclerView.LayoutManager.N(viewW) - i2) + f3, viewW);
                i4++;
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void c(int i2) {
    }
}
