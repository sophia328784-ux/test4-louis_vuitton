package com.vuitton.android.presentation.screen.authentication.social;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterUiModel;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.rq;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class SocialRegisterActivity$onCreate$1$1$2$1$1 extends FunctionReferenceImpl implements Function2<FormSectionTypeUiModel, Object, Unit> {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object value;
        SocialRegisterUiModel socialRegisterUiModel;
        String str;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        Object value6;
        Object value7;
        SocialRegisterUiModel socialRegisterUiModel2;
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
        formSectionTypeUiModel.getClass();
        obj2.getClass();
        SocialRegisterViewModelImpl socialRegisterViewModelImpl = (SocialRegisterViewModelImpl) this.receiver;
        socialRegisterViewModelImpl.getClass();
        DynamicFormSupervisor dynamicFormSupervisor = socialRegisterViewModelImpl.f54089h;
        DynamicFormSupervisor dynamicFormSupervisor2 = socialRegisterViewModelImpl.f54090i;
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS;
        MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl.o;
        if (formSectionTypeUiModel == formSectionTypeUiModel2) {
            TrackingAuthOrigin trackingAuthOrigin = ((SocialRegisterUiModel) mutableStateFlow.getValue()).m;
            TrackingAuthEntryPoint trackingAuthEntryPoint = ((SocialRegisterUiModel) mutableStateFlow.getValue()).n;
            boolean z = ((SocialRegisterUiModel) mutableStateFlow.getValue()).g;
            SocialAuthMode socialAuthMode = ((SocialRegisterUiModel) mutableStateFlow.getValue()).o;
            if (socialAuthMode == null) {
                socialAuthMode = SocialAuthMode.GOOGLE;
            }
            socialRegisterViewModelImpl.f54086c.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyCheckBoxEvent(trackingAuthOrigin, trackingAuthEntryPoint, z, socialAuthMode)));
            do {
                value7 = mutableStateFlow.getValue();
                socialRegisterUiModel2 = (SocialRegisterUiModel) value7;
            } while (!mutableStateFlow.i(value7, SocialRegisterUiModel.a(socialRegisterUiModel2, null, null, null, null, null, !socialRegisterUiModel2.g, 32703)));
            dynamicFormSupervisor2.j(FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS, Boolean.valueOf(((SocialRegisterUiModel) mutableStateFlow.getValue()).g), new rq(9));
            dynamicFormSupervisor2.i();
        } else {
            dynamicFormSupervisor.j(formSectionTypeUiModel, obj2, new rq(9));
            switch (SocialRegisterViewModelImpl.WhenMappings.f54096a[formSectionTypeUiModel.ordinal()]) {
                case 2:
                    do {
                        value = mutableStateFlow.getValue();
                        socialRegisterUiModel = (SocialRegisterUiModel) value;
                        str = ((FormEnumValueUiModel) obj2).f57525b;
                        if (str == null) {
                            str = "";
                        }
                    } while (!mutableStateFlow.i(value, SocialRegisterUiModel.a(socialRegisterUiModel, null, null, null, null, str, false, 32735)));
                    break;
                case 3:
                    ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54231h.a();
                    do {
                        value2 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value2, SocialRegisterUiModel.a((SocialRegisterUiModel) value2, (String) obj2, null, null, null, null, false, 32765)));
                    break;
                case 4:
                    ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54231h.a();
                    do {
                        value3 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value3, SocialRegisterUiModel.a((SocialRegisterUiModel) value3, null, null, (String) obj2, null, null, false, 32759)));
                    break;
                case 5:
                    ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54232i.a();
                    do {
                        value4 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value4, SocialRegisterUiModel.a((SocialRegisterUiModel) value4, null, (String) obj2, null, null, null, false, 32763)));
                    break;
                case 6:
                    ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54232i.a();
                    do {
                        value5 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value5, SocialRegisterUiModel.a((SocialRegisterUiModel) value5, null, null, null, (String) obj2, null, false, 32751)));
                    break;
                case 7:
                    if (obj2 instanceof Boolean) {
                        do {
                            value6 = mutableStateFlow.getValue();
                        } while (!mutableStateFlow.i(value6, SocialRegisterUiModel.a((SocialRegisterUiModel) value6, null, null, null, null, null, ((Boolean) obj2).booleanValue(), 32703)));
                    }
                    break;
            }
            dynamicFormSupervisor.i();
        }
        return Unit.f71739a;
    }
}
