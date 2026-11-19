package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentConnectivitySectionDetailBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.helper.LVConnectHelper;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.DiscoverConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.fp;
import defpackage.hp;
import defpackage.v40;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0003¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectivitySectionDetailFragment extends Hilt_ConnectivitySectionDetailFragment {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public ConnectivitySectionDetailActivityRouter H;
    public static final /* synthetic */ KProperty[] J = {Reflection.f71922a.h(new PropertyReference1Impl(ConnectivitySectionDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivitySectionDetailBinding;", 0))};
    public static final Companion I = new Companion(null);
    public static final String K = "ConnectivitySectionDetailFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;", "", "", "KEY_SECTION_TYPE", "Ljava/lang/String;", "", "REQUEST_PAIR_RETURN_TO_CONNECTIVITY_PAGE", "I", "DISCOVER_VIDEO", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56262a;

        static {
            int[] iArr = new int[SectionType.values().length];
            try {
                iArr[SectionType.WATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SectionType.WATCH_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SectionType.EARPHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SectionType.KEEPALL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SectionType.SNEAKERS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SectionType.TRUNK_SPEAKER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SectionType.HORIZON_SPEAKER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f56262a = iArr;
        }
    }

    public ConnectivitySectionDetailFragment() {
        super(R.layout.fragment_connectivity_section_detail);
        this.F = FragmentExtKt.d(this, ConnectivitySectionDetailFragment$binding$2.f56263b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.G = new ViewModelLazy(Reflection.f71922a.b(ConnectivitySectionDetailViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
    }

    public static final void O(ConnectivitySectionDetailFragment connectivitySectionDetailFragment, Object obj) {
        connectivitySectionDetailFragment.getClass();
        Result.Companion companion = Result.INSTANCE;
        boolean z = obj instanceof Result.Failure;
        if (z) {
            connectivitySectionDetailFragment.P();
            return;
        }
        if (z) {
            obj = null;
        }
        VideoUiModel videoUiModel = (VideoUiModel) obj;
        if (videoUiModel != null) {
            connectivitySectionDetailFragment.R();
            ConnectivitySectionDetailActivityRouter.c(connectivitySectionDetailFragment.getActivity(), videoUiModel, null, "");
        }
    }

    public final void P() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new fp(activity, 1));
        }
    }

    public final FragmentConnectivitySectionDetailBinding Q() {
        return (FragmentConnectivitySectionDetailBinding) this.F.c(this, J[0]);
    }

    public final ConnectivitySectionDetailActivityRouter R() {
        ConnectivitySectionDetailActivityRouter connectivitySectionDetailActivityRouter = this.H;
        if (connectivitySectionDetailActivityRouter != null) {
            return connectivitySectionDetailActivityRouter;
        }
        Intrinsics.h("connectivitySectionDetailActivityRouter");
        throw null;
    }

    public final ConnectivitySectionDetailViewModelImpl S() {
        return (ConnectivitySectionDetailViewModelImpl) this.G.getF71699b();
    }

    public final void T(List list) {
        R();
        FragmentActivity activity = getActivity();
        list.getClass();
        if (activity != null) {
            activity.startActivity(SkusPLPActivity.Companion.b(SkusPLPActivity.p, activity, list));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 111 && i3 == -1) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.setResult(-1);
            }
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.section.Hilt_ConnectivitySectionDetailFragment, androidx.fragment.app.Fragment
    public void onResume() {
        String string;
        super.onResume();
        FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ = Q();
        if (fragmentConnectivitySectionDetailBindingQ.f51231h.getVisibility() == 0) {
            TextView textView = fragmentConnectivitySectionDetailBindingQ.l;
            FragmentActivity activity = getActivity();
            if (activity == null) {
                string = "";
            } else {
                try {
                    activity.getPackageManager().getPackageInfo("com.spotify.music", 0);
                    string = activity.getString(R.string.success_speaker_trunk_paired_title);
                    string.getClass();
                } catch (PackageManager.NameNotFoundException unused) {
                    string = "Get Spotify free";
                }
            }
            textView.setText(string);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0074  */
    @Override // com.vuitton.android.presentation.screen.connectivity.section.Hilt_ConnectivitySectionDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SectionType sectionType;
        String string;
        Object serializable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        LinearLayout linearLayout = Q().f51227b;
        linearLayout.getClass();
        final int i2 = 2;
        ViewExtKt.b(2, linearLayout);
        final int i3 = 1;
        ViewExtKt.b(1, Q().f51232i.f51463b);
        ToolbarTitleBinding toolbarTitleBinding = Q().f51232i.f51464c;
        final int i4 = 6;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        toolbarTitleBinding.f51466c.setAccessibilityHeading(true);
        Bundle arguments = getArguments();
        if (arguments == null) {
            sectionType = SectionType.WATCH;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("SECTION_TYPE", SectionType.class);
            } else {
                Object serializable2 = arguments.getSerializable("SECTION_TYPE");
                if (!(serializable2 instanceof SectionType)) {
                    serializable2 = null;
                }
                serializable = (SectionType) serializable2;
            }
            sectionType = (SectionType) serializable;
            if (sectionType == null) {
                sectionType = SectionType.WATCH;
            }
        }
        final int i5 = 8;
        final int i6 = 3;
        final int i7 = 0;
        switch (WhenMappings.f56262a[sectionType.ordinal()]) {
            case 1:
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ = Q();
                fragmentConnectivitySectionDetailBindingQ.f51232i.f51464c.f51466c.setText(getString(R.string.watch));
                fragmentConnectivitySectionDetailBindingQ.f51234k.setText(getString(R.string.watch_V1_V2_title_short));
                fragmentConnectivitySectionDetailBindingQ.f51230f.setImageResource(2131231379);
                fragmentConnectivitySectionDetailBindingQ.f51229e.setVisibility(8);
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i8 = i4;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i8) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                LinearLayout linearLayout2 = fragmentConnectivitySectionDetailBindingQ.g;
                linearLayout2.removeAllViews();
                Context contextRequireContext = requireContext();
                contextRequireContext.getClass();
                DiscoverConnectivityView discoverConnectivityView = new DiscoverConnectivityView(contextRequireContext);
                String string2 = getString(R.string.p12_dispatch_mywatch);
                string2.getClass();
                String string3 = getString(R.string.discover_our_video);
                string3.getClass();
                discoverConnectivityView.a(2131231363, string2, string3, null, true);
                discoverConnectivityView.setOnDiscoverButtonClickListener(new a(this, i3));
                linearLayout2.addView(discoverConnectivityView);
                Context contextRequireContext2 = requireContext();
                contextRequireContext2.getClass();
                DiscoverConnectivityView discoverConnectivityView2 = new DiscoverConnectivityView(contextRequireContext2);
                String string4 = getString(R.string.p12_watchfacepresentation_title);
                string4.getClass();
                String string5 = getString(R.string.check_out_our_watchfaces);
                string5.getClass();
                DiscoverConnectivityView.b(discoverConnectivityView2, 2131231364, string4, string5, null, 24);
                discoverConnectivityView2.setOnDiscoverButtonClickListener(new hp(this, i2));
                linearLayout2.addView(discoverConnectivityView2);
                break;
            case 2:
                S().f56278k.a(WatchTrackingUiModelKt.a(WatchTrackingUiModel.WatchV3ContentPageScreen.f56751a));
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ2 = Q();
                fragmentConnectivitySectionDetailBindingQ2.f51232i.f51464c.f51466c.setText(getString(R.string.watch));
                fragmentConnectivitySectionDetailBindingQ2.f51234k.setText(getString(R.string.connectivity_thv3_long_title));
                fragmentConnectivitySectionDetailBindingQ2.f51230f.setImageResource(2131231368);
                Button button = fragmentConnectivitySectionDetailBindingQ2.f51229e;
                button.setText(getString(R.string.watch_section_redirection_lvconnect));
                final int i8 = 13;
                ViewExtKt.d(button, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i9 = i8;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i9) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ2.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i9 = i3;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i9) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                fragmentConnectivitySectionDetailBindingQ2.g.removeAllViews();
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS = S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS), null, null, new ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1(connectivitySectionDetailViewModelImplS, null), 3);
                S().y.observe(getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$initWatchV3Section$1$4(1, this, ConnectivitySectionDetailFragment.class, "observeWatchV3CardResult", "observeWatchV3CardResult(Ljava/lang/Object;)V", 0)));
                break;
            case 3:
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ3 = Q();
                fragmentConnectivitySectionDetailBindingQ3.f51232i.f51464c.f51466c.setText(getString(R.string.earphones));
                fragmentConnectivitySectionDetailBindingQ3.f51234k.setText(getString(R.string.earphones));
                fragmentConnectivitySectionDetailBindingQ3.f51230f.setImageResource(2131231369);
                fragmentConnectivitySectionDetailBindingQ3.f51229e.setVisibility(8);
                final int i9 = 4;
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ3.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i10 = i9;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i10) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                fragmentConnectivitySectionDetailBindingQ3.g.removeAllViews();
                S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("EarphoneGeneralPage", "Earphones")));
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS2 = S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS2), null, null, new ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1(connectivitySectionDetailViewModelImplS2, null), 3);
                S().q.observe(getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$initEarphoneSection$2(1, this, ConnectivitySectionDetailFragment.class, "observeEarphoneSkuListResult", "observeEarphoneSkuListResult(Ljava/lang/Object;)V", 0)));
                break;
            case 4:
                S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.GeneralScreen(LVLightUpDeviceType.KEEPALL)));
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ4 = Q();
                fragmentConnectivitySectionDetailBindingQ4.f51232i.f51464c.f51466c.setText(getString(R.string.light_up_keepall));
                fragmentConnectivitySectionDetailBindingQ4.f51234k.setText(getString(R.string.light_up_keepall_two_lines));
                fragmentConnectivitySectionDetailBindingQ4.f51230f.setImageResource(2131231372);
                TextView textView = fragmentConnectivitySectionDetailBindingQ4.f51233j;
                textView.setVisibility(0);
                textView.setText(getString(R.string.light_up_pairing_long_message));
                Button button2 = fragmentConnectivitySectionDetailBindingQ4.f51229e;
                button2.setText(getString(R.string.light_up_pairing_keepall));
                ViewExtKt.d(button2, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i10 = i2;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i10) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ4.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i10 = i6;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i10) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                LinearLayout linearLayout3 = fragmentConnectivitySectionDetailBindingQ4.g;
                Context contextRequireContext3 = requireContext();
                contextRequireContext3.getClass();
                DiscoverConnectivityView discoverConnectivityView3 = new DiscoverConnectivityView(contextRequireContext3);
                String string6 = getString(R.string.light_up_keepall);
                string6.getClass();
                String string7 = getString(R.string.discover_keepall_video);
                string7.getClass();
                discoverConnectivityView3.a(2131231366, string6, string7, null, true);
                discoverConnectivityView3.setOnDiscoverButtonClickListener(new a(this, i7));
                linearLayout3.addView(discoverConnectivityView3);
                break;
            case 5:
                S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.GeneralScreen(LVLightUpDeviceType.X408PAIR)));
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ5 = Q();
                fragmentConnectivitySectionDetailBindingQ5.f51232i.f51464c.f51466c.setText(getString(R.string.light_up_trainers));
                fragmentConnectivitySectionDetailBindingQ5.f51234k.setText(getString(R.string.light_up_trainers));
                fragmentConnectivitySectionDetailBindingQ5.f51230f.setImageResource(2131231375);
                Button button3 = fragmentConnectivitySectionDetailBindingQ5.f51229e;
                button3.setText(getString(R.string.light_up_pairing_trainers));
                ViewExtKt.d(button3, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i10 = i7;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i10) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                final int i10 = 5;
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ5.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i11 = i10;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i11) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                LinearLayout linearLayout4 = fragmentConnectivitySectionDetailBindingQ5.g;
                Context contextRequireContext4 = requireContext();
                contextRequireContext4.getClass();
                DiscoverConnectivityView discoverConnectivityView4 = new DiscoverConnectivityView(contextRequireContext4);
                String string8 = getString(R.string.light_up_trainers);
                string8.getClass();
                String string9 = getString(R.string.discover_trainers_video);
                string9.getClass();
                discoverConnectivityView4.a(2131231366, string8, string9, null, true);
                discoverConnectivityView4.setOnDiscoverButtonClickListener(new a(this, i6));
                linearLayout4.addView(discoverConnectivityView4);
                break;
            case 6:
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ6 = Q();
                fragmentConnectivitySectionDetailBindingQ6.f51232i.f51464c.f51466c.setText(getString(R.string.trunk_speaker));
                fragmentConnectivitySectionDetailBindingQ6.f51234k.setText(getString(R.string.trunk_speaker));
                fragmentConnectivitySectionDetailBindingQ6.f51230f.setImageResource(2131231378);
                final int i11 = 7;
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ6.f51229e, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i12 = i11;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i12) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ6.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i12 = i5;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i12) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity != null) {
                                    FaqActivity.t.getClass();
                                    activity.startActivity(FaqActivity.Companion.a(activity, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                if (activity2 != null) {
                                    activity2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                FrameLayout frameLayout = fragmentConnectivitySectionDetailBindingQ6.f51231h;
                frameLayout.setVisibility(0);
                TextView textView2 = fragmentConnectivitySectionDetailBindingQ6.l;
                FragmentActivity activity = getActivity();
                if (activity == null) {
                    string = "";
                } else {
                    try {
                        activity.getPackageManager().getPackageInfo("com.spotify.music", 0);
                        string = activity.getString(R.string.success_speaker_trunk_paired_title);
                        string.getClass();
                    } catch (PackageManager.NameNotFoundException unused) {
                        string = "Get Spotify free";
                    }
                }
                textView2.setText(string);
                final int i12 = 9;
                ViewExtKt.d(frameLayout, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i13 = i12;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i13) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity2 != null) {
                                    FaqActivity.t.getClass();
                                    activity2.startActivity(FaqActivity.Companion.a(activity2, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity3 = connectivitySectionDetailFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                final int i13 = 10;
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ6.d, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i14 = i13;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i14) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity2 != null) {
                                    FaqActivity.t.getClass();
                                    activity2.startActivity(FaqActivity.Companion.a(activity2, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity3 = connectivitySectionDetailFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS3 = S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS3), null, null, new ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1(connectivitySectionDetailViewModelImplS3, null), 3);
                S().u.observe(getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$initTrunkSpeakerSection$2(1, this, ConnectivitySectionDetailFragment.class, "observeTruckSpeakersCardResult", "observeTruckSpeakersCardResult(Ljava/lang/Object;)V", 0)));
                break;
            case 7:
                FragmentConnectivitySectionDetailBinding fragmentConnectivitySectionDetailBindingQ7 = Q();
                fragmentConnectivitySectionDetailBindingQ7.f51232i.f51464c.f51466c.setText(getString(R.string.horizon_speaker_short_title));
                fragmentConnectivitySectionDetailBindingQ7.f51234k.setText(getString(R.string.horizon_speaker_long_title));
                fragmentConnectivitySectionDetailBindingQ7.f51230f.setImageResource(2131231376);
                Context contextRequireContext5 = requireContext();
                contextRequireContext5.getClass();
                try {
                    contextRequireContext5.getPackageManager().getPackageInfo("com.vuittoncompanion.android", 0);
                } catch (PackageManager.NameNotFoundException unused2) {
                    i3 = 0;
                }
                Button button4 = fragmentConnectivitySectionDetailBindingQ7.f51229e;
                button4.setText(i3 != 0 ? getString(R.string.lvconnect_access_title) : getString(R.string.horizon_speaker_download_app));
                final int i14 = 11;
                ViewExtKt.d(button4, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i15 = i14;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i15) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity2 != null) {
                                    FaqActivity.t.getClass();
                                    activity2.startActivity(FaqActivity.Companion.a(activity2, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity3 = connectivitySectionDetailFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                final int i15 = 12;
                ViewExtKt.d(fragmentConnectivitySectionDetailBindingQ7.f51228c, new Function1(this) { // from class: gp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConnectivitySectionDetailFragment f69457c;

                    {
                        this.f69457c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i16 = i15;
                        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69457c;
                        View view2 = (View) obj;
                        switch (i16) {
                            case 0:
                                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.X408PAIR)));
                                LightUpActivity.Companion companion2 = LightUpActivity.t;
                                Context context = view2.getContext();
                                context.getClass();
                                LightupDeviceType lightupDeviceType = LightupDeviceType.X408PAIR;
                                companion2.getClass();
                                lightupDeviceType.getClass();
                                Intent intentPutExtra = new Intent(context, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra, 111);
                                break;
                            case 1:
                                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.WATCH_V3);
                                break;
                            case 2:
                                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairButtonClickEvent(LVLightUpDeviceType.KEEPALL)));
                                LightUpActivity.Companion companion5 = LightUpActivity.t;
                                Context context2 = view2.getContext();
                                context2.getClass();
                                LightupDeviceType lightupDeviceType2 = LightupDeviceType.KEEPALL;
                                companion5.getClass();
                                lightupDeviceType2.getClass();
                                Intent intentPutExtra2 = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(intentPutExtra2, 111);
                                break;
                            case 3:
                                ConnectivitySectionDetailFragment.Companion companion6 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.KEEPALL)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_KEEP_ALL);
                                break;
                            case 4:
                                ConnectivitySectionDetailFragment.Companion companion7 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Earphones_FAQ", "Earphones")));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.EARPHONES);
                                break;
                            case 5:
                                ConnectivitySectionDetailFragment.Companion companion8 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.NeedHelpClickEvent(LVLightUpDeviceType.X408PAIR)));
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.LIGHT_UP_SNEAKERS);
                                break;
                            case 6:
                                ConnectivitySectionDetailFragment.Companion companion9 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                FragmentActivity activity2 = connectivitySectionDetailFragment.getActivity();
                                FaqType faqType = FaqType.WATCH_FAQ;
                                faqType.getClass();
                                if (activity2 != null) {
                                    FaqActivity.t.getClass();
                                    activity2.startActivity(FaqActivity.Companion.a(activity2, faqType));
                                }
                                break;
                            case 7:
                                ConnectivitySectionDetailFragment.Companion companion10 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                ScanActivity.Companion companion11 = ScanActivity.t;
                                Context context3 = view2.getContext();
                                context3.getClass();
                                companion11.getClass();
                                connectivitySectionDetailFragment.startActivityForResult(new Intent(context3, (Class<?>) ScanActivity.class), 111);
                                break;
                            case 8:
                                ConnectivitySectionDetailFragment.Companion companion12 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                                break;
                            case 9:
                                ConnectivitySectionDetailFragment.Companion companion13 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                LVTrunkSpotifyHelper.b(connectivitySectionDetailFragment.getActivity());
                                break;
                            case 10:
                                ConnectivitySectionDetailFragment.Companion companion14 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity activity3 = connectivitySectionDetailFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                                }
                                break;
                            case 11:
                                ConnectivitySectionDetailFragment.Companion companion15 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity);
                                break;
                            case 12:
                                ConnectivitySectionDetailFragment.Companion companion16 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                connectivitySectionDetailFragment.R();
                                ConnectivitySectionDetailActivityRouter.a(connectivitySectionDetailFragment.getActivity(), FaqCategoryType.SPEAKER_HORIZON);
                                break;
                            default:
                                ConnectivitySectionDetailFragment.Companion companion17 = ConnectivitySectionDetailFragment.I;
                                view2.getClass();
                                FragmentActivity fragmentActivityRequireActivity2 = connectivitySectionDetailFragment.requireActivity();
                                fragmentActivityRequireActivity2.getClass();
                                LVConnectHelper.a(fragmentActivityRequireActivity2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS4 = S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS4), null, null, new ConnectivitySectionDetailViewModelImpl$getHorizonSpeakerCardsToDisplay$1(connectivitySectionDetailViewModelImplS4, null), 3);
                S().w.observe(getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$initHorizonSpeakerSection$2(1, this, ConnectivitySectionDetailFragment.class, "observeHorizonSpeakersCardResult", "observeHorizonSpeakersCardResult(Ljava/lang/Object;)V", 0)));
                break;
            default:
                v40.g();
                break;
        }
    }
}
