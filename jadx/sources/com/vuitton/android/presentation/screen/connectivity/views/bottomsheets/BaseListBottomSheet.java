package com.vuitton.android.presentation.screen.connectivity.views.bottomsheets;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentFixedHeightBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.views.divider.MiddleDividersItemDecoration;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class BaseListBottomSheet extends Hilt_BaseListBottomSheet {
    public final Lazy O;
    public final Lazy P;
    public final Lazy Q;
    public final FragmentViewBindingDelegate R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(BaseListBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;", 0))};
    public static final Companion S = new Companion(null);
    public static final String V = "BaseListBottomSheet";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;", "", "", "KEY_STRING_LIST", "Ljava/lang/String;", "KEY_TITLE", "KEY_DESCRIPTION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static BaseListBottomSheet a(String str, String str2, List list) {
            list.getClass();
            str.getClass();
            str2.getClass();
            BaseListBottomSheet baseListBottomSheet = new BaseListBottomSheet();
            Bundle bundle = new Bundle();
            bundle.putSerializable("STRING_LIST", new ArrayList(list));
            bundle.putString("CURRENT_COUNTRY", str);
            bundle.putString("ADDRESS", str2);
            baseListBottomSheet.setArguments(bundle);
            return baseListBottomSheet;
        }
    }

    public BaseListBottomSheet() {
        super(R.layout.fragment_fixed_height_bottom_sheet);
        final int i2 = 1;
        setCancelable(true);
        final int i3 = 0;
        this.O = LazyKt.b(new Function0(this) { // from class: qc

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BaseListBottomSheet f79069c;

            {
                this.f79069c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                BaseListBottomSheet baseListBottomSheet = this.f79069c;
                switch (i4) {
                    case 0:
                        return BaseListBottomSheet.V(baseListBottomSheet);
                    case 1:
                        BaseListBottomSheet.Companion companion = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("CURRENT_COUNTRY");
                    default:
                        BaseListBottomSheet.Companion companion2 = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("ADDRESS");
                }
            }
        });
        this.P = LazyKt.b(new Function0(this) { // from class: qc

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BaseListBottomSheet f79069c;

            {
                this.f79069c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i2;
                BaseListBottomSheet baseListBottomSheet = this.f79069c;
                switch (i4) {
                    case 0:
                        return BaseListBottomSheet.V(baseListBottomSheet);
                    case 1:
                        BaseListBottomSheet.Companion companion = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("CURRENT_COUNTRY");
                    default:
                        BaseListBottomSheet.Companion companion2 = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("ADDRESS");
                }
            }
        });
        final int i4 = 2;
        this.Q = LazyKt.b(new Function0(this) { // from class: qc

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BaseListBottomSheet f79069c;

            {
                this.f79069c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                BaseListBottomSheet baseListBottomSheet = this.f79069c;
                switch (i5) {
                    case 0:
                        return BaseListBottomSheet.V(baseListBottomSheet);
                    case 1:
                        BaseListBottomSheet.Companion companion = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("CURRENT_COUNTRY");
                    default:
                        BaseListBottomSheet.Companion companion2 = BaseListBottomSheet.S;
                        return baseListBottomSheet.requireArguments().getString("ADDRESS");
                }
            }
        });
        this.R = FragmentExtKt.d(this, BaseListBottomSheet$binding$2.f56685b);
    }

    public static ArrayList V(BaseListBottomSheet baseListBottomSheet) {
        Object serializable;
        Bundle arguments = baseListBottomSheet.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = arguments.getSerializable("STRING_LIST", ArrayList.class);
        } else {
            Object serializable2 = arguments.getSerializable("STRING_LIST");
            serializable = (ArrayList) (serializable2 instanceof ArrayList ? serializable2 : null);
        }
        return (ArrayList) serializable;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        FragmentFixedHeightBottomSheetBinding fragmentFixedHeightBottomSheetBinding = (FragmentFixedHeightBottomSheetBinding) this.R.c(this, T[0]);
        ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding = fragmentFixedHeightBottomSheetBinding.f51240b;
        TextView textView = reusableBottomSheetTitleLayoutBinding.d;
        textView.setText((String) this.P.getF71699b());
        textView.setContentDescription((String) this.Q.getF71699b());
        ViewExtKt.d(reusableBottomSheetTitleLayoutBinding.f51461c, new c1(this, 16));
        RecyclerView recyclerView = fragmentFixedHeightBottomSheetBinding.f51241c;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.drawable.divider_pale_1dp);
        if (drawable != null) {
            recyclerView.addItemDecoration(new MiddleDividersItemDecoration(drawable, MiddleDividersItemDecoration.ListType.VERTICAL));
        }
        ArrayList arrayList = (ArrayList) this.O.getF71699b();
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (obj instanceof String) {
                    arrayList2.add(obj);
                }
            }
            recyclerView.setAdapter(new BaseListAdapter(arrayList2));
        }
    }
}
