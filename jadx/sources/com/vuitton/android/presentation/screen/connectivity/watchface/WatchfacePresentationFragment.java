package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager2.widget.ViewPager2;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchfacePresentationBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.TextViewExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import com.vuitton.android.presentation.utils.TrackingFrom;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.b51;
import defpackage.c61;
import defpackage.hv0;
import defpackage.p11;
import defpackage.pc0;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchfacePresentationFragment extends Hilt_WatchfacePresentationFragment {
    public final FragmentViewBindingDelegate F;
    public final Lazy G;
    public final Lazy H;
    public final Lazy I;
    public WatchFacePresentationUiModel J;
    public AnalyticsTracker K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(WatchfacePresentationFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;", 0))};
    public static final Companion L = new Companion(null);
    public static final String N = "WatchfacePresentationFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_WATCHFACE", "KEY_HIDE_HOW_TO_GET", "KEY_DISPLAY_TOOLBAR", "KEY_IS_V2", "KEY_SHOULD_TRACK_PAGE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WatchfacePresentationFragment() {
        super(R.layout.fragment_watchface_presentation);
        this.F = FragmentExtKt.d(this, WatchfacePresentationFragment$binding$2.f56828b);
        this.G = LazyKt.b(new b51(22));
        this.H = LazyKt.b(new b51(23));
        this.I = LazyKt.b(new hv0(this, 29));
    }

    public final FragmentWatchfacePresentationBinding O() {
        return (FragmentWatchfacePresentationBinding) this.F.c(this, M[0]);
    }

    public final void P(VideoUiModel videoUiModel) {
        if (videoUiModel.f55968b.length() > 0) {
            VideoActivity.Companion companion = VideoActivity.m;
            Context contextRequireContext = requireContext();
            contextRequireContext.getClass();
            TrackingFrom trackingFrom = new TrackingFrom("LVPass/IoT/Watch/WatchInVideo", "IoT");
            String str = videoUiModel.f55968b;
            String str2 = videoUiModel.f55969c;
            WatchFacePresentationUiModel watchFacePresentationUiModel = this.J;
            String str3 = watchFacePresentationUiModel != null ? watchFacePresentationUiModel.f56811c : null;
            companion.getClass();
            startActivity(VideoActivity.Companion.b(contextRequireContext, trackingFrom, str, str2, str3));
        }
    }

    public final void Q(ViewPager2 viewPager2) {
        viewPager2.setClipToPadding(false);
        viewPager2.setClipChildren(false);
        viewPager2.setOffscreenPageLimit(3);
        viewPager2.setPageTransformer(new pc0(getResources().getDimensionPixelOffset(R.dimen.watch_face_presentation_offset), getResources().getDimensionPixelOffset(R.dimen.watch_face_presentation_page_margin)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    public final void R(WatchFacePresentationUiModel watchFacePresentationUiModel, boolean z) {
        int i2;
        ArrayList arrayList;
        VideoUiModel videoUiModel;
        watchFacePresentationUiModel.getClass();
        this.J = watchFacePresentationUiModel;
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO = O();
        fragmentWatchfacePresentationBindingO.f51386i.setVisibility(0);
        Button button = fragmentWatchfacePresentationBindingO.f51384f;
        if (((Boolean) this.I.getF71699b()).booleanValue()) {
            i2 = 8;
        } else {
            WatchFacePresentationUiModel watchFacePresentationUiModel2 = this.J;
            if (((watchFacePresentationUiModel2 == null || (videoUiModel = watchFacePresentationUiModel2.f56815i) == null) ? null : videoUiModel.f55968b) == null || !(watchFacePresentationUiModel2 == null || (arrayList = watchFacePresentationUiModel2.f56817k) == null || !arrayList.contains(2))) {
                i2 = 8;
            } else {
                i2 = 0;
            }
        }
        button.setVisibility(i2);
        VideoUiModel videoUiModel2 = watchFacePresentationUiModel.f56814h;
        ArrayList arrayList2 = watchFacePresentationUiModel.g;
        ArrayList arrayList3 = watchFacePresentationUiModel.f56813f;
        String str = videoUiModel2 != null ? videoUiModel2.f55968b : null;
        FrameLayout frameLayout = fragmentWatchfacePresentationBindingO.l;
        if (str != null) {
            frameLayout.setVisibility(0);
            ViewExtKt.d(frameLayout, new c61(this, watchFacePresentationUiModel, 5));
            String str2 = watchFacePresentationUiModel.f56816j;
            if (str2 != null) {
                XmlUiKt.a(fragmentWatchfacePresentationBindingO.f51388k, str2, 0, 0, 126);
            }
        } else {
            frameLayout.setVisibility(8);
        }
        TextViewExtKt.a(fragmentWatchfacePresentationBindingO.f51387j, watchFacePresentationUiModel.d);
        if (z) {
            fragmentWatchfacePresentationBindingO.f51382c.setImageResource(R.drawable.v2_watch_content_foreground_mask);
        }
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO2 = O();
        WatchfaceImagePagerAdapter watchfaceImagePagerAdapter = (WatchfaceImagePagerAdapter) this.G.getF71699b();
        ArrayList arrayList4 = watchfaceImagePagerAdapter.f56818b;
        arrayList4.clear();
        if (arrayList3 != null) {
            arrayList4.addAll(arrayList3);
        }
        watchfaceImagePagerAdapter.notifyDataSetChanged();
        if (arrayList3 != null) {
            ViewPager2 viewPager2 = fragmentWatchfacePresentationBindingO2.f51383e;
            viewPager2.setCurrentItem(0);
            viewPager2.setVisibility(0);
            fragmentWatchfacePresentationBindingO2.f51385h.setVisibility(arrayList3.size() > 1 ? 0 : 4);
        } else {
            fragmentWatchfacePresentationBindingO2.f51383e.setVisibility(8);
            fragmentWatchfacePresentationBindingO2.f51385h.setVisibility(8);
        }
        fragmentWatchfacePresentationBindingO2.f51385h.setViewPager2(fragmentWatchfacePresentationBindingO2.f51383e);
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO3 = O();
        WatchfaceImagePagerAdapter watchfaceImagePagerAdapter2 = (WatchfaceImagePagerAdapter) this.H.getF71699b();
        ArrayList arrayList5 = watchfaceImagePagerAdapter2.f56818b;
        arrayList5.clear();
        if (arrayList2 != null) {
            arrayList5.addAll(arrayList2);
        }
        watchfaceImagePagerAdapter2.notifyDataSetChanged();
        if (arrayList2 != null) {
            ViewPager2 viewPager3 = fragmentWatchfacePresentationBindingO3.d;
            viewPager3.setCurrentItem(0);
            viewPager3.setVisibility(0);
            fragmentWatchfacePresentationBindingO3.g.setVisibility(arrayList2.size() > 1 ? 0 : 4);
        } else {
            fragmentWatchfacePresentationBindingO3.d.setVisibility(8);
            fragmentWatchfacePresentationBindingO3.g.setVisibility(8);
        }
        fragmentWatchfacePresentationBindingO3.g.setViewPager2(fragmentWatchfacePresentationBindingO3.d);
        fragmentWatchfacePresentationBindingO.f51386i.scrollTo(0, 0);
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO4 = O();
        Q(fragmentWatchfacePresentationBindingO4.f51383e);
        Q(fragmentWatchfacePresentationBindingO4.d);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO = O();
        fragmentWatchfacePresentationBindingO.f51383e.e(fragmentWatchfacePresentationBindingO.f51385h.f56681e);
        fragmentWatchfacePresentationBindingO.d.e(fragmentWatchfacePresentationBindingO.g.f56681e);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.Hilt_WatchfacePresentationFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        WatchFacePresentationUiModel watchFacePresentationUiModel;
        Parcelable parcelable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("WATCHFACE", WatchFacePresentationUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("WATCHFACE");
                if (!(parcelable2 instanceof WatchFacePresentationUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (WatchFacePresentationUiModel) parcelable2;
            }
            watchFacePresentationUiModel = (WatchFacePresentationUiModel) parcelable;
        } else {
            watchFacePresentationUiModel = null;
        }
        this.J = watchFacePresentationUiModel;
        Bundle arguments2 = getArguments();
        if (arguments2 != null && arguments2.getBoolean("SHOULD_TRACK_PAGE")) {
            AnalyticsTracker analyticsTracker = this.K;
            if (analyticsTracker == null) {
                Intrinsics.h("tracker");
                throw null;
            }
            WatchFacePresentationUiModel watchFacePresentationUiModel2 = this.J;
            analyticsTracker.a(WatchTrackingUiModelKt.a(new WatchTrackingUiModel.WatchfacePageScreen(watchFacePresentationUiModel2 != null ? watchFacePresentationUiModel2.f56811c : null)));
        }
        FragmentWatchfacePresentationBinding fragmentWatchfacePresentationBindingO = O();
        Bundle arguments3 = getArguments();
        if (arguments3 != null && arguments3.getBoolean("DISPLAY_TOOLBAR")) {
            fragmentWatchfacePresentationBindingO.f51381b.f51463b.setVisibility(0);
            ToolbarTitleBinding toolbarTitleBinding = fragmentWatchfacePresentationBindingO.f51381b.f51464c;
            Toolbar toolbar = toolbarTitleBinding.f51465b;
            AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
            FragmentExtKt.a(this, toolbar, null, 6);
            WatchFacePresentationUiModel watchFacePresentationUiModel3 = this.J;
            appCompatTextView.setText(watchFacePresentationUiModel3 != null ? watchFacePresentationUiModel3.f56811c : null);
            appCompatTextView.setAccessibilityHeading(true);
        }
        fragmentWatchfacePresentationBindingO.f51383e.setAdapter((WatchfaceImagePagerAdapter) this.G.getF71699b());
        fragmentWatchfacePresentationBindingO.d.setAdapter((WatchfaceImagePagerAdapter) this.H.getF71699b());
        ViewExtKt.d(fragmentWatchfacePresentationBindingO.f51384f, new p11(this, 17));
        WatchFacePresentationUiModel watchFacePresentationUiModel4 = this.J;
        if (watchFacePresentationUiModel4 != null) {
            Bundle arguments4 = getArguments();
            R(watchFacePresentationUiModel4, arguments4 != null && arguments4.getBoolean("IS_V2"));
        }
    }
}
