package com.vuitton.android.presentation.screen.distantrepairs;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentTermsFragment;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairRouter {
    @Inject
    public DistantRepairRouter() {
    }

    public static void a(FragmentActivity fragmentActivity) {
        if (fragmentActivity != null) {
            FragmentTransaction fragmentTransactionD = fragmentActivity.getSupportFragmentManager().d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
            DistantRepairAssessmentTermsFragment.F.getClass();
            DistantRepairAssessmentTermsFragment distantRepairAssessmentTermsFragment = new DistantRepairAssessmentTermsFragment();
            String str = DistantRepairAssessmentTermsFragment.G;
            fragmentTransactionD.i(R.id.fragment_container, distantRepairAssessmentTermsFragment, str, 1);
            fragmentTransactionD.d(str);
            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            fragmentTransactionD.e();
        }
    }

    public static void b(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null || supportFragmentManager.Y(-1, 1)) {
            return;
        }
        fragmentActivity.startActivity(RepairActivity.Companion.b(RepairActivity.t, fragmentActivity, 6));
        fragmentActivity.finish();
    }
}
