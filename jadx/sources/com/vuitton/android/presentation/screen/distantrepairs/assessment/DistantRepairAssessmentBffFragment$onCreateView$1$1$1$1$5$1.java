package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.content.Intent;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = (DistantRepairAssessmentBffFragment) this.receiver;
        DistantRepairAssessmentBffFragment.Companion companion = DistantRepairAssessmentBffFragment.N;
        boolean zO0 = distantRepairAssessmentBffFragment.O().o0(str == null ? "" : str);
        if (distantRepairAssessmentBffFragment.H == null) {
            Intrinsics.h("addressBookRouter");
            throw null;
        }
        FragmentActivity activity = distantRepairAssessmentBffFragment.getActivity();
        ActivityResultLauncher activityResultLauncher = distantRepairAssessmentBffFragment.L;
        activityResultLauncher.getClass();
        if (activity != null) {
            AddressEditorActivity.r.getClass();
            Intent intent = new Intent(activity, (Class<?>) AddressEditorActivity.class);
            intent.putExtra("IS_MAIN_ADDRESS", zO0);
            intent.putExtra("ADDRESS_ID", str);
            activityResultLauncher.a(intent);
        }
        return Unit.f71739a;
    }
}
