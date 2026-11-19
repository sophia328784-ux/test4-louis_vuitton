package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.lp.ble.manager.ApItem;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentFixedHeightBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist.WifiListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.views.divider.MiddleDividersItemDecoration;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WifiListBottomSheet extends Hilt_WifiListBottomSheet {
    public final FragmentViewBindingDelegate O;
    public ConnectToWifiFragment P;
    public final Lazy Q;
    public final Lazy R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(WifiListBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;", 0))};
    public static final Companion S = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet$Companion;", "", "", "KEY_WIFI_LIST", "Ljava/lang/String;", "KEY_SELECTED_WIFI", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public WifiListBottomSheet() {
        super(R.layout.fragment_fixed_height_bottom_sheet);
        this.O = FragmentExtKt.d(this, WifiListBottomSheet$binding$2.f56650b);
        final int i2 = 0;
        this.Q = LazyKt.b(new Function0(this) { // from class: a71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WifiListBottomSheet f437c;

            {
                this.f437c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                WifiListBottomSheet wifiListBottomSheet = this.f437c;
                switch (i3) {
                    case 0:
                        return WifiListBottomSheet.W(wifiListBottomSheet);
                    default:
                        return WifiListBottomSheet.V(wifiListBottomSheet);
                }
            }
        });
        final int i3 = 1;
        this.R = LazyKt.b(new Function0(this) { // from class: a71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WifiListBottomSheet f437c;

            {
                this.f437c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                WifiListBottomSheet wifiListBottomSheet = this.f437c;
                switch (i4) {
                    case 0:
                        return WifiListBottomSheet.W(wifiListBottomSheet);
                    default:
                        return WifiListBottomSheet.V(wifiListBottomSheet);
                }
            }
        });
    }

    public static List V(WifiListBottomSheet wifiListBottomSheet) {
        Object serializable;
        Bundle arguments = wifiListBottomSheet.getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("WIFI_LIST", ArrayList.class);
            } else {
                Object serializable2 = arguments.getSerializable("WIFI_LIST");
                if (!(serializable2 instanceof ArrayList)) {
                    serializable2 = null;
                }
                serializable = (ArrayList) serializable2;
            }
            ArrayList arrayList = (ArrayList) serializable;
            if (arrayList != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof ApItem) {
                        arrayList2.add(obj);
                    }
                }
                return arrayList2;
            }
        }
        return EmptyList.f71768b;
    }

    public static ApItem W(WifiListBottomSheet wifiListBottomSheet) {
        Object serializable;
        Bundle arguments = wifiListBottomSheet.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = arguments.getSerializable("SELECTED_WIFI", ApItem.class);
        } else {
            Object serializable2 = arguments.getSerializable("SELECTED_WIFI");
            serializable = (ApItem) (serializable2 instanceof ApItem ? serializable2 : null);
        }
        return (ApItem) serializable;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        FragmentFixedHeightBottomSheetBinding fragmentFixedHeightBottomSheetBinding = (FragmentFixedHeightBottomSheetBinding) this.O.c(this, T[0]);
        ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding = fragmentFixedHeightBottomSheetBinding.f51240b;
        TextView textView = reusableBottomSheetTitleLayoutBinding.d;
        textView.setText(getString(R.string.speaker_trunk_connect_speaker_to_wifi_subtitle));
        textView.setContentDescription(getString(R.string.speaker_trunk_connect_speaker_to_wifi_subtitle));
        ViewExtKt.d(reusableBottomSheetTitleLayoutBinding.f51461c, new Function1(this) { // from class: b71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WifiListBottomSheet f20780c;

            {
                this.f20780c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                WifiListBottomSheet wifiListBottomSheet = this.f20780c;
                switch (i3) {
                    case 0:
                        WifiListBottomSheet.Companion companion = WifiListBottomSheet.S;
                        ((View) obj).getClass();
                        wifiListBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        ApItem apItem = (ApItem) obj;
                        WifiListBottomSheet.Companion companion2 = WifiListBottomSheet.S;
                        apItem.getClass();
                        ConnectToWifiFragment connectToWifiFragment = wifiListBottomSheet.P;
                        if (connectToWifiFragment == null) {
                            Intrinsics.h("listener");
                            throw null;
                        }
                        connectToWifiFragment.I = apItem;
                        connectToWifiFragment.P().g.setText(apItem.getDisplaySSID());
                        wifiListBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        });
        RecyclerView recyclerView = fragmentFixedHeightBottomSheetBinding.f51241c;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.drawable.divider_pale_1dp);
        if (drawable != null) {
            recyclerView.addItemDecoration(new MiddleDividersItemDecoration(drawable, MiddleDividersItemDecoration.ListType.VERTICAL));
        }
        final int i3 = 1;
        recyclerView.setAdapter(new WifiListAdapter((ApItem) this.Q.getF71699b(), (List) this.R.getF71699b(), new Function1(this) { // from class: b71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WifiListBottomSheet f20780c;

            {
                this.f20780c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                WifiListBottomSheet wifiListBottomSheet = this.f20780c;
                switch (i4) {
                    case 0:
                        WifiListBottomSheet.Companion companion = WifiListBottomSheet.S;
                        ((View) obj).getClass();
                        wifiListBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        ApItem apItem = (ApItem) obj;
                        WifiListBottomSheet.Companion companion2 = WifiListBottomSheet.S;
                        apItem.getClass();
                        ConnectToWifiFragment connectToWifiFragment = wifiListBottomSheet.P;
                        if (connectToWifiFragment == null) {
                            Intrinsics.h("listener");
                            throw null;
                        }
                        connectToWifiFragment.I = apItem;
                        connectToWifiFragment.P().g.setText(apItem.getDisplaySSID());
                        wifiListBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        }));
    }
}
