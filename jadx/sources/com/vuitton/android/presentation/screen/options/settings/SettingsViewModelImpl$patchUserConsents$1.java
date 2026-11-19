package com.vuitton.android.presentation.screen.options.settings;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.lifecycle.ViewModelKt;
import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.domain.usecase.account.consent.PatchUserConsentsUseCase;
import com.vuitton.android.presentation.screen.mylv.models.KisaUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.av0;
import defpackage.md;
import defpackage.o60;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$patchUserConsents$1", f = "SettingsViewModelImpl.kt", l = {179}, m = "invokeSuspend", v = 2)
final class SettingsViewModelImpl$patchUserConsents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f60007c;
    public final /* synthetic */ SettingsViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f60008e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$patchUserConsents$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SettingsViewModelImpl f60009b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f60010c;
        public final /* synthetic */ CoroutineScope d;

        public AnonymousClass1(SettingsViewModelImpl settingsViewModelImpl, boolean z, CoroutineScope coroutineScope) {
            this.f60009b = settingsViewModelImpl;
            this.f60010c = z;
            this.d = coroutineScope;
        }

        /* JADX WARN: Code duplicated, block: B:43:0x01c7  */
        /* JADX WARN: Code duplicated, block: B:44:0x01f2  */
        /* JADX WARN: Code duplicated, block: B:7:0x001d  */
        /* JADX WARN: Instruction removed from duplicated block: B:43:0x01c7, please report this as an issue */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(UserConsentsUiModel userConsentsUiModel, Continuation continuation) {
            SettingsViewModelImpl$patchUserConsents$1$1$emit$1 settingsViewModelImpl$patchUserConsents$1$1$emit$1;
            boolean zBooleanValue;
            Object obj;
            MarketingUserConsentsUiModel marketingUserConsentsUiModel;
            MarketingUserConsentsUiModel marketingUserConsentsUiModel2;
            SettingsViewModelImpl settingsViewModelImpl;
            Object obj2;
            Throwable thA;
            CancellationException cancellationException;
            Object value;
            SettingsViewModelImpl settingsViewModelImpl2 = this.f60009b;
            MutableStateFlow mutableStateFlow = settingsViewModelImpl2.f60003k;
            if (continuation instanceof SettingsViewModelImpl$patchUserConsents$1$1$emit$1) {
                settingsViewModelImpl$patchUserConsents$1$1$emit$1 = (SettingsViewModelImpl$patchUserConsents$1$1$emit$1) continuation;
                int i2 = settingsViewModelImpl$patchUserConsents$1$1$emit$1.g;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1.g = i2 - Integer.MIN_VALUE;
                } else {
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1 = new SettingsViewModelImpl$patchUserConsents$1$1$emit$1(this, continuation);
                }
            } else {
                settingsViewModelImpl$patchUserConsents$1$1$emit$1 = new SettingsViewModelImpl$patchUserConsents$1$1$emit$1(this, continuation);
            }
            Object obj3 = settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60013e;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = settingsViewModelImpl$patchUserConsents$1$1$emit$1.g;
            boolean z = true;
            if (i3 == 0) {
                ResultKt.b(obj3);
                while (true) {
                    Object value2 = mutableStateFlow.getValue();
                    ((Boolean) value2).getClass();
                    if (mutableStateFlow.i(value2, Boolean.TRUE)) {
                        break;
                    }
                    z = z;
                }
                MarketingUserConsentsUiModel marketingUserConsentsUiModel3 = (MarketingUserConsentsUiModel) userConsentsUiModel.f59457b.getF10755b();
                PatchUserConsentsUseCase patchUserConsentsUseCase = settingsViewModelImpl2.g;
                KisaUserConsentsUiModel kisaUserConsentsUiModel = userConsentsUiModel.f59456a;
                KisaConsents kisaConsents = kisaUserConsentsUiModel != null ? new KisaConsents(kisaUserConsentsUiModel.f59400a, kisaUserConsentsUiModel.f59401b, kisaUserConsentsUiModel.f59402c, kisaUserConsentsUiModel.d, kisaUserConsentsUiModel.f59403e, kisaUserConsentsUiModel.f59404f, kisaUserConsentsUiModel.g, kisaUserConsentsUiModel.f59405h) : null;
                MarketingUserConsentsUiModel marketingUserConsentsUiModel4 = (MarketingUserConsentsUiModel) userConsentsUiModel.f59457b.getF10755b();
                marketingUserConsentsUiModel4.getClass();
                UserConsents userConsents = new UserConsents(kisaConsents, new MarketingConsents(Boolean.valueOf(marketingUserConsentsUiModel4.f59406a), Boolean.valueOf(marketingUserConsentsUiModel4.f59407b), Boolean.valueOf(marketingUserConsentsUiModel4.f59408c), Boolean.valueOf(marketingUserConsentsUiModel4.d), marketingUserConsentsUiModel4.f59409e, marketingUserConsentsUiModel4.f59410f, marketingUserConsentsUiModel4.g));
                settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60011b = marketingUserConsentsUiModel3;
                settingsViewModelImpl$patchUserConsents$1$1$emit$1.g = 1;
                zBooleanValue = false;
                Object objA = patchUserConsentsUseCase.a(userConsents, false, settingsViewModelImpl$patchUserConsents$1$1$emit$1);
                if (objA != coroutineSingletons) {
                    obj = objA;
                    marketingUserConsentsUiModel = marketingUserConsentsUiModel3;
                }
                return coroutineSingletons;
            }
            if (i3 == 1) {
                marketingUserConsentsUiModel = settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60011b;
                ResultKt.b(obj3);
                obj = ((Result) obj3).f71708b;
                zBooleanValue = false;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                settingsViewModelImpl = settingsViewModelImpl$patchUserConsents$1$1$emit$1.d;
                obj2 = settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60012c;
                marketingUserConsentsUiModel2 = settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60011b;
                ResultKt.b(obj3);
            }
            obj = obj2;
            MutableStateFlow mutableStateFlow2 = settingsViewModelImpl.n;
            mutableStateFlow2.setValue(UserConsentsUiModel.a((UserConsentsUiModel) mutableStateFlow2.getValue(), SnapshotStateKt.g(MarketingUserConsentsUiModel.a(marketingUserConsentsUiModel2, false, false, false, false, null, null, null, CertificateBody.profileType))));
            thA = Result.a(obj);
            if (thA != null) {
                settingsViewModelImpl2.v1();
                cancellationException = null;
                LegacyLogger.f66205a.c("SettingsViewModelImpl", "Error patch consents: " + thA.getMessage(), null);
                BuildersKt.c(ViewModelKt.a(settingsViewModelImpl2), null, null, new SettingsViewModelImpl$showErrorNotification$1(settingsViewModelImpl2, null), 3);
            } else {
                cancellationException = null;
            }
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.FALSE));
            CoroutineScopeKt.c(this.d, cancellationException);
            return Unit.f71739a;
            Result.Companion companion = Result.INSTANCE;
            if (!(obj instanceof Result.Failure)) {
                if (this.f60010c) {
                    SettingsTracker settingsTracker = settingsViewModelImpl2.f59998e;
                    boolean z2 = marketingUserConsentsUiModel.f59407b;
                    boolean z3 = marketingUserConsentsUiModel.d;
                    boolean z4 = marketingUserConsentsUiModel.f59406a;
                    boolean z5 = marketingUserConsentsUiModel.f59408c;
                    Boolean bool = marketingUserConsentsUiModel.g;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    }
                    settingsTracker.getClass();
                    settingsTracker.f59995a.a(new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/mysettings/contactPreferences", "new_settings_saved", "MyLV", Payload.RESPONSE, null, o60.t(CollectionsKt.K(CollectionsKt.P(new Pair("phone", Boolean.valueOf(z4)), new Pair("sms", Boolean.valueOf(z3)), new Pair("mail", Boolean.valueOf(z2)), new Pair("newsletter", Boolean.valueOf(z5)), new Pair("email_tracking", Boolean.valueOf(zBooleanValue))), ",", null, null, new av0(12), 30)), 33, null));
                    BuildersKt.c(ViewModelKt.a(settingsViewModelImpl2), null, null, new SettingsViewModelImpl$retrieveConsents$1(settingsViewModelImpl2, null), 3);
                    BufferedChannel bufferedChannel = settingsViewModelImpl2.f60002j;
                    Boolean bool2 = Boolean.TRUE;
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60011b = marketingUserConsentsUiModel;
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1.f60012c = obj;
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1.d = settingsViewModelImpl2;
                    settingsViewModelImpl$patchUserConsents$1$1$emit$1.g = 2;
                    if (bufferedChannel.u(bool2, settingsViewModelImpl$patchUserConsents$1$1$emit$1) != coroutineSingletons) {
                        marketingUserConsentsUiModel2 = marketingUserConsentsUiModel;
                        obj2 = obj;
                        settingsViewModelImpl = settingsViewModelImpl2;
                        obj = obj2;
                    }
                    return coroutineSingletons;
                }
                marketingUserConsentsUiModel2 = marketingUserConsentsUiModel;
                settingsViewModelImpl = settingsViewModelImpl2;
                MutableStateFlow mutableStateFlow3 = settingsViewModelImpl.n;
                mutableStateFlow3.setValue(UserConsentsUiModel.a((UserConsentsUiModel) mutableStateFlow3.getValue(), SnapshotStateKt.g(MarketingUserConsentsUiModel.a(marketingUserConsentsUiModel2, false, false, false, false, null, null, null, CertificateBody.profileType))));
            }
            thA = Result.a(obj);
            if (thA != null) {
                settingsViewModelImpl2.v1();
                cancellationException = null;
                LegacyLogger.f66205a.c("SettingsViewModelImpl", "Error patch consents: " + thA.getMessage(), null);
                BuildersKt.c(ViewModelKt.a(settingsViewModelImpl2), null, null, new SettingsViewModelImpl$showErrorNotification$1(settingsViewModelImpl2, null), 3);
            } else {
                cancellationException = null;
            }
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.FALSE));
            CoroutineScopeKt.c(this.d, cancellationException);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModelImpl$patchUserConsents$1(SettingsViewModelImpl settingsViewModelImpl, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = settingsViewModelImpl;
        this.f60008e = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SettingsViewModelImpl$patchUserConsents$1 settingsViewModelImpl$patchUserConsents$1 = new SettingsViewModelImpl$patchUserConsents$1(this.d, this.f60008e, continuation);
        settingsViewModelImpl$patchUserConsents$1.f60007c = obj;
        return settingsViewModelImpl$patchUserConsents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SettingsViewModelImpl$patchUserConsents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f60007c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60006b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SettingsViewModelImpl settingsViewModelImpl = this.d;
            MutableStateFlow mutableStateFlow = settingsViewModelImpl.m;
            boolean z = this.f60008e;
            Flow flowJ = FlowKt.j(mutableStateFlow, z ? 0L : 1000L);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(settingsViewModelImpl, z, coroutineScope);
            this.f60007c = null;
            this.f60006b = 1;
            if (flowJ.f(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
