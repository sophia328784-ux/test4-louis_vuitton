package defpackage;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lk implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f76043c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76044e;

    public /* synthetic */ lk(float f2, float f3, int i2, Object obj) {
        this.f76042b = i2;
        this.f76044e = obj;
        this.f76043c = f2;
        this.d = f3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76042b;
        float f2 = this.d;
        float f3 = this.f76043c;
        Object obj2 = this.f76044e;
        switch (i2) {
            case 0:
                CatalogPLPActivity catalogPLPActivity = (CatalogPLPActivity) obj2;
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                CatalogPLPActivity.Companion companion = CatalogPLPActivity.x;
                contactUsMethod.getClass();
                ContactUsNavigator contactUsNavigator = catalogPLPActivity.q;
                if (contactUsNavigator == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                int i3 = (int) f3;
                int i4 = (int) f2;
                ChatAttachable chatAttachable = catalogPLPActivity.s;
                if (chatAttachable != null) {
                    contactUsNavigator.a(catalogPLPActivity, contactUsMethod, i3, i4, chatAttachable);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 1:
                DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = (DistantRepairAssessmentBffFragment) obj2;
                ContactUsMethod contactUsMethod2 = (ContactUsMethod) obj;
                DistantRepairAssessmentBffFragment.Companion companion2 = DistantRepairAssessmentBffFragment.N;
                contactUsMethod2.getClass();
                ContactUsNavigator contactUsNavigator2 = distantRepairAssessmentBffFragment.J;
                if (contactUsNavigator2 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity = distantRepairAssessmentBffFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                int i5 = (int) f3;
                int i6 = (int) f2;
                ChatAttachable chatAttachable2 = distantRepairAssessmentBffFragment.K;
                if (chatAttachable2 != null) {
                    contactUsNavigator2.a(fragmentActivityRequireActivity, contactUsMethod2, i5, i6, chatAttachable2);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 2:
                DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) obj2;
                ContactUsMethod contactUsMethod3 = (ContactUsMethod) obj;
                DistantRepairAssessmentFragment.Companion companion3 = DistantRepairAssessmentFragment.M;
                contactUsMethod3.getClass();
                ContactUsNavigator contactUsNavigator3 = distantRepairAssessmentFragment.I;
                if (contactUsNavigator3 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity2 = distantRepairAssessmentFragment.requireActivity();
                fragmentActivityRequireActivity2.getClass();
                int i7 = (int) f3;
                int i8 = (int) f2;
                ChatAttachable chatAttachable3 = distantRepairAssessmentFragment.J;
                if (chatAttachable3 != null) {
                    contactUsNavigator3.a(fragmentActivityRequireActivity2, contactUsMethod3, i7, i8, chatAttachable3);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 3:
                PdpActivity pdpActivity = (PdpActivity) obj2;
                ContactUsMethod contactUsMethod4 = (ContactUsMethod) obj;
                PdpActivity.Companion companion4 = PdpActivity.D;
                contactUsMethod4.getClass();
                ContactUsNavigator contactUsNavigator4 = pdpActivity.v;
                if (contactUsNavigator4 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                int i9 = (int) f3;
                int i10 = (int) f2;
                ChatAttachable chatAttachable4 = pdpActivity.t;
                if (chatAttachable4 != null) {
                    contactUsNavigator4.a(pdpActivity, contactUsMethod4, i9, i10, chatAttachable4);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 4:
                RepairListBffFragment repairListBffFragment = (RepairListBffFragment) obj2;
                ContactUsMethod contactUsMethod5 = (ContactUsMethod) obj;
                RepairListBffFragment.Companion companion5 = RepairListBffFragment.L;
                contactUsMethod5.getClass();
                ContactUsNavigator contactUsNavigator5 = repairListBffFragment.J;
                if (contactUsNavigator5 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity3 = repairListBffFragment.requireActivity();
                fragmentActivityRequireActivity3.getClass();
                int i11 = (int) f3;
                int i12 = (int) f2;
                ChatAttachable chatAttachable5 = repairListBffFragment.K;
                if (chatAttachable5 != null) {
                    contactUsNavigator5.a(fragmentActivityRequireActivity3, contactUsMethod5, i11, i12, chatAttachable5);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            default:
                RepairListFragment repairListFragment = (RepairListFragment) obj2;
                ContactUsMethod contactUsMethod6 = (ContactUsMethod) obj;
                RepairListFragment.Companion companion6 = RepairListFragment.L;
                contactUsMethod6.getClass();
                ContactUsNavigator contactUsNavigator6 = repairListFragment.J;
                if (contactUsNavigator6 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity4 = repairListFragment.requireActivity();
                fragmentActivityRequireActivity4.getClass();
                int i13 = (int) f3;
                int i14 = (int) f2;
                ChatAttachable chatAttachable6 = repairListFragment.K;
                if (chatAttachable6 != null) {
                    contactUsNavigator6.a(fragmentActivityRequireActivity4, contactUsMethod6, i13, i14, chatAttachable6);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
        }
    }
}
