package com.vuitton.android.presentation.screen.repairs.detail.addressbook;

import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailAddressBookFragment$onCreateView$1$1$1$3$1 extends FunctionReferenceImpl implements Function1<AddressUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentManager supportFragmentManager;
        RepairDetailAddressBookFragment repairDetailAddressBookFragment = (RepairDetailAddressBookFragment) this.receiver;
        RepairDetailAddressBookFragment.Companion companion = RepairDetailAddressBookFragment.L;
        repairDetailAddressBookFragment.getClass();
        FragmentKt.a(repairDetailAddressBookFragment, "SELECT_ADDRESS_REQUEST", BundleKt.a(new Pair("SELECTED_ADDRESS_BUNDLE", (AddressUiModel) obj)));
        if (repairDetailAddressBookFragment.G == null) {
            Intrinsics.h("repairRouter");
            throw null;
        }
        FragmentActivity fragmentActivityRequireActivity = repairDetailAddressBookFragment.requireActivity();
        if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
            supportFragmentManager.V();
        }
        return Unit.f71739a;
    }
}
