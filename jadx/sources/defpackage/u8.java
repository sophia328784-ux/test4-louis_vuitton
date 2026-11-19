package defpackage;

import androidx.compose.material3.DisplayMode;
import androidx.compose.material3.ExposedDropdownMenuKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u8 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80254c;

    public /* synthetic */ u8(Function1 function1, int i2) {
        this.f80253b = i2;
        this.f80254c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80253b;
        ContactUsMethod.Chat chat = ContactUsMethod.Chat.f51131a;
        Function1 function1 = this.f80254c;
        switch (i2) {
            case 0:
                function1.invoke(chat);
                break;
            case 1:
                function1.invoke(Step.TWO);
                break;
            case 2:
                function1.invoke(Step.TWO);
                break;
            case 3:
                function1.invoke(null);
                break;
            case 4:
                function1.invoke(Step.FOUR);
                break;
            case 5:
                function1.invoke(chat);
                break;
            case 6:
                function1.invoke(Step.THREE);
                break;
            case 7:
                function1.invoke(Step.TWO);
                break;
            case 8:
                function1.invoke(chat);
                break;
            case 9:
                function1.invoke(chat);
                break;
            case 10:
                function1.invoke(chat);
                break;
            case 11:
                DisplayMode.f6900b.getClass();
                function1.invoke(new DisplayMode(DisplayMode.f6901c));
                break;
            case 12:
                DisplayMode.f6900b.getClass();
                function1.invoke(new DisplayMode(0));
                break;
            case 13:
                function1.invoke(Step.THREE);
                break;
            case 14:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetPrepare.f57247a);
                break;
            case 15:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a);
                break;
            case 16:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetPrepare.f57247a);
                break;
            case 17:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a);
                break;
            case 18:
                function1.invoke(chat);
                break;
            case 19:
                function1.invoke(Step.TWO);
                break;
            case 20:
                function1.invoke(Step.FOUR);
                break;
            case 21:
                int i3 = ExposedDropdownMenuKt.f6925a;
                function1.invoke(Boolean.FALSE);
                break;
            case 22:
                function1.invoke(chat);
                break;
            case 23:
                List list = FeedScreenKt.f57835a;
                function1.invoke(FeedTab.DISCOVER);
                break;
            case 24:
                List list2 = FeedScreenKt.f57835a;
                function1.invoke(FeedTab.FOR_YOU);
                break;
            case 25:
                function1.invoke(PhoneType.SECOND_PHONE);
                break;
            case 26:
                function1.invoke(PhoneType.THIRD_PHONE);
                break;
            case 27:
                function1.invoke(Boolean.FALSE);
                break;
            case 28:
                function1.invoke(Boolean.TRUE);
                break;
            default:
                function1.invoke(chat);
                break;
        }
        return Unit.f71739a;
    }
}
