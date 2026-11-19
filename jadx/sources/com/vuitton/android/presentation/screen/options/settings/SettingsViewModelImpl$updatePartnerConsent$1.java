package com.vuitton.android.presentation.screen.options.settings;

import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$updatePartnerConsent$1", f = "SettingsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class SettingsViewModelImpl$updatePartnerConsent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsViewModelImpl f60026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f60027c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModelImpl$updatePartnerConsent$1(SettingsViewModelImpl settingsViewModelImpl, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f60026b = settingsViewModelImpl;
        this.f60027c = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SettingsViewModelImpl$updatePartnerConsent$1(this.f60026b, this.f60027c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SettingsViewModelImpl$updatePartnerConsent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        boolean z = this.f60027c;
        SettingsTrackingUiModel.ConsentToggleEvent consentToggleEvent = new SettingsTrackingUiModel.ConsentToggleEvent(z);
        SettingsViewModelImpl settingsViewModelImpl = this.f60026b;
        settingsViewModelImpl.cc(consentToggleEvent);
        MutableStateFlow mutableStateFlow = settingsViewModelImpl.m;
        mutableStateFlow.setValue(UserConsentsUiModel.a((UserConsentsUiModel) mutableStateFlow.getValue(), SnapshotStateKt.g(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) ((UserConsentsUiModel) mutableStateFlow.getValue()).f59457b.getF10755b(), false, false, false, false, null, Boolean.valueOf(z), null, 95))));
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new SettingsViewModelImpl$patchUserConsents$1(settingsViewModelImpl, false, null), 3);
        return Unit.f71739a;
    }
}
