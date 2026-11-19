package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentListViewBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.aj0;
import defpackage.hi;
import defpackage.ll0;
import defpackage.xn0;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PowerManagementBottomSheet extends Hilt_PowerManagementBottomSheet {
    public final Lazy O;
    public final FragmentViewBindingDelegate P;
    public ArrayList Q;
    public Function2 R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(PowerManagementBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;", 0))};
    public static final Companion S = new Companion(null);
    public static final String V = "PowerManagementBottomSheet";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;", "", "", "KEY_LIGHT_UP_MODE_LIST", "Ljava/lang/String;", "KEY_LIGHT_UP_SELECTED_MODE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static PowerManagementBottomSheet a(ArrayList arrayList, LVLightUpPowerMode lVLightUpPowerMode, Function2 function2) {
            lVLightUpPowerMode.getClass();
            PowerManagementBottomSheet powerManagementBottomSheet = new PowerManagementBottomSheet();
            Bundle bundle = new Bundle();
            bundle.putSerializable("LIGHT_UP_MODE_LIST", arrayList);
            bundle.putSerializable("LIGHT_UP_SELECTED_MODE", lVLightUpPowerMode);
            powerManagementBottomSheet.setArguments(bundle);
            powerManagementBottomSheet.R = function2;
            return powerManagementBottomSheet;
        }
    }

    public PowerManagementBottomSheet() {
        super(R.layout.fragment_list_view_bottom_sheet);
        this.O = LazyKt.b(new xn0(this, 3));
        this.P = FragmentExtKt.d(this, PowerManagementBottomSheet$binding$2.f56150b);
        this.R = new aj0(24);
    }

    public static LVLightUpPowerMode V(PowerManagementBottomSheet powerManagementBottomSheet) {
        Serializable serializable;
        Bundle arguments = powerManagementBottomSheet.getArguments();
        LVLightUpPowerMode lVLightUpPowerMode = null;
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("LIGHT_UP_SELECTED_MODE", LVLightUpPowerMode.class);
            } else {
                Serializable serializable2 = arguments.getSerializable("LIGHT_UP_SELECTED_MODE");
                serializable = (LVLightUpPowerMode) (serializable2 instanceof LVLightUpPowerMode ? serializable2 : null);
            }
            lVLightUpPowerMode = (LVLightUpPowerMode) serializable;
        }
        lVLightUpPowerMode.getClass();
        return lVLightUpPowerMode;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        ArrayList arrayList;
        Object serializable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("LIGHT_UP_MODE_LIST", ArrayList.class);
            } else {
                Object serializable2 = arguments.getSerializable("LIGHT_UP_MODE_LIST");
                if (!(serializable2 instanceof ArrayList)) {
                    serializable2 = null;
                }
                serializable = (ArrayList) serializable2;
            }
            arrayList = (ArrayList) serializable;
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.Q = arrayList;
        }
        FragmentListViewBottomSheetBinding fragmentListViewBottomSheetBinding = (FragmentListViewBottomSheetBinding) this.P.c(this, T[0]);
        ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding = fragmentListViewBottomSheetBinding.f51287b;
        TextView textView = reusableBottomSheetTitleLayoutBinding.d;
        textView.setText(getString(R.string.light_up_power_management_title));
        textView.setContentDescription(getString(R.string.light_up_power_management_title));
        int i2 = 4;
        reusableBottomSheetTitleLayoutBinding.f51461c.setOnClickListener(new hi(this, i2));
        ListView listView = fragmentListViewBottomSheetBinding.f51288c;
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        LVLightUpPowerMode lVLightUpPowerMode = (LVLightUpPowerMode) this.O.getF71699b();
        ArrayList arrayList2 = this.Q;
        if (arrayList2 != null) {
            listView.setAdapter((ListAdapter) new PowerManagementAdapter(contextRequireContext, lVLightUpPowerMode, arrayList2, new ll0(this, i2)));
        } else {
            Intrinsics.h("modeList");
            throw null;
        }
    }
}
