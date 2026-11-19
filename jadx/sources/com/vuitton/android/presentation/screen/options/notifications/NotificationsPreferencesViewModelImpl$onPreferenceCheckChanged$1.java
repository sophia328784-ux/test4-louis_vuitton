package com.vuitton.android.presentation.screen.options.notifications;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationPreferencesTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationPreferencesTrackingUiModelKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreference;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1", f = "NotificationsPreferencesViewModelImpl.kt", l = {152}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinkedHashMap f59884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NotificationPreferenceType f59885c;
    public NotificationsPreferencesViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public NotificationsPreference f59886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f59887f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModelImpl f59888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ NotificationPreferenceType f59889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f59890j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1(NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl, NotificationPreferenceType notificationPreferenceType, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f59888h = notificationsPreferencesViewModelImpl;
        this.f59889i = notificationPreferenceType;
        this.f59890j = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1(this.f59888h, this.f59889i, this.f59890j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LinkedHashMap linkedHashMapR;
        NotificationPreferenceType notificationPreferenceType;
        NotificationsPreference notificationsPreference;
        boolean z;
        LinkedHashMap linkedHashMap;
        NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl;
        boolean z2;
        NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl2 = this.f59888h;
        MutableStateFlow mutableStateFlow = notificationsPreferencesViewModelImpl2.f59878j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            linkedHashMapR = MapsKt.r((Map) mutableStateFlow.getValue());
            notificationPreferenceType = this.f59889i;
            notificationsPreference = (NotificationsPreference) linkedHashMapR.get(notificationPreferenceType);
            if (notificationsPreference != null) {
                NotificationPreferenceType notificationPreferenceType2 = NotificationPreferenceType.NOTIFY_ME;
                z = this.f59890j;
                if (notificationPreferenceType == notificationPreferenceType2 && z) {
                    IsFeatureAvailableUseCase isFeatureAvailableUseCase = notificationsPreferencesViewModelImpl2.f59873c;
                    Feature[] featureArr = {Feature.BACK_IN_STOCK};
                    this.f59884b = linkedHashMapR;
                    this.f59885c = notificationPreferenceType;
                    this.d = notificationsPreferencesViewModelImpl2;
                    this.f59886e = notificationsPreference;
                    this.f59887f = z;
                    this.g = 1;
                    Object objC = isFeatureAvailableUseCase.c(featureArr, false, this);
                    if (objC == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    obj = objC;
                    linkedHashMap = linkedHashMapR;
                    notificationsPreferencesViewModelImpl = notificationsPreferencesViewModelImpl2;
                    z2 = z;
                }
                linkedHashMapR.put(notificationPreferenceType, new NotificationsPreference(notificationsPreference.f59941a, notificationsPreference.f59942b, z, notificationsPreference.d));
            }
            MutableStateFlow mutableStateFlow2 = notificationsPreferencesViewModelImpl2.m;
            NotificationsPreference notificationsPreference2 = (NotificationsPreference) linkedHashMapR.get(NotificationPreferenceType.NOTIFY_ME);
            mutableStateFlow2.setValue(Boolean.valueOf(notificationsPreference2 != null ? notificationsPreference2.f59943c : true));
            mutableStateFlow.setValue(linkedHashMapR);
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        z2 = this.f59887f;
        notificationsPreference = this.f59886e;
        notificationsPreferencesViewModelImpl = this.d;
        notificationPreferenceType = this.f59885c;
        linkedHashMap = this.f59884b;
        ResultKt.b(obj);
        if (((Boolean) obj).booleanValue()) {
            notificationsPreferencesViewModelImpl.d.f59870a.a(NotificationPreferencesTrackingUiModelKt.a(NotificationPreferencesTrackingUiModel.EnableBackInStock.f59935a));
        }
        linkedHashMapR = linkedHashMap;
        z = z2;
        linkedHashMapR.put(notificationPreferenceType, new NotificationsPreference(notificationsPreference.f59941a, notificationsPreference.f59942b, z, notificationsPreference.d));
        MutableStateFlow mutableStateFlow3 = notificationsPreferencesViewModelImpl2.m;
        NotificationsPreference notificationsPreference3 = (NotificationsPreference) linkedHashMapR.get(NotificationPreferenceType.NOTIFY_ME);
        mutableStateFlow3.setValue(Boolean.valueOf(notificationsPreference3 != null ? notificationsPreference3.f59943c : true));
        mutableStateFlow.setValue(linkedHashMapR);
        return Unit.f71739a;
    }
}
