package defpackage;

import android.location.Location;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class em implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f68902c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ em(Function0 function0, Function1 function1, int i2) {
        this.f68901b = i2;
        this.f68902c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68901b;
        Function0 function0 = this.f68902c;
        Function1 function1 = this.d;
        switch (i2) {
            case 0:
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                contributionLinkUiModel.getClass();
                function0.mo47invoke();
                function1.invoke(contributionLinkUiModel);
                break;
            case 1:
                TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj;
                timeSlotUiModel.getClass();
                function0.mo47invoke();
                function1.invoke(timeSlotUiModel);
                break;
            case 2:
                ((Boolean) obj).booleanValue();
                function1.invoke(DistantRepairContactMethod.PHONE_CALL);
                function0.mo47invoke();
                break;
            case 3:
                ((Boolean) obj).booleanValue();
                function1.invoke(DistantRepairContactMethod.EMAIL);
                function0.mo47invoke();
                break;
            case 4:
                ((Boolean) obj).booleanValue();
                function1.invoke(DistantRepairContactMethod.VIDEO_CALL);
                function0.mo47invoke();
                break;
            case 5:
                ProductSortUiModel productSortUiModel = (ProductSortUiModel) obj;
                productSortUiModel.getClass();
                if (productSortUiModel.f62995c) {
                    function0.mo47invoke();
                } else {
                    function1.invoke(productSortUiModel.f62993a);
                }
                break;
            default:
                Location location = (Location) obj;
                if (location != null) {
                    function1.invoke(location);
                } else {
                    function0.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ em(Function1 function1, Function0 function0, int i2) {
        this.f68901b = i2;
        this.d = function1;
        this.f68902c = function0;
    }
}
