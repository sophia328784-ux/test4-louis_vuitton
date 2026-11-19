package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.account.notifications.GetContactabilityUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.feed.models.mappers.ContactabilityMapperKt$WhenMappings;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityActionUIModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import com.vuitton.foundation.model.domain.model.account.notifications.Contactability;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$fetchContactability$1", f = "PermissionsViewModelImpl.kt", l = {286}, m = "invokeSuspend", v = 2)
final class PermissionsViewModelImpl$fetchContactability$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f62337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f62338c;
    public final /* synthetic */ PermissionsViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionsViewModelImpl$fetchContactability$1(PermissionsViewModelImpl permissionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = permissionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionsViewModelImpl$fetchContactability$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionsViewModelImpl$fetchContactability$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        StringResourceUiModel.ResId resId;
        StringResourceUiModel.ResId resId2;
        StringResourceUiModel.ResId resId3;
        ContactabilityActionUIModel contactabilityActionUIModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62338c;
        ContactabilityUiModel contactabilityUiModel = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            PermissionsViewModelImpl permissionsViewModelImpl = this.d;
            MutableStateFlow mutableStateFlow2 = permissionsViewModelImpl.p;
            GetContactabilityUseCase getContactabilityUseCase = permissionsViewModelImpl.g;
            this.f62337b = mutableStateFlow2;
            this.f62338c = 1;
            obj = getContactabilityUseCase.f49102a.b();
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableStateFlow = mutableStateFlow2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow = (MutableStateFlow) this.f62337b;
            ResultKt.b(obj);
        }
        Contactability contactability = (Contactability) obj;
        contactability.getClass();
        int[] iArr = ContactabilityMapperKt$WhenMappings.f57932a;
        switch (iArr[contactability.ordinal()]) {
            case 1:
                resId = new StringResourceUiModel.ResId(R.string.Contactability_popin_notif_title, null, 2, null);
                break;
            case 2:
            case 3:
                resId = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_device_title, null, 2, null);
                break;
            case 4:
            case 5:
                resId = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_personalization_title, null, 2, null);
                break;
            case 6:
                mutableStateFlow.setValue(contactabilityUiModel);
                return Unit.f71739a;
            default:
                v40.g();
                return null;
        }
        int i3 = iArr[contactability.ordinal()];
        if (i3 == 1) {
            resId2 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_description, null, 2, null);
        } else if (i3 == 2 || i3 == 3) {
            resId2 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_device_desc, null, 2, null);
        } else {
            if (i3 != 4 && i3 != 5) {
                v40.g();
                return null;
            }
            resId2 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_personalization_desc, null, 2, null);
        }
        int i4 = iArr[contactability.ordinal()];
        if (i4 == 1) {
            resId3 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_cta, null, 2, null);
        } else if (i4 == 2 || i4 == 3) {
            resId3 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_device_cta, null, 2, null);
        } else {
            if (i4 != 4 && i4 != 5) {
                v40.g();
                return null;
            }
            resId3 = new StringResourceUiModel.ResId(R.string.contactability_popin_notif_personalization_cta, null, 2, null);
        }
        switch (iArr[contactability.ordinal()]) {
            case 1:
                contactabilityActionUIModel = ContactabilityActionUIModel.PREFERENCE_CENTER;
                break;
            case 2:
                contactabilityActionUIModel = ContactabilityActionUIModel.PREFERENCE_CENTER_WITH_NOTIFICATION;
                break;
            case 3:
                contactabilityActionUIModel = ContactabilityActionUIModel.SYSTEM_NOTIFICATION;
                break;
            case 4:
                contactabilityActionUIModel = ContactabilityActionUIModel.PERSONALIZATION;
                break;
            case 5:
                contactabilityActionUIModel = ContactabilityActionUIModel.EVERYTHING;
                break;
            case 6:
                contactabilityActionUIModel = ContactabilityActionUIModel.EVERYTHING;
                break;
            default:
                v40.g();
                return null;
        }
        contactabilityUiModel = new ContactabilityUiModel(resId, resId2, resId3, contactabilityActionUIModel);
        mutableStateFlow.setValue(contactabilityUiModel);
        return Unit.f71739a;
    }
}
