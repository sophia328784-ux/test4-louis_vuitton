package com.vuitton.android.presentation.screen.connectivity.home;

import android.os.Bundle;
import android.view.View;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchVersionChooserBottomSheetBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityRouter;
import com.vuitton.android.presentation.screen.connectivity.home.WatchVersionChooserBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchVersionChooserBottomSheet extends Hilt_WatchVersionChooserBottomSheet {
    public ConnectivityRouter O;
    public final FragmentViewBindingDelegate P;
    public static final /* synthetic */ KProperty[] R = {Reflection.f71922a.h(new PropertyReference1Impl(WatchVersionChooserBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;", 0))};
    public static final Companion Q = new Companion(null);
    public static final String S = "WatchVersionChooserBottomSheet";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WatchVersionChooserBottomSheet() {
        super(R.layout.fragment_watch_version_chooser_bottom_sheet);
        setCancelable(true);
        T(true);
        U(true);
        this.P = FragmentExtKt.d(this, WatchVersionChooserBottomSheet$binding$2.f56104b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        FragmentWatchVersionChooserBottomSheetBinding fragmentWatchVersionChooserBottomSheetBinding = (FragmentWatchVersionChooserBottomSheetBinding) this.P.c(this, R[0]);
        fragmentWatchVersionChooserBottomSheetBinding.f51379b.d.setText(getString(R.string.watch_generation_selection_title));
        ViewExtKt.d(fragmentWatchVersionChooserBottomSheetBinding.f51380c, new Function1(this) { // from class: g61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchVersionChooserBottomSheet f69313c;

            {
                this.f69313c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                WatchVersionChooserBottomSheet watchVersionChooserBottomSheet = this.f69313c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        WatchVersionChooserBottomSheet.Companion companion = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        WatchVersionChooserBottomSheet.Companion companion2 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH_V3);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        WatchVersionChooserBottomSheet.Companion companion3 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        });
        final int i3 = 1;
        ViewExtKt.d(fragmentWatchVersionChooserBottomSheetBinding.d, new Function1(this) { // from class: g61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchVersionChooserBottomSheet f69313c;

            {
                this.f69313c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                WatchVersionChooserBottomSheet watchVersionChooserBottomSheet = this.f69313c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        WatchVersionChooserBottomSheet.Companion companion = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        WatchVersionChooserBottomSheet.Companion companion2 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH_V3);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        WatchVersionChooserBottomSheet.Companion companion3 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        });
        final int i4 = 2;
        ViewExtKt.d(fragmentWatchVersionChooserBottomSheetBinding.f51379b.f51461c, new Function1(this) { // from class: g61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchVersionChooserBottomSheet f69313c;

            {
                this.f69313c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                WatchVersionChooserBottomSheet watchVersionChooserBottomSheet = this.f69313c;
                View view2 = (View) obj;
                switch (i5) {
                    case 0:
                        WatchVersionChooserBottomSheet.Companion companion = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        WatchVersionChooserBottomSheet.Companion companion2 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        if (watchVersionChooserBottomSheet.O == null) {
                            Intrinsics.h("connectivityRouter");
                            throw null;
                        }
                        ConnectivityRouter.a(watchVersionChooserBottomSheet.getActivity(), SectionType.WATCH_V3);
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        WatchVersionChooserBottomSheet.Companion companion3 = WatchVersionChooserBottomSheet.Q;
                        view2.getClass();
                        watchVersionChooserBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        });
    }
}
