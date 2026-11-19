package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentRecyclerViewBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.views.divider.MiddleDividersItemDecoration;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.rt;
import defpackage.ss;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class DispositionListBottomSheet extends Hilt_DispositionListBottomSheet {
    public final FragmentViewBindingDelegate O;
    public final Lazy P;
    public final Lazy Q;
    public Listener R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(DispositionListBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentRecyclerViewBottomSheetBinding;", 0))};
    public static final Companion S = new Companion(null);
    public static final String V = "DispositionListBottomSheet";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet$Companion;", "", "", "KEY_SELECTED_MODE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void n(LPPlayChannel lPPlayChannel);
    }

    public DispositionListBottomSheet() {
        super(R.layout.fragment_recycler_view_bottom_sheet);
        this.O = FragmentExtKt.d(this, DispositionListBottomSheet$binding$2.f56554b);
        this.P = LazyKt.b(new rt(1));
        this.Q = LazyKt.b(new ss(this, 3));
        setCancelable(true);
    }

    public static LPPlayChannel V(DispositionListBottomSheet dispositionListBottomSheet) {
        Object serializable;
        Bundle arguments = dispositionListBottomSheet.getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("SELECTED_MODE", LPPlayChannel.class);
            } else {
                Object serializable2 = arguments.getSerializable("SELECTED_MODE");
                if (!(serializable2 instanceof LPPlayChannel)) {
                    serializable2 = null;
                }
                serializable = (LPPlayChannel) serializable2;
            }
            LPPlayChannel lPPlayChannel = (LPPlayChannel) serializable;
            if (lPPlayChannel != null) {
                return lPPlayChannel;
            }
        }
        return LPPlayChannel.LP_CHANNEL_STEREO;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        FragmentRecyclerViewBottomSheetBinding fragmentRecyclerViewBottomSheetBinding = (FragmentRecyclerViewBottomSheetBinding) this.O.c(this, T[0]);
        ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding = fragmentRecyclerViewBottomSheetBinding.f51293b;
        TextView textView = reusableBottomSheetTitleLayoutBinding.d;
        textView.setText(getString(R.string.trunk_speaker_device_channel));
        textView.setContentDescription(getString(R.string.trunk_speaker_device_channel));
        ViewExtKt.d(reusableBottomSheetTitleLayoutBinding.f51461c, new Function1(this) { // from class: st

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DispositionListBottomSheet f79875c;

            {
                this.f79875c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                DispositionListBottomSheet dispositionListBottomSheet = this.f79875c;
                switch (i3) {
                    case 0:
                        DispositionListBottomSheet.Companion companion = DispositionListBottomSheet.S;
                        ((View) obj).getClass();
                        dispositionListBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        LPPlayChannel lPPlayChannel = (LPPlayChannel) obj;
                        DispositionListBottomSheet.Companion companion2 = DispositionListBottomSheet.S;
                        lPPlayChannel.getClass();
                        DispositionListBottomSheet.Listener listener = dispositionListBottomSheet.R;
                        if (listener == null) {
                            Intrinsics.h("listener");
                            throw null;
                        }
                        listener.n(lPPlayChannel);
                        dispositionListBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        });
        RecyclerView recyclerView = fragmentRecyclerViewBottomSheetBinding.f51294c;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.drawable.divider_pale_1dp);
        if (drawable != null) {
            recyclerView.addItemDecoration(new MiddleDividersItemDecoration(drawable, MiddleDividersItemDecoration.ListType.VERTICAL));
        }
        final int i3 = 1;
        recyclerView.setAdapter(new DispositionListAdapter((LPPlayChannel) this.Q.getF71699b(), (ArrayList) this.P.getF71699b(), new Function1(this) { // from class: st

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DispositionListBottomSheet f79875c;

            {
                this.f79875c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                DispositionListBottomSheet dispositionListBottomSheet = this.f79875c;
                switch (i4) {
                    case 0:
                        DispositionListBottomSheet.Companion companion = DispositionListBottomSheet.S;
                        ((View) obj).getClass();
                        dispositionListBottomSheet.dismiss();
                        return Unit.f71739a;
                    default:
                        LPPlayChannel lPPlayChannel = (LPPlayChannel) obj;
                        DispositionListBottomSheet.Companion companion2 = DispositionListBottomSheet.S;
                        lPPlayChannel.getClass();
                        DispositionListBottomSheet.Listener listener = dispositionListBottomSheet.R;
                        if (listener == null) {
                            Intrinsics.h("listener");
                            throw null;
                        }
                        listener.n(lPPlayChannel);
                        dispositionListBottomSheet.dismiss();
                        return Unit.f71739a;
                }
            }
        }));
    }
}
