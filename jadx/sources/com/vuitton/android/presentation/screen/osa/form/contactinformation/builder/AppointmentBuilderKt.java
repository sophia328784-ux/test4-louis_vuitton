package com.vuitton.android.presentation.screen.osa.form.contactinformation.builder;

import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaMapperKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.distantrepairs.Appointment;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppointmentBuilderKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public static final Object a(FormUiModel formUiModel, Profile profile, List list, TimeSlotUiModel timeSlotUiModel, AppointmentTypeUiModel appointmentTypeUiModel, OsaReasonUiModel osaReasonUiModel, Function1 function1, String str, ContinuationImpl continuationImpl) {
        AppointmentBuilderKt$buildAppointmentForLoggedUser$1 appointmentBuilderKt$buildAppointmentForLoggedUser$1;
        String str2;
        String str3;
        String str4;
        OsaReasonUiModel osaReasonUiModel2;
        FormUiModel formUiModel2;
        String str5;
        String str6;
        AppointmentType appointmentType;
        String str7;
        String str8;
        Object next;
        String str9;
        if (continuationImpl instanceof AppointmentBuilderKt$buildAppointmentForLoggedUser$1) {
            appointmentBuilderKt$buildAppointmentForLoggedUser$1 = (AppointmentBuilderKt$buildAppointmentForLoggedUser$1) continuationImpl;
            int i2 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.m;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appointmentBuilderKt$buildAppointmentForLoggedUser$1.m = i2 - Integer.MIN_VALUE;
            } else {
                appointmentBuilderKt$buildAppointmentForLoggedUser$1 = new AppointmentBuilderKt$buildAppointmentForLoggedUser$1(continuationImpl);
            }
        } else {
            appointmentBuilderKt$buildAppointmentForLoggedUser$1 = new AppointmentBuilderKt$buildAppointmentForLoggedUser$1(continuationImpl);
        }
        Object obj = appointmentBuilderKt$buildAppointmentForLoggedUser$1.l;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.m;
        if (i3 == 0) {
            ResultKt.b(obj);
            String strH = StringKtExtKt.h(profile != null ? profile.f68169h : null);
            if (strH != null) {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((Civility) next).f67578a, strH));
                Civility civility = (Civility) next;
                if (civility != null && (str9 = civility.f67579b) != null) {
                    strH = str9;
                }
            } else {
                strH = null;
            }
            str2 = strH == null ? "" : strH;
            String str10 = timeSlotUiModel.f57418e;
            AppointmentType appointmentTypeA = OsaMapperKt.a(appointmentTypeUiModel);
            String str11 = timeSlotUiModel.f57416b;
            String str12 = profile != null ? profile.g : null;
            if (str12 == null) {
                str12 = "";
            }
            String str13 = profile != null ? profile.f68166c : null;
            if (str13 == null) {
                str13 = "";
            }
            String str14 = profile != null ? profile.f68167e : null;
            if (str14 == null) {
                str14 = "";
            }
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60702b = osaReasonUiModel;
            str3 = str;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60703c = str3;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.d = formUiModel;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60704e = str2;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60705f = str14;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.g = str13;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60706h = str12;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60707i = str11;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60708j = appointmentTypeA;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60709k = str10;
            appointmentBuilderKt$buildAppointmentForLoggedUser$1.m = 1;
            Object objInvoke = function1.invoke(appointmentBuilderKt$buildAppointmentForLoggedUser$1);
            if (objInvoke == obj2) {
                return obj2;
            }
            str4 = str10;
            obj = objInvoke;
            osaReasonUiModel2 = osaReasonUiModel;
            formUiModel2 = formUiModel;
            str5 = str14;
            str6 = str11;
            appointmentType = appointmentTypeA;
            str7 = str12;
            str8 = str13;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str15 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60709k;
            AppointmentType appointmentType2 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60708j;
            String str16 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60707i;
            String str17 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60706h;
            String str18 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.g;
            String str19 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60705f;
            str2 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60704e;
            formUiModel2 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.d;
            str3 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60703c;
            osaReasonUiModel2 = appointmentBuilderKt$buildAppointmentForLoggedUser$1.f60702b;
            ResultKt.b(obj);
            str4 = str15;
            appointmentType = appointmentType2;
            str6 = str16;
            str7 = str17;
            str8 = str18;
            str5 = str19;
        }
        String str20 = str2;
        String str21 = str3;
        String str22 = ((DispatchRegionCode) obj).f67496a;
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER1;
        FormUiModel.Companion companion = FormUiModel.f57485b;
        String strE = formUiModel2.e(formSectionTypeUiModel, true);
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
        String strE2 = formUiModel2.e(formSectionTypeUiModel2, false);
        String strE3 = formUiModel2.e(formSectionTypeUiModel2, true);
        String strE4 = formUiModel2.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true);
        CareServiceId.INSTANCE.getClass();
        String str23 = CareServiceId.f66878b;
        String str24 = osaReasonUiModel2 != null ? osaReasonUiModel2.f60965a : null;
        return new Appointment(str4, appointmentType, str6, str7, str8, str5, str22, strE, strE2, strE3, strE4, str20, str23, str20, false, str24 == null ? "" : str24, str21, null);
    }

    public static final Object b(boolean z, FormUiModel formUiModel, FormUiModel formUiModel2, FormUiModel formUiModel3, Profile profile, List list, TimeSlotUiModel timeSlotUiModel, AppointmentTypeUiModel appointmentTypeUiModel, OsaReasonUiModel osaReasonUiModel, Function1 function1, String str, Continuation continuation) throws Throwable {
        Object next;
        String str2;
        if (!z) {
            Object objA = a(formUiModel3, profile, list, timeSlotUiModel, appointmentTypeUiModel, osaReasonUiModel, function1, str, (ContinuationImpl) continuation);
            return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : (Appointment) objA;
        }
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.CIVILITY;
        FormUiModel.Companion companion = FormUiModel.f57485b;
        String strH = StringKtExtKt.h(formUiModel.e(formSectionTypeUiModel, true));
        if (strH != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((Civility) next).f67578a, strH));
            Civility civility = (Civility) next;
            if (civility != null && (str2 = civility.f67579b) != null) {
                strH = str2;
            }
        } else {
            strH = null;
        }
        String str3 = strH == null ? "" : strH;
        DispatchRegionCode.Companion companion2 = DispatchRegionCode.f67495b;
        String strE = formUiModel.e(FormSectionTypeUiModel.COUNTRY, true);
        companion2.getClass();
        RegionCode.f67513b.getClass();
        String strA = RegionCode.Companion.a(strE);
        String str4 = strA != null ? strA : null;
        if (str4 == null) {
            return null;
        }
        String str5 = timeSlotUiModel.f57418e;
        AppointmentType appointmentTypeA = OsaMapperKt.a(appointmentTypeUiModel);
        String str6 = timeSlotUiModel.f57416b;
        String strE2 = formUiModel2.e(FormSectionTypeUiModel.EMAIL, true);
        String strE3 = formUiModel.e(FormSectionTypeUiModel.FIRSTNAME1, true);
        String strE4 = formUiModel.e(FormSectionTypeUiModel.LASTNAME1, true);
        String strE5 = formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true);
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
        String strE6 = formUiModel.e(formSectionTypeUiModel2, true);
        String strE7 = formUiModel.e(formSectionTypeUiModel2, true);
        String strE8 = formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true);
        CareServiceId.INSTANCE.getClass();
        String str7 = CareServiceId.f66878b;
        String str8 = osaReasonUiModel != null ? osaReasonUiModel.f60965a : null;
        return new Appointment(str5, appointmentTypeA, str6, strE2, strE3, strE4, str4, strE5, strE6, strE7, strE8, str3, str7, str3, false, str8 == null ? "" : str8, str, null);
    }
}
