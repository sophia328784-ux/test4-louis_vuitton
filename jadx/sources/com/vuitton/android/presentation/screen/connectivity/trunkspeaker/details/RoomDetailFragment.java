package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwnerKt;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerRoomDetailPageBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.js;
import defpackage.ot0;
import defpackage.pt0;
import defpackage.qt0;
import defpackage.rp0;
import defpackage.rt0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RoomDetailFragment extends Hilt_RoomDetailFragment implements RoomDetailDeviceListAdapter.Listener {
    public final FragmentViewBindingDelegate F;
    public WifiTrunkDevice.RoomSpeaker G;
    public final Lazy H;
    public final js I;
    public TrunkSpeakerRouter J;
    public LVEventSender K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(RoomDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;", 0))};
    public static final Companion L = new Companion(null);
    public static final String N = "RoomDetailFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;", "", "", "KEY_DEVICE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RoomDetailFragment() {
        super(R.layout.fragment_trunk_speaker_room_detail_page);
        this.F = FragmentExtKt.d(this, RoomDetailFragment$binding$2.f56471b);
        this.H = LazyKt.b(new ot0(this, 0));
        this.I = new js(this, 2);
    }

    public static final void O(RoomDetailFragment roomDetailFragment, LPDevice lPDevice, List list) {
        FragmentManager supportFragmentManager;
        List list2;
        BuildersKt.c(LifecycleOwnerKt.a(roomDetailFragment), null, null, new RoomDetailFragment$handleDeviceRemoval$1(roomDetailFragment, null), 3);
        if (lPDevice != null && (list2 = list) != null && !list2.isEmpty()) {
            roomDetailFragment.requireActivity().runOnUiThread(new pt0(roomDetailFragment, 1));
            roomDetailFragment.G = new WifiTrunkDevice.RoomSpeaker(lPDevice, new ArrayList(list2));
            roomDetailFragment.R();
            roomDetailFragment.Q();
            return;
        }
        FragmentActivity activity = roomDetailFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new pt0(roomDetailFragment, 0));
        }
        FragmentActivity activity2 = roomDetailFragment.getActivity();
        if (activity2 == null || (supportFragmentManager = activity2.getSupportFragmentManager()) == null) {
            return;
        }
        supportFragmentManager.V();
    }

    public final FragmentTrunkSpeakerRoomDetailPageBinding P() {
        return (FragmentTrunkSpeakerRoomDetailPageBinding) this.F.c(this, M[0]);
    }

    public final void Q() {
        WifiTrunkDevice.RoomSpeaker roomSpeaker = this.G;
        if (roomSpeaker != null) {
            ArrayList arrayList = new ArrayList();
            LPDevice lPDevice = roomSpeaker.f56555b;
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            arrayList.add(new WifiTrunkDevice.SimpleSpeaker(lPDevice, TrunkGeneralHelper.b(lPDevice)));
            ArrayList<LPDevice> arrayList2 = roomSpeaker.f56556c;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            for (LPDevice lPDevice2 : arrayList2) {
                TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                arrayList3.add(new WifiTrunkDevice.SimpleSpeaker(lPDevice2, TrunkGeneralHelper.b(lPDevice2)));
            }
            arrayList.addAll(arrayList3);
            RoomDetailDeviceListAdapter roomDetailDeviceListAdapter = (RoomDetailDeviceListAdapter) this.H.getF71699b();
            roomDetailDeviceListAdapter.getClass();
            ArrayList arrayList4 = roomDetailDeviceListAdapter.f56467c;
            arrayList4.clear();
            arrayList4.addAll(arrayList);
            roomDetailDeviceListAdapter.notifyDataSetChanged();
        }
    }

    public final void R() {
        WifiTrunkDevice.RoomSpeaker roomSpeaker = this.G;
        if (roomSpeaker != null) {
            int i2 = 0;
            P().d.setFilters(new InputFilter[]{new qt0(0)});
            P().d.addTextChangedListener(new TextWatcher() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment$setupRoomNameField$1$2
                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                    editable.getClass();
                    String string = editable.toString();
                    if (StringKtExtKt.e(string)) {
                        RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                        RoomDetailFragment roomDetailFragment = this.f56476b;
                        roomDetailFragment.P().d.removeTextChangedListener(this);
                        roomDetailFragment.P().d.setText(TrunkGeneralHelper.f56578b.replace(string, ""));
                        roomDetailFragment.P().d.setSelection(string.length());
                        roomDetailFragment.P().d.addTextChangedListener(this);
                    }
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    charSequence.getClass();
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    charSequence.getClass();
                }
            });
            ClickableEditText clickableEditText = P().d;
            LPDeviceStatus deviceStatus = roomSpeaker.f56555b.getDeviceStatus();
            String friendlyName = deviceStatus != null ? deviceStatus.getFriendlyName() : null;
            if (friendlyName == null) {
                friendlyName = "";
            }
            clickableEditText.setText(friendlyName);
            P().d.setOnFocusChangeListener(this.I);
            P().d.setOnEditorActionListener(new rt0(this, roomSpeaker, i2));
        }
    }

    public final void S(final LPDevice lPDevice, String str) {
        FragmentManager supportFragmentManager;
        GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(GenericBottomSheet.R, str, getString(R.string.button_no), getString(R.string.button_yes), 16);
        genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment$showRemoveRoomBottomSheet$1
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                RoomDetailFragment roomDetailFragment = this.f56477a;
                FragmentActivity activity = roomDetailFragment.getActivity();
                if (activity != null) {
                    TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                    LPDevice lPDevice2 = lPDevice;
                    TrunkGeneralHelper.d(activity, lPDevice2, new rp0(lPDevice2, roomDetailFragment, 11), null, 24);
                }
            }
        };
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        genericBottomSheetB.show(supportFragmentManager, GenericBottomSheet.S);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailDeviceListAdapter.Listener
    public final void f(LPDevice lPDevice) {
        lPDevice.getClass();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            TrunkGeneralHelper.d(activity, lPDevice, new rp0(this, activity, 10), null, 24);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailDeviceListAdapter.Listener
    public final void i(LPDevice lPDevice) {
        lPDevice.getClass();
        WifiTrunkDevice.RoomSpeaker roomSpeaker = this.G;
        if (roomSpeaker != null) {
            if (roomSpeaker.f56556c.size() == 1) {
                String string = getString(R.string.speaker_trunk_room_page_remove_room_subtitle);
                string.getClass();
                S(lPDevice, string);
            } else {
                String string2 = getString(R.string.speaker_trunk_room_page_remove_device_from_room_subtitle);
                string2.getClass();
                S(lPDevice, string2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        Object serializable;
        super.onCreate(bundle);
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = bundleRequireArguments.getSerializable("DEVICE", WifiTrunkDevice.RoomSpeaker.class);
        } else {
            Object serializable2 = bundleRequireArguments.getSerializable("DEVICE");
            if (!(serializable2 instanceof WifiTrunkDevice.RoomSpeaker)) {
                serializable2 = null;
            }
            serializable = (WifiTrunkDevice.RoomSpeaker) serializable2;
        }
        this.G = (WifiTrunkDevice.RoomSpeaker) serializable;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        P().d.setOnFocusChangeListener(null);
        P().f51348c.setAdapter(null);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.Hilt_RoomDetailFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Q();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        Context context = getContext();
        if (context != null) {
            View view = getView();
            ContextExtKt.d(context, view != null ? view.getWindowToken() : null);
        }
        super.onStop();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.Hilt_RoomDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        FragmentExtKt.a(this, P().f51347b.f51464c.f51465b, null, 6);
        P().f51347b.f51464c.f51466c.setAccessibilityHeading(true);
        P().f51347b.f51464c.f51466c.setText(getString(R.string.trunk_speaker));
        P().f51348c.setAdapter((RoomDetailDeviceListAdapter) this.H.getF71699b());
        R();
    }
}
