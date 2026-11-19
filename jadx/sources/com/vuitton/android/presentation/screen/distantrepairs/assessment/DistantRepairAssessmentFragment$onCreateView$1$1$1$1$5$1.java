package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinations;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinationsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) this.receiver;
        DistantRepairAssessmentFragment.Companion companion = DistantRepairAssessmentFragment.M;
        boolean zO0 = distantRepairAssessmentFragment.O().o0(str == null ? "" : str);
        FragmentActivity activity = distantRepairAssessmentFragment.getActivity();
        if (activity != null) {
            IntentExtensionKt.b(AddressBookDestinationsKt.a(new AddressBookDestinations.ToAddressEditorPage(zO0, str), activity), distantRepairAssessmentFragment.K);
        }
        return Unit.f71739a;
    }
}
