package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.linkplay.medialib.ContentTree;
import com.lp.ble.manager.ApItem;
import com.lp.ble.manager.BLEConnectApResult;
import com.lp.ble.manager.LPBLEManager;
import com.lp.ble.manager.LPConnectWiFiListener;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerConnectToWifiBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openConnectToWifi$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$connectToWifi$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$setWLANList$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist.WifiListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.views.PasswordClickableEditTextListener;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.vo;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\f\rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet$Listener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectToWifiFragment extends Hilt_ConnectToWifiFragment implements WifiListBottomSheet.Listener {
    public final FragmentViewBindingDelegate F;
    public TrunkGeneralHelper.SpeakerTrunkType G;
    public ScanMainBottomSheet$openConnectToWifi$listener$1 H;
    public ApItem I;
    public final ArrayList J;
    public final ViewModelLazy K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(ConnectToWifiFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;", 0))};
    public static final Companion L = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public ConnectToWifiFragment() {
        super(R.layout.fragment_trunk_speaker_connect_to_wifi);
        this.F = FragmentExtKt.d(this, ConnectToWifiFragment$binding$2.f56619b);
        this.J = new ArrayList();
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$special$$inlined$viewModels$default$2
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
        this.K = new ViewModelLazy(Reflection.f71922a.b(ConnectToWifiViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$special$$inlined$viewModels$default$4
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

    public static final void O(ConnectToWifiFragment connectToWifiFragment) {
        FragmentActivity activity = connectToWifiFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new vo(connectToWifiFragment, 3));
        }
    }

    public final FragmentTrunkSpeakerConnectToWifiBinding P() {
        return (FragmentTrunkSpeakerConnectToWifiBinding) this.F.c(this, M[0]);
    }

    public final void Q() {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        WifiListBottomSheet.Companion companion = WifiListBottomSheet.S;
        ApItem apItem = this.I;
        companion.getClass();
        ArrayList arrayList = this.J;
        arrayList.getClass();
        WifiListBottomSheet wifiListBottomSheet = new WifiListBottomSheet();
        Bundle bundle = new Bundle();
        bundle.putSerializable("WIFI_LIST", arrayList);
        bundle.putSerializable("SELECTED_WIFI", apItem);
        wifiListBottomSheet.setArguments(bundle);
        wifiListBottomSheet.P = this;
        ScanMainBottomSheet.R.getClass();
        wifiListBottomSheet.show(supportFragmentManager, ScanMainBottomSheet.S);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_ConnectToWifiFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        FragmentTrunkSpeakerConnectToWifiBinding fragmentTrunkSpeakerConnectToWifiBindingP = P();
        fragmentTrunkSpeakerConnectToWifiBindingP.d.setClickableEditTextListener(new PasswordClickableEditTextListener());
        ViewExtKt.d(fragmentTrunkSpeakerConnectToWifiBindingP.f51324c, new Function1(this) { // from class: uo

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectToWifiFragment f80372c;

            {
                this.f80372c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FragmentActivity activity;
                FragmentActivity activity2;
                int i3 = i2;
                int i4 = 1;
                int i5 = 0;
                ConnectToWifiFragment connectToWifiFragment = this.f80372c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        ConnectToWifiFragment.Companion companion = ConnectToWifiFragment.L;
                        view2.getClass();
                        boolean z = connectToWifiFragment.I != null;
                        if (!z && (activity2 = connectToWifiFragment.getActivity()) != null) {
                            activity2.runOnUiThread(new vo(connectToWifiFragment, 2));
                        }
                        if (z) {
                            Editable text = connectToWifiFragment.P().d.getText();
                            boolean z2 = text == null || text.length() == 0;
                            if (z2 && (activity = connectToWifiFragment.getActivity()) != null) {
                                activity.runOnUiThread(new vo(connectToWifiFragment, i5));
                            }
                            if (!z2) {
                                FragmentActivity activity3 = connectToWifiFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.runOnUiThread(new vo(connectToWifiFragment, i4));
                                }
                                ApItem apItem = connectToWifiFragment.I;
                                apItem.getClass();
                                String strValueOf = String.valueOf(connectToWifiFragment.P().d.getText());
                                final ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$1 = new ConnectToWifiFragment$connectToWifi$1(connectToWifiFragment);
                                LPBLEManager.getInstance().connectWLAN(apItem.getSsid(), strValueOf, apItem.getAuth(), apItem.getEncry(), new LPConnectWiFiListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkWifiHelper$connectToWifi$1
                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectFailed(Exception exc) {
                                        exc.getClass();
                                        connectToWifiFragment$connectToWifi$1.a();
                                    }

                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectResult(BLEConnectApResult bLEConnectApResult, String str) {
                                        String string;
                                        String string2;
                                        ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$2 = connectToWifiFragment$connectToWifi$1;
                                        bLEConnectApResult.getClass();
                                        str.getClass();
                                        if (bLEConnectApResult == BLEConnectApResult.LP_CONNECT_AP_SUCCESS) {
                                            try {
                                                JSONObject jSONObject = new JSONObject(str);
                                                String string3 = "";
                                                if (jSONObject.has(m.v)) {
                                                    string = jSONObject.getString(m.v);
                                                    string.getClass();
                                                } else {
                                                    string = "";
                                                }
                                                if (!string.equals(ContentTree.ROOT_ID)) {
                                                    connectToWifiFragment$connectToWifi$2.a();
                                                    return;
                                                }
                                                if (jSONObject.has("IP")) {
                                                    string2 = jSONObject.getString("IP");
                                                    string2.getClass();
                                                } else {
                                                    string2 = "";
                                                }
                                                if (jSONObject.has("UUID")) {
                                                    string3 = jSONObject.getString("UUID");
                                                    string3.getClass();
                                                }
                                                if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                                                    return;
                                                }
                                                connectToWifiFragment$connectToWifi$2.b(string2, string3);
                                            } catch (JSONException e2) {
                                                connectToWifiFragment$connectToWifi$2.a();
                                                e2.printStackTrace();
                                            }
                                        }
                                    }
                                });
                            }
                        }
                        break;
                    case 1:
                        ConnectToWifiFragment.Companion companion2 = ConnectToWifiFragment.L;
                        view2.getClass();
                        LPBLEManager.getInstance().disConnect();
                        ScanMainBottomSheet$openConnectToWifi$listener$1 scanMainBottomSheet$openConnectToWifi$listener$1 = connectToWifiFragment.H;
                        if (scanMainBottomSheet$openConnectToWifi$listener$1 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectToWifi$listener$1.f56597a);
                        }
                        break;
                    default:
                        ConnectToWifiFragment.Companion companion3 = ConnectToWifiFragment.L;
                        view2.getClass();
                        if (connectToWifiFragment.J.isEmpty()) {
                            wo woVar = new wo(connectToWifiFragment, i5);
                            FragmentActivity activity4 = connectToWifiFragment.getActivity();
                            if (activity4 != null) {
                                activity4.runOnUiThread(new vo(connectToWifiFragment, i4));
                            }
                            LPBLEManager.getInstance().getWLANList(new ConnectToWifiFragment$setWLANList$1(connectToWifiFragment, woVar));
                        } else {
                            connectToWifiFragment.Q();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(fragmentTrunkSpeakerConnectToWifiBindingP.f51323b, new Function1(this) { // from class: uo

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectToWifiFragment f80372c;

            {
                this.f80372c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FragmentActivity activity;
                FragmentActivity activity2;
                int i4 = i3;
                int i5 = 1;
                int i6 = 0;
                ConnectToWifiFragment connectToWifiFragment = this.f80372c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        ConnectToWifiFragment.Companion companion = ConnectToWifiFragment.L;
                        view2.getClass();
                        boolean z = connectToWifiFragment.I != null;
                        if (!z && (activity2 = connectToWifiFragment.getActivity()) != null) {
                            activity2.runOnUiThread(new vo(connectToWifiFragment, 2));
                        }
                        if (z) {
                            Editable text = connectToWifiFragment.P().d.getText();
                            boolean z2 = text == null || text.length() == 0;
                            if (z2 && (activity = connectToWifiFragment.getActivity()) != null) {
                                activity.runOnUiThread(new vo(connectToWifiFragment, i6));
                            }
                            if (!z2) {
                                FragmentActivity activity3 = connectToWifiFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.runOnUiThread(new vo(connectToWifiFragment, i5));
                                }
                                ApItem apItem = connectToWifiFragment.I;
                                apItem.getClass();
                                String strValueOf = String.valueOf(connectToWifiFragment.P().d.getText());
                                final ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$1 = new ConnectToWifiFragment$connectToWifi$1(connectToWifiFragment);
                                LPBLEManager.getInstance().connectWLAN(apItem.getSsid(), strValueOf, apItem.getAuth(), apItem.getEncry(), new LPConnectWiFiListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkWifiHelper$connectToWifi$1
                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectFailed(Exception exc) {
                                        exc.getClass();
                                        connectToWifiFragment$connectToWifi$1.a();
                                    }

                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectResult(BLEConnectApResult bLEConnectApResult, String str) {
                                        String string;
                                        String string2;
                                        ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$2 = connectToWifiFragment$connectToWifi$1;
                                        bLEConnectApResult.getClass();
                                        str.getClass();
                                        if (bLEConnectApResult == BLEConnectApResult.LP_CONNECT_AP_SUCCESS) {
                                            try {
                                                JSONObject jSONObject = new JSONObject(str);
                                                String string3 = "";
                                                if (jSONObject.has(m.v)) {
                                                    string = jSONObject.getString(m.v);
                                                    string.getClass();
                                                } else {
                                                    string = "";
                                                }
                                                if (!string.equals(ContentTree.ROOT_ID)) {
                                                    connectToWifiFragment$connectToWifi$2.a();
                                                    return;
                                                }
                                                if (jSONObject.has("IP")) {
                                                    string2 = jSONObject.getString("IP");
                                                    string2.getClass();
                                                } else {
                                                    string2 = "";
                                                }
                                                if (jSONObject.has("UUID")) {
                                                    string3 = jSONObject.getString("UUID");
                                                    string3.getClass();
                                                }
                                                if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                                                    return;
                                                }
                                                connectToWifiFragment$connectToWifi$2.b(string2, string3);
                                            } catch (JSONException e2) {
                                                connectToWifiFragment$connectToWifi$2.a();
                                                e2.printStackTrace();
                                            }
                                        }
                                    }
                                });
                            }
                        }
                        break;
                    case 1:
                        ConnectToWifiFragment.Companion companion2 = ConnectToWifiFragment.L;
                        view2.getClass();
                        LPBLEManager.getInstance().disConnect();
                        ScanMainBottomSheet$openConnectToWifi$listener$1 scanMainBottomSheet$openConnectToWifi$listener$1 = connectToWifiFragment.H;
                        if (scanMainBottomSheet$openConnectToWifi$listener$1 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectToWifi$listener$1.f56597a);
                        }
                        break;
                    default:
                        ConnectToWifiFragment.Companion companion3 = ConnectToWifiFragment.L;
                        view2.getClass();
                        if (connectToWifiFragment.J.isEmpty()) {
                            wo woVar = new wo(connectToWifiFragment, i6);
                            FragmentActivity activity4 = connectToWifiFragment.getActivity();
                            if (activity4 != null) {
                                activity4.runOnUiThread(new vo(connectToWifiFragment, i5));
                            }
                            LPBLEManager.getInstance().getWLANList(new ConnectToWifiFragment$setWLANList$1(connectToWifiFragment, woVar));
                        } else {
                            connectToWifiFragment.Q();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        ImageView imageView = fragmentTrunkSpeakerConnectToWifiBindingP.f51325e;
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        TrunkGeneralHelper.SpeakerTrunkType speakerTrunkType = this.G;
        int i4 = speakerTrunkType == null ? -1 : TrunkGeneralHelper.WhenMappings.f56579a[speakerTrunkType.ordinal()];
        final int i5 = 2;
        int i6 = 2131231758;
        if (i4 != 1 && i4 == 2) {
            i6 = 2131231757;
        }
        imageView.setImageResource(i6);
        ViewExtKt.d(fragmentTrunkSpeakerConnectToWifiBindingP.g, new Function1(this) { // from class: uo

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectToWifiFragment f80372c;

            {
                this.f80372c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FragmentActivity activity;
                FragmentActivity activity2;
                int i7 = i5;
                int i8 = 1;
                int i9 = 0;
                ConnectToWifiFragment connectToWifiFragment = this.f80372c;
                View view2 = (View) obj;
                switch (i7) {
                    case 0:
                        ConnectToWifiFragment.Companion companion = ConnectToWifiFragment.L;
                        view2.getClass();
                        boolean z = connectToWifiFragment.I != null;
                        if (!z && (activity2 = connectToWifiFragment.getActivity()) != null) {
                            activity2.runOnUiThread(new vo(connectToWifiFragment, 2));
                        }
                        if (z) {
                            Editable text = connectToWifiFragment.P().d.getText();
                            boolean z2 = text == null || text.length() == 0;
                            if (z2 && (activity = connectToWifiFragment.getActivity()) != null) {
                                activity.runOnUiThread(new vo(connectToWifiFragment, i9));
                            }
                            if (!z2) {
                                FragmentActivity activity3 = connectToWifiFragment.getActivity();
                                if (activity3 != null) {
                                    activity3.runOnUiThread(new vo(connectToWifiFragment, i8));
                                }
                                ApItem apItem = connectToWifiFragment.I;
                                apItem.getClass();
                                String strValueOf = String.valueOf(connectToWifiFragment.P().d.getText());
                                final ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$1 = new ConnectToWifiFragment$connectToWifi$1(connectToWifiFragment);
                                LPBLEManager.getInstance().connectWLAN(apItem.getSsid(), strValueOf, apItem.getAuth(), apItem.getEncry(), new LPConnectWiFiListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkWifiHelper$connectToWifi$1
                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectFailed(Exception exc) {
                                        exc.getClass();
                                        connectToWifiFragment$connectToWifi$1.a();
                                    }

                                    @Override // com.lp.ble.manager.LPConnectWiFiListener
                                    public final void LPConnectResult(BLEConnectApResult bLEConnectApResult, String str) {
                                        String string;
                                        String string2;
                                        ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$2 = connectToWifiFragment$connectToWifi$1;
                                        bLEConnectApResult.getClass();
                                        str.getClass();
                                        if (bLEConnectApResult == BLEConnectApResult.LP_CONNECT_AP_SUCCESS) {
                                            try {
                                                JSONObject jSONObject = new JSONObject(str);
                                                String string3 = "";
                                                if (jSONObject.has(m.v)) {
                                                    string = jSONObject.getString(m.v);
                                                    string.getClass();
                                                } else {
                                                    string = "";
                                                }
                                                if (!string.equals(ContentTree.ROOT_ID)) {
                                                    connectToWifiFragment$connectToWifi$2.a();
                                                    return;
                                                }
                                                if (jSONObject.has("IP")) {
                                                    string2 = jSONObject.getString("IP");
                                                    string2.getClass();
                                                } else {
                                                    string2 = "";
                                                }
                                                if (jSONObject.has("UUID")) {
                                                    string3 = jSONObject.getString("UUID");
                                                    string3.getClass();
                                                }
                                                if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                                                    return;
                                                }
                                                connectToWifiFragment$connectToWifi$2.b(string2, string3);
                                            } catch (JSONException e2) {
                                                connectToWifiFragment$connectToWifi$2.a();
                                                e2.printStackTrace();
                                            }
                                        }
                                    }
                                });
                            }
                        }
                        break;
                    case 1:
                        ConnectToWifiFragment.Companion companion2 = ConnectToWifiFragment.L;
                        view2.getClass();
                        LPBLEManager.getInstance().disConnect();
                        ScanMainBottomSheet$openConnectToWifi$listener$1 scanMainBottomSheet$openConnectToWifi$listener$1 = connectToWifiFragment.H;
                        if (scanMainBottomSheet$openConnectToWifi$listener$1 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectToWifi$listener$1.f56597a);
                        }
                        break;
                    default:
                        ConnectToWifiFragment.Companion companion3 = ConnectToWifiFragment.L;
                        view2.getClass();
                        if (connectToWifiFragment.J.isEmpty()) {
                            wo woVar = new wo(connectToWifiFragment, i9);
                            FragmentActivity activity4 = connectToWifiFragment.getActivity();
                            if (activity4 != null) {
                                activity4.runOnUiThread(new vo(connectToWifiFragment, i8));
                            }
                            LPBLEManager.getInstance().getWLANList(new ConnectToWifiFragment$setWLANList$1(connectToWifiFragment, woVar));
                        } else {
                            connectToWifiFragment.Q();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
