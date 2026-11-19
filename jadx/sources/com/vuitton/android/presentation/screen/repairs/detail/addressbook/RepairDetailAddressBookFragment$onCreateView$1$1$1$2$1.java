package com.vuitton.android.presentation.screen.repairs.detail.addressbook;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinations;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinationsKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailAddressBookFragment$onCreateView$1$1$1$2$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        RepairDetailAddressBookFragment repairDetailAddressBookFragment = (RepairDetailAddressBookFragment) this.receiver;
        RepairDetailAddressBookFragment.Companion companion = RepairDetailAddressBookFragment.L;
        FragmentActivity activity = repairDetailAddressBookFragment.getActivity();
        if (activity != null) {
            IntentExtensionKt.b(AddressBookDestinationsKt.a(new AddressBookDestinations.ToAddressEditorPage(((DistantRepairAssessmentViewModel) repairDetailAddressBookFragment.F.getF71699b()).o0(str == null ? "" : str), str), activity), repairDetailAddressBookFragment.K);
        }
        return Unit.f71739a;
    }
}
