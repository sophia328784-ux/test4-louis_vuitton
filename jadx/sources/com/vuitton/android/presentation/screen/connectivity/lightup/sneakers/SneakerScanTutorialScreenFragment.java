package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentSneakerScanTutorialStepBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanTutorialScreenFragment;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.rp0;
import defpackage.zz0;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SneakerScanTutorialScreenFragment extends Hilt_SneakerScanTutorialScreenFragment {
    public final Lazy F;
    public final Lazy G;
    public final Lazy H;
    public final Lazy I;
    public final Lazy J;
    public final FragmentViewBindingDelegate K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(SneakerScanTutorialScreenFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;", 0))};
    public static final Companion L = new Companion(null);
    public static final String N = "SneakerScanTutorialScreenFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;", "", "", "KEY_CURRENT_STEP", "Ljava/lang/String;", "KEY_MAX_STEPS", "KEY_TITLE", "KEY_SUBTITLE", "KEY_IMAGE_RES", "STEPS_FORMAT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SneakerScanTutorialScreenFragment a(int i2, int i3, String str, String str2) {
            str.getClass();
            str2.getClass();
            SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = new SneakerScanTutorialScreenFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("CURRENT_STEP", i2);
            bundle.putInt("MAX_STEPS", 2);
            bundle.putString("TITLE", str);
            bundle.putString("SUBTITLE", str2);
            bundle.putInt("IMAGE_RES", i3);
            sneakerScanTutorialScreenFragment.setArguments(bundle);
            return sneakerScanTutorialScreenFragment;
        }
    }

    public SneakerScanTutorialScreenFragment() {
        super(R.layout.fragment_sneaker_scan_tutorial_step);
        this.F = LazyKt.b(new zz0(this, 0));
        this.G = LazyKt.b(new zz0(this, 1));
        this.H = LazyKt.b(new zz0(this, 2));
        this.I = LazyKt.b(new zz0(this, 3));
        this.J = LazyKt.b(new zz0(this, 4));
        this.K = FragmentExtKt.d(this, SneakerScanTutorialScreenFragment$binding$2.f56254b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.Hilt_SneakerScanTutorialScreenFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        final int i2 = 0;
        FragmentSneakerScanTutorialStepBinding fragmentSneakerScanTutorialStepBinding = (FragmentSneakerScanTutorialStepBinding) this.K.c(this, M[0]);
        TextView textView = fragmentSneakerScanTutorialStepBinding.f51297e;
        final int i3 = 1;
        textView.setAccessibilityHeading(true);
        Lazy lazy = this.F;
        final int i4 = 2;
        textView.setText(String.format("%s/%s", Arrays.copyOf(new Object[]{Integer.valueOf(((Number) lazy.getF71699b()).intValue()), Integer.valueOf(((Number) this.G.getF71699b()).intValue())}, 2)));
        textView.setContentDescription(getString(R.string.content_description_step_format, String.valueOf(((Number) lazy.getF71699b()).intValue())));
        fragmentSneakerScanTutorialStepBinding.g.setText((String) this.H.getF71699b());
        ViewExtKt.e(fragmentSneakerScanTutorialStepBinding.f51298f, new zz0(this, 5), new Function1(this) { // from class: a01

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SneakerScanTutorialScreenFragment f359c;

            {
                this.f359c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i3;
                SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = this.f359c;
                switch (i5) {
                    case 0:
                        SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle = new Bundle();
                        bundle.putString("BACK", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle);
                        break;
                    case 1:
                        TextView textView2 = (TextView) obj;
                        SneakerScanTutorialScreenFragment.Companion companion2 = SneakerScanTutorialScreenFragment.L;
                        textView2.getClass();
                        textView2.setText((String) sneakerScanTutorialScreenFragment.I.getF71699b());
                        break;
                    default:
                        SneakerScanTutorialScreenFragment.Companion companion3 = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("NEXT", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle2);
                        break;
                }
                return Unit.f71739a;
            }
        }, 2);
        ViewExtKt.e(fragmentSneakerScanTutorialStepBinding.d, new zz0(this, 6), new rp0(fragmentSneakerScanTutorialStepBinding, this, 23), 2);
        ViewExtKt.d(fragmentSneakerScanTutorialStepBinding.f51296c, new Function1(this) { // from class: a01

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SneakerScanTutorialScreenFragment f359c;

            {
                this.f359c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = this.f359c;
                switch (i5) {
                    case 0:
                        SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle = new Bundle();
                        bundle.putString("BACK", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle);
                        break;
                    case 1:
                        TextView textView2 = (TextView) obj;
                        SneakerScanTutorialScreenFragment.Companion companion2 = SneakerScanTutorialScreenFragment.L;
                        textView2.getClass();
                        textView2.setText((String) sneakerScanTutorialScreenFragment.I.getF71699b());
                        break;
                    default:
                        SneakerScanTutorialScreenFragment.Companion companion3 = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("NEXT", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle2);
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentSneakerScanTutorialStepBinding.f51295b, new Function1(this) { // from class: a01

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SneakerScanTutorialScreenFragment f359c;

            {
                this.f359c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i2;
                SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = this.f359c;
                switch (i5) {
                    case 0:
                        SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle = new Bundle();
                        bundle.putString("BACK", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle);
                        break;
                    case 1:
                        TextView textView2 = (TextView) obj;
                        SneakerScanTutorialScreenFragment.Companion companion2 = SneakerScanTutorialScreenFragment.L;
                        textView2.getClass();
                        textView2.setText((String) sneakerScanTutorialScreenFragment.I.getF71699b());
                        break;
                    default:
                        SneakerScanTutorialScreenFragment.Companion companion3 = SneakerScanTutorialScreenFragment.L;
                        ((View) obj).getClass();
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("NEXT", "");
                        FragmentKt.a(sneakerScanTutorialScreenFragment, "TUTORIAL", bundle2);
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
