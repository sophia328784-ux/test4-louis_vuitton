package defpackage;

import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreen;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tf0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80056c;

    public /* synthetic */ tf0(Function1 function1, int i2) {
        this.f80055b = i2;
        this.f80056c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80055b;
        ContactUsMethod.Chat chat = ContactUsMethod.Chat.f51131a;
        Function1 function1 = this.f80056c;
        switch (i2) {
            case 0:
                function1.invoke(NativeRegisterBottomSheetScreen.BottomSheetPartners.f53806a);
                break;
            case 1:
                function1.invoke(Boolean.FALSE);
                break;
            case 2:
                function1.invoke(Boolean.TRUE);
                break;
            case 3:
                function1.invoke(Boolean.FALSE);
                break;
            case 4:
                function1.invoke(FormSectionTypeUiModel.EMAIL);
                break;
            case 5:
                function1.invoke(chat);
                break;
            case 6:
                function1.invoke(chat);
                break;
            case 7:
                function1.invoke(chat);
                break;
            case 8:
                function1.invoke(chat);
                break;
            case 9:
                function1.invoke(ImmersiveArticleTrackingUiModel.OnExpandedPlayerPlayEvent.f58760a);
                break;
            case 10:
                function1.invoke(chat);
                break;
            case 11:
                function1.invoke(chat);
                break;
            case 12:
                function1.invoke(BottomSheetScreen.BottomSheetInfo.f63786a);
                break;
            case 13:
                function1.invoke(BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a);
                break;
            case 14:
                function1.invoke(new DistantRepairTrackingUiModel.RescheduleSelectTimeEvent(AppointmentCalendarContext.RESCHEDULE));
                break;
            case 15:
                function1.invoke(chat);
                break;
            case 16:
                function1.invoke(new DistantRepairTrackingUiModel.RescheduleSelectTimeEvent(AppointmentCalendarContext.RESCHEDULE));
                break;
            case 17:
                function1.invoke(chat);
                break;
            case 18:
                function1.invoke(BottomSheetScreen.BottomSheetInfo.f63786a);
                break;
            case 19:
                function1.invoke(chat);
                break;
            case 20:
                function1.invoke(chat);
                break;
            case 21:
                function1.invoke(MyInformationBottomSheetScreen.DeleteAccount.f52596a);
                break;
            case 22:
                function1.invoke(chat);
                break;
            case 23:
                function1.invoke(chat);
                break;
            case 24:
                function1.invoke(StoryCloseUiModel.CLOSE_CTA);
                break;
            case 25:
                function1.invoke(GridModes.Reduced.f55431b);
                break;
            case 26:
                function1.invoke(GridModes.Full.f55430b);
                break;
            default:
                function1.invoke(chat);
                break;
        }
        return Unit.f71739a;
    }
}
