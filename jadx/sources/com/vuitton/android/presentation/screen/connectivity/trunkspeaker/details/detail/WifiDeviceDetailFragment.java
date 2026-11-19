package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDetailPageBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkUpdateLoadingDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.cl0;
import defpackage.iq0;
import defpackage.js;
import defpackage.p11;
import defpackage.qt0;
import defpackage.rt0;
import defpackage.u61;
import defpackage.v61;
import defpackage.w61;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet$Listener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WifiDeviceDetailFragment extends Hilt_WifiDeviceDetailFragment implements DispositionListBottomSheet.Listener {
    public final Lazy F;
    public TrunkUpdateLoadingDialogFragment G;
    public final ViewModelLazy H;
    public ConnectivitySectionDetailActivityRouter I;
    public TrunkSpeakerRouter J;
    public LVEventSender K;
    public final FragmentViewBindingDelegate L;
    public final js M;
    public static final /* synthetic */ KProperty[] O = {Reflection.f71922a.h(new PropertyReference1Impl(WifiDeviceDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;", 0))};
    public static final Companion N = new Companion(null);
    public static final String P = "WifiDeviceDetailFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;", "", "", "KEY_DEVICE", "Ljava/lang/String;", "", "WIFI_CONFIGURATION_VALUE", "J", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56503a;

        static {
            int[] iArr = new int[TrunkGeneralHelper.SpeakerTrunkType.values().length];
            try {
                iArr[TrunkGeneralHelper.SpeakerTrunkType.PM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TrunkGeneralHelper.SpeakerTrunkType.GM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56503a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<List<? extends FaqCategory>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            List list = (List) obj;
            list.getClass();
            WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) this.receiver;
            Companion companion = WifiDeviceDetailFragment.N;
            FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBindingO = wifiDeviceDetailFragment.O();
            if (list.isEmpty()) {
                fragmentTrunkSpeakerDetailPageBindingO.g.setVisibility(8);
                fragmentTrunkSpeakerDetailPageBindingO.f51329b.setVisibility(8);
            } else {
                View view = fragmentTrunkSpeakerDetailPageBindingO.g;
                TextView textView = fragmentTrunkSpeakerDetailPageBindingO.f51329b;
                view.setVisibility(0);
                textView.setVisibility(0);
                textView.setText(((FaqCategory) list.get(0)).f67308b);
                ViewExtKt.d(textView, new u61(wifiDeviceDetailFragment, 0));
            }
            return Unit.f71739a;
        }
    }

    public WifiDeviceDetailFragment() {
        super(R.layout.fragment_trunk_speaker_detail_page);
        this.F = LazyKt.b(new v61(this, 1));
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$special$$inlined$viewModels$default$2
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
        this.H = new ViewModelLazy(Reflection.f71922a.b(WifiDeviceDetailViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$special$$inlined$viewModels$default$4
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
        this.L = FragmentExtKt.d(this, WifiDeviceDetailFragment$binding$2.f56504b);
        this.M = new js(this, 3);
    }

    public final FragmentTrunkSpeakerDetailPageBinding O() {
        return (FragmentTrunkSpeakerDetailPageBinding) this.L.c(this, O[0]);
    }

    public final void P() {
        FragmentActivity activity;
        if (!isAdded() || (activity = getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new w61(this, 1));
    }

    public final LPDevice Q() {
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        String str = (String) this.F.getF71699b();
        if (str == null || str.length() == 0) {
            return null;
        }
        return LPDeviceManager.getInstance().deviceForID(str);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet.Listener
    public final void n(LPPlayChannel lPPlayChannel) {
        lPPlayChannel.getClass();
        Context context = getContext();
        if (context != null) {
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            TrunkGeneralHelper.d(getActivity(), Q(), new cl0(lPPlayChannel, this, context, 23), null, 24);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        O().f51335j.setOnFocusChangeListener(null);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.Hilt_WifiDeviceDetailFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBindingO = O();
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        TrunkGeneralHelper.d(getActivity(), Q(), new p11(fragmentTrunkSpeakerDetailPageBindingO, 21), null, 24);
        O().d.setText(LVTrunkSpotifyHelper.a(getActivity()));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.Hilt_WifiDeviceDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBindingO = O();
        ToolbarTitleBinding toolbarTitleBinding = fragmentTrunkSpeakerDetailPageBindingO.l.f51464c;
        int i2 = 6;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        int i3 = 1;
        toolbarTitleBinding.f51466c.setAccessibilityHeading(true);
        LPDevice lPDeviceQ = Q();
        if (lPDeviceQ != null) {
            AppCompatTextView appCompatTextView = fragmentTrunkSpeakerDetailPageBindingO.l.f51464c.f51466c;
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB = TrunkGeneralHelper.b(lPDeviceQ);
            int i4 = speakerTrunkTypeB == null ? -1 : WhenMappings.f56503a[speakerTrunkTypeB.ordinal()];
            if (i4 != 1) {
                string = i4 != 2 ? getString(R.string.trunk_speaker) : getString(R.string.trunk_speaker_gm);
            } else {
                string = getString(R.string.trunk_speaker_pm);
            }
            appCompatTextView.setText(string);
            TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB2 = TrunkGeneralHelper.b(lPDeviceQ);
            int i5 = speakerTrunkTypeB2 != null ? WhenMappings.f56503a[speakerTrunkTypeB2.ordinal()] : -1;
            if (i5 == 1) {
                O().n.setImageResource(2131231641);
            } else if (i5 == 2) {
                O().n.setImageResource(2131231639);
            }
            final FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBindingO2 = O();
            fragmentTrunkSpeakerDetailPageBindingO2.f51335j.setFilters(new InputFilter[]{new qt0(i3)});
            ClickableEditText clickableEditText = fragmentTrunkSpeakerDetailPageBindingO2.f51335j;
            clickableEditText.addTextChangedListener(new TextWatcher() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$setupDeviceNameField$1$2
                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                    ClickableEditText clickableEditText2 = fragmentTrunkSpeakerDetailPageBindingO2.f51335j;
                    editable.getClass();
                    String string2 = editable.toString();
                    if (StringKtExtKt.e(string2)) {
                        clickableEditText2.removeTextChangedListener(this);
                        clickableEditText2.setText(TrunkGeneralHelper.f56578b.replace(string2, ""));
                        clickableEditText2.setSelection(string2.length());
                        clickableEditText2.addTextChangedListener(this);
                    }
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                    charSequence.getClass();
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                    charSequence.getClass();
                }
            });
            LPDeviceStatus deviceStatus = lPDeviceQ.getDeviceStatus();
            String friendlyName = deviceStatus != null ? deviceStatus.getFriendlyName() : null;
            if (friendlyName == null) {
                friendlyName = "";
            }
            clickableEditText.setText(friendlyName);
            clickableEditText.setOnFocusChangeListener(this.M);
            clickableEditText.setOnEditorActionListener(new rt0(fragmentTrunkSpeakerDetailPageBindingO2, this, i3));
            ViewExtKt.d(fragmentTrunkSpeakerDetailPageBindingO.n, new u61(this, 5));
            ViewExtKt.d(fragmentTrunkSpeakerDetailPageBindingO.d, new u61(this, i2));
            ViewExtKt.d(fragmentTrunkSpeakerDetailPageBindingO.f51331e, new u61(this, 7));
            ViewExtKt.d(fragmentTrunkSpeakerDetailPageBindingO.f51332f, new u61(this, 8));
            ViewExtKt.d(fragmentTrunkSpeakerDetailPageBindingO.f51330c, new u61(this, 9));
            TrunkGeneralHelper.d(getActivity(), lPDeviceQ, new iq0(this, fragmentTrunkSpeakerDetailPageBindingO, lPDeviceQ, lPDeviceQ, 4), null, 24);
        }
        ViewModelLazy viewModelLazy = this.H;
        ((WifiDeviceDetailViewModel) viewModelLazy.getF71699b()).mo86h0();
        ((WifiDeviceDetailViewModel) viewModelLazy.getF71699b()).getF56522c().observe(getViewLifecycleOwner(), new WifiDeviceDetailFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, WifiDeviceDetailFragment.class, "handleTrunkSpeakerFaqResult", "handleTrunkSpeakerFaqResult(Ljava/util/List;)V", 0)));
    }
}
