package com.vuitton.android.presentation.screen.repairs;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffActivity;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment;
import com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListFragment;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;", "", "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;", "webViewRouter", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairRouter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WebViewRouter f63494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f63495b;

    @Inject
    public RepairRouter(WebViewRouter webViewRouter, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        webViewRouter.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f63494a = webViewRouter;
        this.f63495b = isFeatureAvailableUseCase;
    }

    public static void a(Context context, ActivityResultLauncher activityResultLauncher, RepairStatusUiModel repairStatusUiModel) {
        context.getClass();
        activityResultLauncher.getClass();
        CancellationReasonsActivity.q.getClass();
        Intent intentPutExtra = new Intent(context, (Class<?>) CancellationReasonsActivity.class).putExtra("REPAIR_STATUS", repairStatusUiModel);
        intentPutExtra.getClass();
        activityResultLauncher.a(intentPutExtra);
    }

    public static void b(Context context, ActivityResultLauncher activityResultLauncher, boolean z, List list) {
        context.getClass();
        activityResultLauncher.getClass();
        list.getClass();
        CancellationReasonsBffActivity.q.getClass();
        Intent intentPutParcelableArrayListExtra = new Intent(context, (Class<?>) CancellationReasonsBffActivity.class).putExtra("IS_ASSESSMENT_DONE", z).putParcelableArrayListExtra("CANCELLATION_REASON_LIST", new ArrayList<>(list));
        intentPutParcelableArrayListExtra.getClass();
        activityResultLauncher.a(intentPutParcelableArrayListExtra);
    }

    public static void e(Context context, ActivityResultLauncher activityResultLauncher, String str) {
        context.getClass();
        activityResultLauncher.getClass();
        str.getClass();
        activityResultLauncher.a(WebViewActivity.Companion.a(WebViewActivity.v, context, str, false, false, null, null, null, true, true, null, 1660));
    }

    public static void f(FragmentActivity fragmentActivity, String str) {
        FragmentManager supportFragmentManager;
        str.getClass();
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        RepairPaymentFailedFragment.K.getClass();
        RepairPaymentFailedFragment repairPaymentFailedFragment = new RepairPaymentFailedFragment();
        Bundle bundle = new Bundle();
        bundle.putString("FORMATTED_AMOUNT", str);
        repairPaymentFailedFragment.setArguments(bundle);
        String str2 = RepairPaymentFailedFragment.L;
        fragmentTransactionD.i(R.id.fragment_container, repairPaymentFailedFragment, str2, 1);
        fragmentTransactionD.d(str2);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }

    public static void h(FragmentActivity fragmentActivity, AddressUiModel addressUiModel, String str) {
        fragmentActivity.getClass();
        str.getClass();
        FragmentTransaction fragmentTransactionD = fragmentActivity.getSupportFragmentManager().d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        RepairDetailAddressBookFragment.L.getClass();
        RepairDetailAddressBookFragment repairDetailAddressBookFragment = new RepairDetailAddressBookFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("PREVIOUS_SELECTED_ADDRESS", addressUiModel);
        bundle.putParcelable("REPAIR_TRANSACTION_ID", new CareServiceTransactionIdUiModel(str));
        repairDetailAddressBookFragment.setArguments(bundle);
        String str2 = RepairDetailAddressBookFragment.M;
        fragmentTransactionD.i(R.id.fragment_container, repairDetailAddressBookFragment, str2, 1);
        fragmentTransactionD.d(str2);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }

    public static void j(FragmentActivity fragmentActivity, String str) {
        FragmentManager supportFragmentManager;
        str.getClass();
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        RepairShippingConfirmationFragment.J.getClass();
        RepairShippingConfirmationFragment repairShippingConfirmationFragment = new RepairShippingConfirmationFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY_CARE_SERVICE_ID", new CareServiceIdUiModel(str));
        repairShippingConfirmationFragment.setArguments(bundle);
        String str2 = RepairShippingConfirmationFragment.K;
        fragmentTransactionD.i(R.id.fragment_container, repairShippingConfirmationFragment, str2, 1);
        fragmentTransactionD.d(str2);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }

    public static void k(FragmentActivity fragmentActivity, String str) {
        str.getClass();
        if (fragmentActivity != null) {
            ActivityExtKt.h(fragmentActivity, str, null, 6);
        }
    }

    public final void c(FragmentActivity fragmentActivity, String str) {
        FragmentTransaction fragmentTransactionD;
        FragmentManager supportFragmentManager;
        str.getClass();
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            fragmentTransactionD = null;
        } else {
            fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        }
        if (this.f63495b.b(new Feature[]{Feature.CARE_SERVICES_MIGRATION})) {
            if (fragmentTransactionD != null) {
                RepairConfirmAddressBffFragment.M.getClass();
                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = new RepairConfirmAddressBffFragment();
                Bundle bundle = new Bundle();
                bundle.putParcelable("CARE_SERVICE_ID", new CareServiceIdUiModel(str));
                repairConfirmAddressBffFragment.setArguments(bundle);
                String str2 = RepairConfirmAddressBffFragment.N;
                fragmentTransactionD.i(R.id.fragment_container, repairConfirmAddressBffFragment, str2, 1);
                fragmentTransactionD.d(str2);
            }
        } else if (fragmentTransactionD != null) {
            RepairConfirmAddressFragment.M.getClass();
            RepairConfirmAddressFragment repairConfirmAddressFragment = new RepairConfirmAddressFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("CARE_SERVICE_ID", new CareServiceIdUiModel(str));
            repairConfirmAddressFragment.setArguments(bundle2);
            String str3 = RepairConfirmAddressFragment.N;
            fragmentTransactionD.i(R.id.fragment_container, repairConfirmAddressFragment, str3, 1);
            fragmentTransactionD.d(str3);
        }
        if (fragmentTransactionD != null) {
            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            fragmentTransactionD.e();
        }
    }

    public final void d(FragmentActivity fragmentActivity) {
        FragmentTransaction fragmentTransactionD;
        FragmentManager supportFragmentManager;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            fragmentTransactionD = null;
        } else {
            fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
        }
        if (this.f63495b.b(new Feature[]{Feature.CARE_SERVICES_MIGRATION})) {
            if (fragmentTransactionD != null) {
                DistantRepairFormBffFragment.M.getClass();
                DistantRepairFormBffFragment distantRepairFormBffFragment = new DistantRepairFormBffFragment();
                String str = DistantRepairFormBffFragment.N;
                fragmentTransactionD.i(R.id.fragment_container, distantRepairFormBffFragment, str, 1);
                fragmentTransactionD.d(str);
            }
        } else if (fragmentTransactionD != null) {
            DistantRepairFormFragment.M.getClass();
            DistantRepairFormFragment distantRepairFormFragment = new DistantRepairFormFragment();
            String str2 = DistantRepairFormFragment.N;
            fragmentTransactionD.i(R.id.fragment_container, distantRepairFormFragment, str2, 1);
            fragmentTransactionD.d(str2);
        }
        if (fragmentTransactionD != null) {
            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            fragmentTransactionD.e();
        }
    }

    public final void g(FragmentActivity fragmentActivity, String str) {
        FragmentTransaction fragmentTransactionD;
        FragmentManager supportFragmentManager;
        str.getClass();
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            fragmentTransactionD = null;
        } else {
            fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
        }
        if (this.f63495b.b(new Feature[]{Feature.CARE_SERVICES_MIGRATION})) {
            if (fragmentTransactionD != null) {
                DistantRepairAssessmentBffFragment.N.getClass();
                DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = new DistantRepairAssessmentBffFragment();
                Bundle bundle = new Bundle();
                bundle.putParcelable("CARESERVICE_ID", new CareServiceIdUiModel(str));
                distantRepairAssessmentBffFragment.setArguments(bundle);
                String str2 = DistantRepairAssessmentBffFragment.O;
                fragmentTransactionD.i(R.id.fragment_container, distantRepairAssessmentBffFragment, str2, 1);
                fragmentTransactionD.d(str2);
            }
        } else if (fragmentTransactionD != null) {
            DistantRepairAssessmentFragment.M.getClass();
            DistantRepairAssessmentFragment distantRepairAssessmentFragment = new DistantRepairAssessmentFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("CARESERVICE_ID", new CareServiceIdUiModel(str));
            distantRepairAssessmentFragment.setArguments(bundle2);
            String str3 = DistantRepairAssessmentFragment.N;
            fragmentTransactionD.i(R.id.fragment_container, distantRepairAssessmentFragment, str3, 1);
            fragmentTransactionD.d(str3);
        }
        if (fragmentTransactionD != null) {
            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            fragmentTransactionD.e();
        }
    }

    public final void i(FragmentActivity fragmentActivity) {
        FragmentTransaction fragmentTransactionD;
        FragmentManager supportFragmentManager;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            fragmentTransactionD = null;
        } else {
            fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        }
        if (this.f63495b.b(new Feature[]{Feature.CARE_SERVICES_MIGRATION})) {
            if (fragmentTransactionD != null) {
                RepairListBffFragment.L.getClass();
                RepairListBffFragment repairListBffFragment = new RepairListBffFragment();
                String str = RepairListBffFragment.M;
                fragmentTransactionD.i(R.id.fragment_container, repairListBffFragment, str, 1);
                fragmentTransactionD.d(str);
            }
        } else if (fragmentTransactionD != null) {
            RepairListFragment.L.getClass();
            RepairListFragment repairListFragment = new RepairListFragment();
            String str2 = RepairListFragment.M;
            fragmentTransactionD.i(R.id.fragment_container, repairListFragment, str2, 1);
            fragmentTransactionD.d(str2);
        }
        if (fragmentTransactionD != null) {
            fragmentTransactionD.e();
        }
    }
}
