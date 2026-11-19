package com.vuitton.android.presentation.screen.certificates;

import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.certificate.GetCertificateDetailUrlUseCase;
import com.vuitton.android.domain.usecase.certificate.GetCertificateListUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondStoneUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFeatureFlags;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModelKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiMapperKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.certificate.Certificate;
import com.vuitton.foundation.model.domain.model.certificate.CertificateCapucine;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamond;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamondStone;
import com.vuitton.foundation.model.domain.model.certificate.CertificateRuby;
import com.vuitton.foundation.model.domain.model.certificate.CertificateVisionnaire;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001bBa\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0003¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;", "getCertificateListUseCase", "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;", "getCertificateDetailUrlUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "contactUsDelegate", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateViewModelImpl extends ViewModel implements CertificateViewModel, ContactUsDelegate {
    public static final /* synthetic */ int q = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f55612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f55613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f55614c;
    public final GetCertificateListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetCertificateDetailUrlUseCase f55615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f55616f;
    public final GetProfileUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f55617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContactUsDelegate f55618i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InAppDispatch f55619j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f55620k;
    public final SharedFlowImpl l;
    public final SharedFlow m;
    public final BufferedChannel n;
    public final MutableStateFlow o;
    public final StateFlow p;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$1", f = "CertificateViewModelImpl.kt", l = {83}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f55621b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CertificateViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = CertificateViewModelImpl.this.f55618i;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f55621b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f55621b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CertificateViewModelImpl(SavedStateHandle savedStateHandle, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, GetCertificateListUseCase getCertificateListUseCase, GetCertificateDetailUrlUseCase getCertificateDetailUrlUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProfileUseCase getProfileUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, NotificationBuilder notificationBuilder, ContactUsDelegate contactUsDelegate) {
        savedStateHandle.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        getCertificateListUseCase.getClass();
        getCertificateDetailUrlUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getProfileUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        notificationBuilder.getClass();
        contactUsDelegate.getClass();
        this.f55612a = logger;
        this.f55613b = analyticsTracker;
        this.f55614c = monitor;
        this.d = getCertificateListUseCase;
        this.f55615e = getCertificateDetailUrlUseCase;
        this.f55616f = isFeatureAvailableUseCase;
        this.g = getProfileUseCase;
        this.f55617h = notificationBuilder;
        this.f55618i = contactUsDelegate;
        this.f55619j = requireUserInAppDispatchUseCase.f49912a.b();
        this.f55620k = (String) savedStateHandle.a("ID");
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.l = sharedFlowImplB;
        this.m = FlowKt.a(sharedFlowImplB);
        this.n = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(CertificateViewState.Loading.f55879a);
        this.o = mutableStateFlowA;
        this.p = FlowKt.b(mutableStateFlowA);
        u2();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        contactUsDelegate.C(ScreenType.CERTIFICATES);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r5 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Ac(com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$retrieveUsername$1
            if (r0 == 0) goto L13
            r0 = r6
            com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$retrieveUsername$1 r0 = (com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$retrieveUsername$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$retrieveUsername$1 r0 = new com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$retrieveUsername$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f55647b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L52
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L35:
            kotlin.ResultKt.b(r6)
            goto L47
        L39:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r5 = r5.g
            r0.d = r4
            java.lang.Object r6 = r5.a(r0)
            if (r6 != r1) goto L47
            goto L51
        L47:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
            r0.d = r3
            java.lang.Object r5 = r6.c(r0)
            if (r5 != r1) goto L52
        L51:
            return r1
        L52:
            kotlin.ResultKt.b(r5)
            com.vuitton.foundation.model.domain.model.profile.Profile r5 = (com.vuitton.foundation.model.domain.model.profile.Profile) r5
            java.lang.String r6 = r5.f68166c
            java.lang.String r5 = r5.f68167e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            java.lang.String r6 = " "
            r0.append(r6)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.CharSequence r5 = kotlin.text.StringsKt.a0(r5)
            java.lang.String r5 = r5.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl.Ac(com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Object yc(CertificateViewModelImpl certificateViewModelImpl, ContinuationImpl continuationImpl) {
        CertificateViewModelImpl$initFeatureFlags$1 certificateViewModelImpl$initFeatureFlags$1;
        boolean z;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = certificateViewModelImpl.f55616f;
        if (continuationImpl instanceof CertificateViewModelImpl$initFeatureFlags$1) {
            certificateViewModelImpl$initFeatureFlags$1 = (CertificateViewModelImpl$initFeatureFlags$1) continuationImpl;
            int i2 = certificateViewModelImpl$initFeatureFlags$1.f55637e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                certificateViewModelImpl$initFeatureFlags$1.f55637e = i2 - Integer.MIN_VALUE;
            } else {
                certificateViewModelImpl$initFeatureFlags$1 = new CertificateViewModelImpl$initFeatureFlags$1(certificateViewModelImpl, continuationImpl);
            }
        } else {
            certificateViewModelImpl$initFeatureFlags$1 = new CertificateViewModelImpl$initFeatureFlags$1(certificateViewModelImpl, continuationImpl);
        }
        Object objC = certificateViewModelImpl$initFeatureFlags$1.f55636c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = certificateViewModelImpl$initFeatureFlags$1.f55637e;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.MY_CERTIFICATES};
            certificateViewModelImpl$initFeatureFlags$1.f55637e = 1;
            objC = isFeatureAvailableUseCase.c(featureArr, false, certificateViewModelImpl$initFeatureFlags$1);
            if (objC != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(objC);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = certificateViewModelImpl$initFeatureFlags$1.f55635b;
            ResultKt.b(objC);
        }
        return new CertificateFeatureFlags(z, ((Boolean) objC).booleanValue());
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        Feature[] featureArr2 = {Feature.CERTIFICATES_VISIONNAIRE_LOCKED_STATUS};
        certificateViewModelImpl$initFeatureFlags$1.f55635b = zBooleanValue;
        certificateViewModelImpl$initFeatureFlags$1.f55637e = 2;
        Object objC2 = isFeatureAvailableUseCase.c(featureArr2, false, certificateViewModelImpl$initFeatureFlags$1);
        if (objC2 != coroutineSingletons) {
            z = zBooleanValue;
            objC = objC2;
            return new CertificateFeatureFlags(z, ((Boolean) objC).booleanValue());
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static final Object zc(CertificateViewModelImpl certificateViewModelImpl, ContinuationImpl continuationImpl) {
        CertificateViewModelImpl$retrieveCertificateList$1 certificateViewModelImpl$retrieveCertificateList$1;
        Object objA;
        Object obj;
        Iterator it;
        ContributionLinkUiModel contributionLinkUiModel;
        Parcelable certificateVisionnaireUiModel;
        if (continuationImpl instanceof CertificateViewModelImpl$retrieveCertificateList$1) {
            certificateViewModelImpl$retrieveCertificateList$1 = (CertificateViewModelImpl$retrieveCertificateList$1) continuationImpl;
            int i2 = certificateViewModelImpl$retrieveCertificateList$1.f55646e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                certificateViewModelImpl$retrieveCertificateList$1.f55646e = i2 - Integer.MIN_VALUE;
            } else {
                certificateViewModelImpl$retrieveCertificateList$1 = new CertificateViewModelImpl$retrieveCertificateList$1(certificateViewModelImpl, continuationImpl);
            }
        } else {
            certificateViewModelImpl$retrieveCertificateList$1 = new CertificateViewModelImpl$retrieveCertificateList$1(certificateViewModelImpl, continuationImpl);
        }
        Object obj2 = certificateViewModelImpl$retrieveCertificateList$1.f55645c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = certificateViewModelImpl$retrieveCertificateList$1.f55646e;
        ContributionLinkUiModel contributionLinkUiModel2 = null;
        if (i3 == 0) {
            ResultKt.b(obj2);
            GetCertificateListUseCase getCertificateListUseCase = certificateViewModelImpl.d;
            certificateViewModelImpl$retrieveCertificateList$1.f55646e = 1;
            objA = getCertificateListUseCase.a(certificateViewModelImpl$retrieveCertificateList$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ArrayList arrayList = certificateViewModelImpl$retrieveCertificateList$1.f55644b;
            ResultKt.b(obj2);
            return arrayList;
        }
        ResultKt.b(obj2);
        objA = ((Result) obj2).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return EmptyList.f71768b;
        }
        ResultKt.b(objA);
        Iterable iterable = (Iterable) objA;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(iterable, 10));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            Certificate certificate = (Certificate) it2.next();
            InAppDispatch inAppDispatch = certificateViewModelImpl.f55619j;
            certificate.getClass();
            inAppDispatch.getClass();
            if (certificate instanceof CertificateDiamond) {
                CertificateDiamond certificateDiamond = (CertificateDiamond) certificate;
                String str = certificateDiamond.f67061a;
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                String str2 = certificateDiamond.f67062b;
                companion2.getClass();
                SkuIdUiModel.Companion.c(str2);
                String str3 = certificateDiamond.f67063c;
                String str4 = certificateDiamond.f67066h;
                String str5 = certificateDiamond.f67065f;
                CertificateStatusUiModel certificateStatusUiModelA = CertificateUiMapperKt.a(certificateDiamond.d);
                String str6 = certificateDiamond.f67064e;
                ProductIdUiModel.Companion companion3 = ProductIdUiModel.f61731c;
                contributionLinkUiModel = contributionLinkUiModel2;
                String str7 = certificateDiamond.g;
                companion3.getClass();
                str7.getClass();
                String str8 = certificateDiamond.f67067i;
                String str9 = certificateDiamond.f67068j;
                it = it2;
                String str10 = certificateDiamond.f67069k;
                List list = certificateDiamond.m;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list, 10));
                for (Iterator it3 = list.iterator(); it3.hasNext(); it3 = it3) {
                    CertificateDiamondStone certificateDiamondStone = (CertificateDiamondStone) it3.next();
                    arrayList3.add(new CertificateDiamondStoneUiModel(certificateDiamondStone.f67070a, certificateDiamondStone.f67071b));
                }
                certificateVisionnaireUiModel = new CertificateDiamondUiModel(str, str2, str3, str4, str5, certificateStatusUiModelA, str6, str7, str8, null, str9, str10, null, arrayList3, Constants.Event.AUTHENTICATION_NEEDED, null);
            } else {
                it = it2;
                contributionLinkUiModel = contributionLinkUiModel2;
                if (certificate instanceof CertificateCapucine) {
                    CertificateCapucine certificateCapucine = (CertificateCapucine) certificate;
                    String str11 = certificateCapucine.f67050a;
                    SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                    String str12 = certificateCapucine.f67051b;
                    companion4.getClass();
                    SkuIdUiModel.Companion.c(str12);
                    String str13 = certificateCapucine.f67052c;
                    String str14 = certificateCapucine.f67055h;
                    String str15 = certificateCapucine.f67053e;
                    CertificateStatusUiModel certificateStatusUiModelA2 = CertificateUiMapperKt.a(certificateCapucine.d);
                    String str16 = certificateCapucine.f67053e;
                    Locale locale = inAppDispatch.m;
                    String str17 = certificateCapucine.f67054f;
                    String strD = DateTimeUtils.d(locale, str17, "MM-dd-yyyy", FormatStyle.LONG);
                    String str18 = strD == null ? str17 : strD;
                    String str19 = certificateCapucine.g;
                    String str20 = certificateCapucine.f67056i;
                    List list2 = certificateCapucine.f67057j;
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj3 : list2) {
                        if (((String) obj3).length() > 0) {
                            arrayList4.add(obj3);
                        }
                    }
                    certificateVisionnaireUiModel = new CertificateCapucineUiModel(str11, str12, str13, str14, str15, certificateStatusUiModelA2, str16, str18, str19, str20, arrayList4, certificateCapucine.f67058k, null);
                } else if (certificate instanceof CertificateRuby) {
                    CertificateRuby certificateRuby = (CertificateRuby) certificate;
                    String str21 = certificateRuby.f67072a;
                    SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                    String str22 = certificateRuby.f67073b;
                    companion5.getClass();
                    SkuIdUiModel.Companion.c(str22);
                    certificateVisionnaireUiModel = new CertificateRubyUiModel(str21, str22, certificateRuby.f67074c, certificateRuby.f67076f, certificateRuby.f67075e, CertificateUiMapperKt.a(certificateRuby.d), certificateRuby.g, certificateRuby.f67077h, null);
                } else {
                    if (!(certificate instanceof CertificateVisionnaire)) {
                        v40.g();
                        return contributionLinkUiModel;
                    }
                    CertificateVisionnaire certificateVisionnaire = (CertificateVisionnaire) certificate;
                    String str23 = certificateVisionnaire.f67078a;
                    SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
                    String str24 = certificateVisionnaire.f67079b;
                    companion6.getClass();
                    SkuIdUiModel.Companion.c(str24);
                    String str25 = certificateVisionnaire.f67080c;
                    String str26 = certificateVisionnaire.o;
                    String str27 = certificateVisionnaire.f67081e;
                    CertificateStatusUiModel certificateStatusUiModelA3 = CertificateUiMapperKt.a(certificateVisionnaire.d);
                    String str28 = certificateVisionnaire.f67081e;
                    ContributionLink contributionLink = certificateVisionnaire.g;
                    certificateVisionnaireUiModel = new CertificateVisionnaireUiModel(str23, str24, str25, str26, str27, certificateStatusUiModelA3, str28, certificateVisionnaire.f67082f, contributionLink != null ? ContributionLinkUiModelKt.a(contributionLink) : contributionLinkUiModel, certificateVisionnaire.f67083h, certificateVisionnaire.f67084i, certificateVisionnaire.f67085j, certificateVisionnaire.f67086k, certificateVisionnaire.l, certificateVisionnaire.m, certificateVisionnaire.n, certificateVisionnaire.p, null);
                }
            }
            arrayList2.add(certificateVisionnaireUiModel);
            contributionLinkUiModel2 = contributionLinkUiModel;
            it2 = it;
        }
        ContributionLinkUiModel contributionLinkUiModel3 = contributionLinkUiModel2;
        String str29 = certificateViewModelImpl.f55620k;
        if (str29 != null) {
            ArrayList arrayList5 = new ArrayList();
            for (Object obj4 : arrayList2) {
                if (obj4 instanceof CertificateDiamondUiModel) {
                    arrayList5.add(obj4);
                }
            }
            Iterator it4 = arrayList5.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    obj = contributionLinkUiModel3;
                    break;
                }
                Object next = it4.next();
                if (Intrinsics.c(((CertificateDiamondUiModel) next).f55831h, str29)) {
                    obj = next;
                    break;
                }
            }
            CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) obj;
            if (certificateDiamondUiModel != null) {
                SharedFlowImpl sharedFlowImpl = certificateViewModelImpl.l;
                certificateViewModelImpl$retrieveCertificateList$1.f55644b = arrayList2;
                certificateViewModelImpl$retrieveCertificateList$1.f55646e = 2;
                if (sharedFlowImpl.emit(certificateDiamondUiModel, certificateViewModelImpl$retrieveCertificateList$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        return arrayList2;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f55618i.B(chatProductModel, i2, i3);
    }

    public final void Bc(boolean z) {
        Object value;
        List list;
        CertificateFeatureFlags certificateFeatureFlags;
        String str;
        MutableStateFlow mutableStateFlow = this.o;
        CertificateViewState certificateViewState = (CertificateViewState) mutableStateFlow.getValue();
        if (certificateViewState instanceof CertificateViewState.Success) {
            do {
                value = mutableStateFlow.getValue();
                CertificateViewState.Success success = (CertificateViewState.Success) certificateViewState;
                list = success.f55880a;
                certificateFeatureFlags = success.f55881b;
                str = success.f55882c;
                list.getClass();
                certificateFeatureFlags.getClass();
            } while (!mutableStateFlow.i(value, new CertificateViewState.Success(list, certificateFeatureFlags, str, z)));
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f55618i.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f55618i.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55618i.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final void L9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new CertificateViewModelImpl$onOpenPDFError$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f55618i.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f55618i.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final void Q5(CertificateDiamondUiModel certificateDiamondUiModel, String str) {
        str.getClass();
        certificateDiamondUiModel.getClass();
        Bc(true);
        this.f55613b.a(CertificateTrackingUiModelKt.b(new CertificateTrackingUiModel.HitOnStoneEngravingEvent(certificateDiamondUiModel, str)));
        BuildersKt.c(ViewModelKt.a(this), null, null, new CertificateViewModelImpl$onViewStoneClicked$1(this, str, certificateDiamondUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f55618i.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final Flow b() {
        return FlowKt.y(this.n);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final void c() {
        this.f55618i.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    /* JADX INFO: renamed from: da, reason: from getter */
    public final SharedFlow getM() {
        return this.m;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f55618i.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f55618i.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f55618i.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f55618i.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f55618i.s();
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final void u(CertificateTrackingUiModel certificateTrackingUiModel) {
        this.f55613b.a(CertificateTrackingUiModelKt.b(certificateTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateViewModel
    public final void u2() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new CertificateViewModelImpl$getCertificatesList$1(this, this.f55614c.a(this.f55619j, CertificateMonitoring.Action.OpenMyCertificates.f48895a), null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f55618i.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f55618i.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55618i.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f55618i.z();
    }
}
