package com.vuitton.android.presentation.screen.connectivity.views;

import androidx.core.view.ViewCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.vuitton.android.presentation.databinding.ViewViewPagerIndicatorBinding;
import java.util.WeakHashMap;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ViewPagerIndicator$listener2$1 extends ViewPager2.OnPageChangeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPagerIndicator f56682a;

    public ViewPagerIndicator$listener2$1(ViewPagerIndicator viewPagerIndicator) {
        this.f56682a = viewPagerIndicator;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void b(int i2, int i3, float f2) {
        ViewPagerIndicator viewPagerIndicator = this.f56682a;
        float f3 = (i2 + f2) / (viewPagerIndicator.f56680c - 1);
        ViewViewPagerIndicatorBinding viewViewPagerIndicatorBinding = viewPagerIndicator.f56679b;
        float width = viewViewPagerIndicatorBinding.f51472b.getWidth() - viewViewPagerIndicatorBinding.f51473c.getWidth();
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (viewPagerIndicator.getLayoutDirection() == 0) {
            viewViewPagerIndicatorBinding.f51473c.setTranslationX(width * f3);
        } else {
            viewViewPagerIndicatorBinding.f51473c.setTranslationX((-width) * f3);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void c(int i2) {
        if (i2 == 0) {
            this.f56682a.f56679b.f51473c.setTranslationX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }
}
