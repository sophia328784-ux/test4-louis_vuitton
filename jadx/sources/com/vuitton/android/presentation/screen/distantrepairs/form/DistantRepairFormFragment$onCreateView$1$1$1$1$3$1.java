package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.content.Intent;
import android.provider.CalendarContract;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import java.time.LocalDateTime;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairFormFragment$onCreateView$1$1$1$1$3$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) this.receiver;
        DistantRepairFormFragment.Companion companion = DistantRepairFormFragment.M;
        distantRepairFormFragment.O().d(DistantRepairTrackingUiModel.AddToCalendarEvent.f57422a);
        TimeSlotUiModel timeSlotUiModel = ((DistantRepairFormViewState) distantRepairFormFragment.O().getC().getValue()).f57381c.f57402b;
        LocalDateTime localDateTimeP = DateTimeUtils.p(timeSlotUiModel != null ? DateTimeUtils.a(timeSlotUiModel.d, null) : null);
        Calendar calendar = Calendar.getInstance();
        calendar.getClass();
        calendar.set(localDateTimeP.getYear(), localDateTimeP.getMonthValue() - 1, localDateTimeP.getDayOfMonth(), localDateTimeP.getHour(), localDateTimeP.getMinute());
        String string = distantRepairFormFragment.O().E0() ? distantRepairFormFragment.getString(R.string.dr_card1_video) : distantRepairFormFragment.getString(R.string.dr_card1_call);
        string.getClass();
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setData(CalendarContract.Events.CONTENT_URI);
        intent.putExtra("beginTime", calendar.getTimeInMillis());
        intent.putExtra("title", distantRepairFormFragment.getString(R.string.dr_calendar_title));
        intent.putExtra("description", distantRepairFormFragment.getString(R.string.dr_calendar_title));
        intent.putExtra("eventLocation", string);
        intent.putExtra("availability", 0);
        String str = ((DistantRepairFormViewState) distantRepairFormFragment.O().getC().getValue()).f57386j.f64002a;
        if (str != null) {
            intent.putExtra("android.intent.extra.EMAIL", str);
        }
        distantRepairFormFragment.startActivity(intent);
        return Unit.f71739a;
    }
}
