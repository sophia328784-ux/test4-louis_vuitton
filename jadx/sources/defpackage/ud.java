package defpackage;

import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesView;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanView;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ud implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f80290c;

    public /* synthetic */ ud(List list, int i2) {
        this.f80289b = i2;
        this.f80290c = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80289b;
        List list = this.f80290c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, list.size()));
                SemanticsPropertiesKt.v(semanticsPropertyReceiver, true);
                return Unit.f71739a;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = BookingConfirmationScreenKt.f54386a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver2, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 2:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                return Boolean.valueOf(list.contains(formFieldGenericUiModel.getD()));
            case 3:
                ((FaqCategoriesView) obj).b(list);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver3, new CollectionInfo(list.size(), 1));
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver4, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver5, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver6, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver7, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                float f3 = LVSwipeToRevealKt.f48255a;
                semanticsPropertyReceiver8.getClass();
                List<SwipeAction> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (SwipeAction swipeAction : list2) {
                    arrayList.add(new CustomAccessibilityAction(swipeAction.f48290b, new w70(swipeAction, 1)));
                }
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.x;
                KProperty kProperty = SemanticsPropertiesKt.f10359a[31];
                semanticsPropertyKey.getClass();
                semanticsPropertyReceiver8.a(semanticsPropertyKey, arrayList);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver9, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 11:
                ((LightUpScanView) obj).g(list);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                float f4 = ModelSizeSliderKt.f61508a;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver10, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver11.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver11, new CollectionInfo(list.size(), 1));
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver12 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver12.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver12, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver13 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver13.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver13, new CollectionInfo(list.size(), 1));
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver14 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver14.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver14, new CollectionInfo(list.size(), 1));
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver15 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver15.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver15, new CollectionInfo(list.size(), 1));
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver16 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver16.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver16, new CollectionInfo(1, list.size()));
                return Unit.f71739a;
        }
    }
}
