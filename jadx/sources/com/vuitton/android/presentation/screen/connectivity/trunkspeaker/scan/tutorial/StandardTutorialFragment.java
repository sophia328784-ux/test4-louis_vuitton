package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.os.Bundle;
import android.view.View;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerStandardBottomSheetLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class StandardTutorialFragment extends Hilt_StandardTutorialFragment {
    public final FragmentViewBindingDelegate F;
    public Listener G;
    public final Lazy H;
    public final Lazy I;
    public final Lazy J;
    public static final /* synthetic */ KProperty[] L = {Reflection.f71922a.h(new PropertyReference1Impl(StandardTutorialFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerStandardBottomSheetLayoutBinding;", 0))};
    public static final Companion K = new Companion(null);
    public static final String M = "StandardTutorialFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Companion;", "", "", "KEY_TITLE", "Ljava/lang/String;", "KEY_SUBTITLE", "KEY_IMAGE_RES", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static StandardTutorialFragment a(int i2, String str, String str2) {
            str.getClass();
            str2.getClass();
            StandardTutorialFragment standardTutorialFragment = new StandardTutorialFragment();
            Bundle bundle = new Bundle();
            bundle.putString("TITLE", str);
            bundle.putString("SUBTITLE", str2);
            bundle.putInt("IMAGE_RES", i2);
            standardTutorialFragment.setArguments(bundle);
            return standardTutorialFragment;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void a();

        void b();
    }

    public StandardTutorialFragment() {
        super(R.layout.fragment_trunk_speaker_standard_bottom_sheet_layout);
        this.F = FragmentExtKt.d(this, StandardTutorialFragment$binding$2.f56637b);
        final int i2 = 0;
        this.H = LazyKt.b(new Function0(this) { // from class: h11

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ StandardTutorialFragment f69552c;

            {
                this.f69552c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                StandardTutorialFragment standardTutorialFragment = this.f69552c;
                switch (i3) {
                    case 0:
                        StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
                        Bundle arguments = standardTutorialFragment.getArguments();
                        if (arguments != null) {
                            return arguments.getString("TITLE");
                        }
                        return null;
                    case 1:
                        StandardTutorialFragment.Companion companion2 = StandardTutorialFragment.K;
                        Bundle arguments2 = standardTutorialFragment.getArguments();
                        if (arguments2 != null) {
                            return arguments2.getString("SUBTITLE");
                        }
                        return null;
                    default:
                        StandardTutorialFragment.Companion companion3 = StandardTutorialFragment.K;
                        Bundle arguments3 = standardTutorialFragment.getArguments();
                        if (arguments3 != null) {
                            return Integer.valueOf(arguments3.getInt("IMAGE_RES"));
                        }
                        return null;
                }
            }
        });
        final int i3 = 1;
        this.I = LazyKt.b(new Function0(this) { // from class: h11

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ StandardTutorialFragment f69552c;

            {
                this.f69552c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                StandardTutorialFragment standardTutorialFragment = this.f69552c;
                switch (i4) {
                    case 0:
                        StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
                        Bundle arguments = standardTutorialFragment.getArguments();
                        if (arguments != null) {
                            return arguments.getString("TITLE");
                        }
                        return null;
                    case 1:
                        StandardTutorialFragment.Companion companion2 = StandardTutorialFragment.K;
                        Bundle arguments2 = standardTutorialFragment.getArguments();
                        if (arguments2 != null) {
                            return arguments2.getString("SUBTITLE");
                        }
                        return null;
                    default:
                        StandardTutorialFragment.Companion companion3 = StandardTutorialFragment.K;
                        Bundle arguments3 = standardTutorialFragment.getArguments();
                        if (arguments3 != null) {
                            return Integer.valueOf(arguments3.getInt("IMAGE_RES"));
                        }
                        return null;
                }
            }
        });
        final int i4 = 2;
        this.J = LazyKt.b(new Function0(this) { // from class: h11

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ StandardTutorialFragment f69552c;

            {
                this.f69552c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                StandardTutorialFragment standardTutorialFragment = this.f69552c;
                switch (i5) {
                    case 0:
                        StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
                        Bundle arguments = standardTutorialFragment.getArguments();
                        if (arguments != null) {
                            return arguments.getString("TITLE");
                        }
                        return null;
                    case 1:
                        StandardTutorialFragment.Companion companion2 = StandardTutorialFragment.K;
                        Bundle arguments2 = standardTutorialFragment.getArguments();
                        if (arguments2 != null) {
                            return arguments2.getString("SUBTITLE");
                        }
                        return null;
                    default:
                        StandardTutorialFragment.Companion companion3 = StandardTutorialFragment.K;
                        Bundle arguments3 = standardTutorialFragment.getArguments();
                        if (arguments3 != null) {
                            return Integer.valueOf(arguments3.getInt("IMAGE_RES"));
                        }
                        return null;
                }
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_StandardTutorialFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        final int i2 = 0;
        FragmentTrunkSpeakerStandardBottomSheetLayoutBinding fragmentTrunkSpeakerStandardBottomSheetLayoutBinding = (FragmentTrunkSpeakerStandardBottomSheetLayoutBinding) this.F.c(this, L[0]);
        fragmentTrunkSpeakerStandardBottomSheetLayoutBinding.f51354f.setText((String) this.H.getF71699b());
        fragmentTrunkSpeakerStandardBottomSheetLayoutBinding.f51353e.setText((String) this.I.getF71699b());
        Integer num = (Integer) this.J.getF71699b();
        if (num != null) {
            fragmentTrunkSpeakerStandardBottomSheetLayoutBinding.d.setImageResource(num.intValue());
        }
        ViewExtKt.d(fragmentTrunkSpeakerStandardBottomSheetLayoutBinding.f51351b, new Function1(this) { // from class: g11

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ StandardTutorialFragment f69252c;

            {
                this.f69252c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                StandardTutorialFragment standardTutorialFragment = this.f69252c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
                        view2.getClass();
                        StandardTutorialFragment.Listener listener = standardTutorialFragment.G;
                        if (listener != null) {
                            listener.a();
                        }
                        break;
                    default:
                        StandardTutorialFragment.Companion companion2 = StandardTutorialFragment.K;
                        view2.getClass();
                        StandardTutorialFragment.Listener listener2 = standardTutorialFragment.G;
                        if (listener2 != null) {
                            listener2.b();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(fragmentTrunkSpeakerStandardBottomSheetLayoutBinding.f51352c, new Function1(this) { // from class: g11

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ StandardTutorialFragment f69252c;

            {
                this.f69252c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                StandardTutorialFragment standardTutorialFragment = this.f69252c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
                        view2.getClass();
                        StandardTutorialFragment.Listener listener = standardTutorialFragment.G;
                        if (listener != null) {
                            listener.a();
                        }
                        break;
                    default:
                        StandardTutorialFragment.Companion companion2 = StandardTutorialFragment.K;
                        view2.getClass();
                        StandardTutorialFragment.Listener listener2 = standardTutorialFragment.G;
                        if (listener2 != null) {
                            listener2.b();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
