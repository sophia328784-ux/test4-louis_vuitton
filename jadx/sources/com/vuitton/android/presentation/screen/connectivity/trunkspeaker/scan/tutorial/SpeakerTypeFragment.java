package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.os.Bundle;
import android.view.View;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDeviceTypeBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.SpeakerTypeFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;", "Landroidx/fragment/app/Fragment;", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;", "", "onSpeakerTypeClick", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SpeakerTypeFragment extends Hilt_SpeakerTypeFragment {
    public final Function1 F;
    public final FragmentViewBindingDelegate G;
    public static final /* synthetic */ KProperty[] I = {Reflection.f71922a.h(new PropertyReference1Impl(SpeakerTypeFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDeviceTypeBinding;", 0))};
    public static final Companion H = new Companion(null);
    public static final String J = "SpeakerTypeFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpeakerTypeFragment(Function1<? super TrunkSpeakerTypeEnum, Unit> function1) {
        super(R.layout.fragment_trunk_speaker_device_type);
        function1.getClass();
        this.F = function1;
        this.G = FragmentExtKt.d(this, SpeakerTypeFragment$binding$2.f56636b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_SpeakerTypeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        KProperty[] kPropertyArr = I;
        final int i2 = 0;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.G;
        ViewExtKt.d(((FragmentTrunkSpeakerDeviceTypeBinding) fragmentViewBindingDelegate.c(this, kProperty)).f51337b, new Function1(this) { // from class: m01

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SpeakerTypeFragment f76142c;

            {
                this.f76142c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                SpeakerTypeFragment speakerTypeFragment = this.f76142c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        SpeakerTypeFragment.Companion companion = SpeakerTypeFragment.H;
                        view2.getClass();
                        speakerTypeFragment.F.invoke(TrunkSpeakerTypeEnum.GM);
                        break;
                    default:
                        SpeakerTypeFragment.Companion companion2 = SpeakerTypeFragment.H;
                        view2.getClass();
                        speakerTypeFragment.F.invoke(TrunkSpeakerTypeEnum.PM);
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(((FragmentTrunkSpeakerDeviceTypeBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0])).f51338c, new Function1(this) { // from class: m01

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SpeakerTypeFragment f76142c;

            {
                this.f76142c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                SpeakerTypeFragment speakerTypeFragment = this.f76142c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        SpeakerTypeFragment.Companion companion = SpeakerTypeFragment.H;
                        view2.getClass();
                        speakerTypeFragment.F.invoke(TrunkSpeakerTypeEnum.GM);
                        break;
                    default:
                        SpeakerTypeFragment.Companion companion2 = SpeakerTypeFragment.H;
                        view2.getClass();
                        speakerTypeFragment.F.invoke(TrunkSpeakerTypeEnum.PM);
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
