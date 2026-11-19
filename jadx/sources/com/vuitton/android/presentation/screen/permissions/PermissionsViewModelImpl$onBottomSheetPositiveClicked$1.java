package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.domain.usecase.account.notifications.SaveNotificationsPreferencesUseCase;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesTracker;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$onBottomSheetPositiveClicked$1", f = "PermissionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PermissionsViewModelImpl$onBottomSheetPositiveClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f62340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionContext f62341c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionsViewModelImpl$onBottomSheetPositiveClicked$1(PermissionsViewModelImpl permissionsViewModelImpl, PermissionContext permissionContext, Continuation continuation) {
        super(2, continuation);
        this.f62340b = permissionsViewModelImpl;
        this.f62341c = permissionContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionsViewModelImpl$onBottomSheetPositiveClicked$1(this.f62340b, this.f62341c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionsViewModelImpl$onBottomSheetPositiveClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PermissionsViewModelImpl permissionsViewModelImpl = this.f62340b;
        MutableStateFlow mutableStateFlow = permissionsViewModelImpl.q;
        MutableStateFlow mutableStateFlow2 = permissionsViewModelImpl.o;
        permissionsViewModelImpl.f62326j.f50266a.a(new Consent.CustomisationConsent(ConsentValue.GIVEN));
        permissionsViewModelImpl.m.setValue(Boolean.TRUE);
        Map mapC = permissionsViewModelImpl.f62322e.f49103a.c();
        NotificationPreferenceType notificationPreferenceType = NotificationPreferenceType.BRAND_COMMUNICATION;
        Boolean bool = (Boolean) mapC.get(notificationPreferenceType);
        Pair pair = new Pair(notificationPreferenceType, Boolean.valueOf(bool != null ? bool.booleanValue() : false));
        NotificationPreferenceType notificationPreferenceType2 = NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION;
        Boolean bool2 = (Boolean) mapC.get(notificationPreferenceType2);
        Pair pair2 = new Pair(notificationPreferenceType2, Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false));
        NotificationPreferenceType notificationPreferenceType3 = NotificationPreferenceType.NOTIFY_ME;
        Boolean bool3 = (Boolean) mapC.get(notificationPreferenceType3);
        Map mapI = MapsKt.i(pair, pair2, new Pair(notificationPreferenceType3, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false)));
        SaveNotificationsPreferencesUseCase saveNotificationsPreferencesUseCase = permissionsViewModelImpl.f62323f;
        saveNotificationsPreferencesUseCase.getClass();
        saveNotificationsPreferencesUseCase.f49105a.a(mapI);
        permissionsViewModelImpl.d.getClass();
        NotificationsPreferencesTracker.a(mapI);
        if (((Boolean) mutableStateFlow2.getValue()).booleanValue()) {
            if (permissionsViewModelImpl.Ac(this.f62341c == PermissionContext.BACK_IN_STOCK)) {
                mutableStateFlow.setValue(new PermissionsBottomSheet.AllowCommunicationBottomSheet(false, 1, null));
            } else {
                permissionsViewModelImpl.Bc();
                permissionsViewModelImpl.yc();
            }
        } else if (permissionsViewModelImpl.f62325i.a(((Boolean) mutableStateFlow2.getValue()).booleanValue(), true)) {
            mutableStateFlow.setValue(new PermissionsBottomSheet.AllowDeviceNotificationsPermissionsBottomSheet(false, 1, null));
        } else {
            permissionsViewModelImpl.Gb();
        }
        return Unit.f71739a;
    }
}
