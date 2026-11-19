package com.vuitton.android.presentation.screen.repairs.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailsFragment$onCreateView$1$1$1$1$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        FragmentManager supportFragmentManager;
        FragmentManager supportFragmentManager2;
        RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) this.receiver;
        RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
        repairDetailsFragment.Q();
        FragmentActivity fragmentActivityRequireActivity = repairDetailsFragment.requireActivity();
        if (fragmentActivityRequireActivity != null && (supportFragmentManager2 = fragmentActivityRequireActivity.getSupportFragmentManager()) != null && supportFragmentManager2.J() == 0) {
            fragmentActivityRequireActivity.finish();
        } else if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
            supportFragmentManager.V();
        }
        return Unit.f71739a;
    }
}
