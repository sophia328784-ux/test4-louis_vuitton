package com.vuitton.android.presentation.screen.osa;

import android.content.Intent;
import android.provider.CalendarContract;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.FormatStyle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaActivity$onCreate$2$1$2$1 extends FunctionReferenceImpl implements Function2<InAppDispatch, OsaItemUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String string;
        InAppDispatch inAppDispatch = (InAppDispatch) obj;
        OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj2;
        inAppDispatch.getClass();
        osaItemUiModel.getClass();
        OsaActivity osaActivity = (OsaActivity) this.receiver;
        OsaActivity.Companion companion = OsaActivity.u;
        osaActivity.getClass();
        AppointmentTypeUiModel appointmentTypeUiModel = osaItemUiModel.f60925b;
        StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
        String string2 = appointmentTypeUiModel == AppointmentTypeUiModel.DISTANT ? osaActivity.getString(R.string.osa_appointment_form_virtual_cta) : osaActivity.getString(R.string.osa_appointment_form_instore_cta);
        string2.getClass();
        String strH = DateTimeUtils.h(inAppDispatch, osaItemUiModel.f60928f, FormatStyle.FULL);
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setData(CalendarContract.Events.CONTENT_URI);
        intent.putExtra("beginTime", ZonedDateTime.of(osaItemUiModel.d, ZoneOffset.UTC).toInstant().toEpochMilli());
        if (storeInformationItemUiModel == null || (string = storeInformationItemUiModel.f60939b) == null) {
            string = osaActivity.getString(R.string.dr_calendar_title);
            string.getClass();
        }
        intent.putExtra("title", string);
        String str = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60939b : null;
        if (str == null) {
            str = "";
        }
        intent.putExtra("description", osaActivity.getString(R.string.osa_event_description, str, strH));
        intent.putExtra("eventLocation", string2);
        intent.putExtra("eventTimezone", osaItemUiModel.g);
        intent.putExtra("availability", 0);
        osaActivity.startActivity(intent);
        return Unit.f71739a;
    }
}
