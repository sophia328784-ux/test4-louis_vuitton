package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.google.firebase.analytics.AnalyticsKt;
import com.google.firebase.analytics.ConsentBuilder;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB3\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatcher", "<init>", "(Landroid/content/SharedPreferences;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConsentRepositoryImpl implements ConsentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f47625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InAppDispatchRepository f47626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f47627c;
    public final Logger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineDispatchers f47628e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$Companion;", "", "", "KEY_CONSENT", "Ljava/lang/String;", "KEY_CONSENT_DATE", "PIPL_CBDT_AGREEMENT", "PREF_GDPR_CONSENT_DATE", "PREF_CCPA_CONSENT_DATE", "PREF_CHINESE_PIPL_CONSENT_DATE", "PREF_CONSENT_FUNCTIONAL_TRACKERS", "PREF_CONSENT_ANALYTICS_TRACKERS", "PREF_CONSENT_CUSTOMISATION_TRACKERS", "PREF_CONSENT_SOCIAL_TRACKERS", "PREF_CONSENT_LUCIELABS_TRACKERS", "PREF_HAS_CHOSEN_CONSENT_CHAT", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47629a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f47629a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ConsentRepositoryImpl(SharedPreferences sharedPreferences, InAppDispatchRepository inAppDispatchRepository, Json json, Logger logger, CoroutineDispatchers coroutineDispatchers) {
        sharedPreferences.getClass();
        inAppDispatchRepository.getClass();
        json.getClass();
        logger.getClass();
        coroutineDispatchers.getClass();
        this.f47625a = sharedPreferences;
        this.f47626b = inAppDispatchRepository;
        this.f47627c = json;
        this.d = logger;
        this.f47628e = coroutineDispatchers;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final void a(Consent consent) {
        ArrayList arrayListZ0 = CollectionsKt.z0(p());
        Iterator it = arrayListZ0.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (((Consent) it.next()).getClass() == consent.getClass()) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            arrayListZ0.set(i2, consent);
        } else {
            arrayListZ0.add(consent);
        }
        String strC = this.f47627c.c(BuiltinSerializersKt.b(Consent.INSTANCE.serializer()), arrayListZ0);
        SharedPreferences.Editor editorEdit = this.f47625a.edit();
        editorEdit.putString("key_consent", strC);
        editorEdit.apply();
        r(System.currentTimeMillis());
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final Object b(boolean z, ContinuationImpl continuationImpl) throws Throwable {
        Object objF = BuildersKt.f(this.f47628e.getF43530b(), new ConsentRepositoryImpl$setPiplCbdtAgreement$2(this, z, null), continuationImpl);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final void c(boolean z, boolean z2) {
        FirebaseAnalytics firebaseAnalyticsA = AnalyticsKt.a();
        ConsentBuilder consentBuilder = new ConsentBuilder();
        consentBuilder.f34358b = z ? FirebaseAnalytics.ConsentStatus.GRANTED : FirebaseAnalytics.ConsentStatus.DENIED;
        consentBuilder.f34357a = z2 ? FirebaseAnalytics.ConsentStatus.GRANTED : FirebaseAnalytics.ConsentStatus.DENIED;
        consentBuilder.f34359c = z2 ? FirebaseAnalytics.ConsentStatus.GRANTED : FirebaseAnalytics.ConsentStatus.DENIED;
        consentBuilder.d = z2 ? FirebaseAnalytics.ConsentStatus.GRANTED : FirebaseAnalytics.ConsentStatus.DENIED;
        firebaseAnalyticsA.c(consentBuilder.a());
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final boolean d() {
        ConsentValue consentValue;
        InAppDispatch inAppDispatchB = this.f47626b.b();
        if (!g()) {
            return !InAppDispatchExtKt.e(inAppDispatchB);
        }
        List listF = f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.SocialConsent) {
                arrayList.add(obj);
            }
        }
        Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
        if (consent == null || (consentValue = consent.f67882a) == null) {
            return false;
        }
        return consentValue.b();
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final Object e(Continuation continuation) throws Throwable {
        r(0L);
        i(EmptyList.f71768b);
        Object objB = b(false, (ContinuationImpl) continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final List f() throws Throwable {
        List listQ = q();
        if (!listQ.isEmpty()) {
            i(listQ);
            return listQ;
        }
        List listP = p();
        if (!listP.isEmpty()) {
            return listP;
        }
        int i2 = WhenMappings.f47629a[k().ordinal()];
        if (i2 == 1) {
            Consent.FunctionalConsent functionalConsent = new Consent.FunctionalConsent(ConsentValue.MANDATORY);
            ConsentValue consentValue = ConsentValue.UNSET;
            return CollectionsKt.P(functionalConsent, new Consent.AnalyticsConsent(consentValue), new Consent.CustomisationConsent(consentValue), new Consent.SocialConsent(consentValue), new Consent.ChatConsent(consentValue));
        }
        if (i2 == 2) {
            Consent.FunctionalConsent functionalConsent2 = new Consent.FunctionalConsent(ConsentValue.MANDATORY);
            ConsentValue consentValue2 = ConsentValue.GIVEN;
            return CollectionsKt.P(functionalConsent2, new Consent.AnalyticsConsent(consentValue2), new Consent.CustomisationConsent(consentValue2), new Consent.SocialConsent(consentValue2), new Consent.ChatConsent(consentValue2));
        }
        if (i2 == 3) {
            ConsentValue consentValue3 = ConsentValue.UNSET;
            return CollectionsKt.P(new Consent.FunctionalConsent(consentValue3), new Consent.AnalyticsConsent(consentValue3), new Consent.CustomisationConsent(consentValue3), new Consent.LucieLabsConsent(consentValue3), new Consent.ChatConsent(consentValue3));
        }
        if (i2 == 4) {
            return EmptyList.f71768b;
        }
        v40.g();
        return null;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final boolean g() {
        return !p().isEmpty();
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final boolean h() {
        ConsentValue consentValue;
        InAppDispatch inAppDispatchB = this.f47626b.b();
        if (!g()) {
            return !InAppDispatchExtKt.e(inAppDispatchB);
        }
        List listF = f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.FunctionalConsent) {
                arrayList.add(obj);
            }
        }
        Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
        if (consent == null || (consentValue = consent.f67882a) == null) {
            return false;
        }
        return consentValue.b();
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final void i(List list) {
        list.getClass();
        String strC = this.f47627c.c(BuiltinSerializersKt.b(Consent.INSTANCE.serializer()), list);
        SharedPreferences.Editor editorEdit = this.f47625a.edit();
        editorEdit.putString("key_consent", strC);
        editorEdit.apply();
        r(System.currentTimeMillis());
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final boolean j() {
        ConsentValue consentValue;
        InAppDispatch inAppDispatchB = this.f47626b.b();
        if (!g()) {
            return !InAppDispatchExtKt.e(inAppDispatchB);
        }
        List listF = f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.CustomisationConsent) {
                arrayList.add(obj);
            }
        }
        Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
        if (consent == null || (consentValue = consent.f67882a) == null) {
            return false;
        }
        return consentValue.b();
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final PrivacyType k() {
        InAppDispatch inAppDispatchB = this.f47626b.b();
        String str = inAppDispatchB.f67477b.f67493c;
        RegionCode.f67513b.getClass();
        boolean z = Intrinsics.c(str, RegionCode.n) && InAppDispatchExtKt.f(inAppDispatchB);
        if (InAppDispatchExtKt.f(inAppDispatchB) || z) {
            return PrivacyType.GDPR;
        }
        if (InAppDispatchExtKt.h(inAppDispatchB)) {
            return PrivacyType.CCPA;
        }
        return InAppDispatchExtKt.c(inAppDispatchB) ? PrivacyType.PIPL : PrivacyType.NONE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final Object l(ContinuationImpl continuationImpl) {
        ConsentRepositoryImpl$getPiplCbdtAgreement$1 consentRepositoryImpl$getPiplCbdtAgreement$1;
        if (continuationImpl instanceof ConsentRepositoryImpl$getPiplCbdtAgreement$1) {
            consentRepositoryImpl$getPiplCbdtAgreement$1 = (ConsentRepositoryImpl$getPiplCbdtAgreement$1) continuationImpl;
            int i2 = consentRepositoryImpl$getPiplCbdtAgreement$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                consentRepositoryImpl$getPiplCbdtAgreement$1.d = i2 - Integer.MIN_VALUE;
            } else {
                consentRepositoryImpl$getPiplCbdtAgreement$1 = new ConsentRepositoryImpl$getPiplCbdtAgreement$1(this, continuationImpl);
            }
        } else {
            consentRepositoryImpl$getPiplCbdtAgreement$1 = new ConsentRepositoryImpl$getPiplCbdtAgreement$1(this, continuationImpl);
        }
        Object objF = consentRepositoryImpl$getPiplCbdtAgreement$1.f47630b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = consentRepositoryImpl$getPiplCbdtAgreement$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47628e.getF43530b();
            ConsentRepositoryImpl$getPiplCbdtAgreement$2 consentRepositoryImpl$getPiplCbdtAgreement$2 = new ConsentRepositoryImpl$getPiplCbdtAgreement$2(this, null);
            consentRepositoryImpl$getPiplCbdtAgreement$1.d = 1;
            objF = BuildersKt.f(f43530b, consentRepositoryImpl$getPiplCbdtAgreement$2, consentRepositoryImpl$getPiplCbdtAgreement$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final long m() {
        SharedPreferences sharedPreferences = this.f47625a;
        boolean zContains = sharedPreferences.contains("PREF_CHINESE_GDPR_CONSENT_DATE");
        boolean zContains2 = sharedPreferences.contains("PREF_GDPR_CONSENT_DATE");
        boolean zContains3 = sharedPreferences.contains("PREF_CCPA_CONSENT_DATE");
        long j2 = 0;
        if (!zContains && !zContains2 && !zContains3) {
            return sharedPreferences.getLong("key_consent_date", 0L);
        }
        int i2 = WhenMappings.f47629a[k().ordinal()];
        if (i2 == 1) {
            j2 = sharedPreferences.getLong("PREF_GDPR_CONSENT_DATE", 0L);
        } else if (i2 == 2) {
            j2 = sharedPreferences.getLong("PREF_CCPA_CONSENT_DATE", 0L);
        } else if (i2 == 3) {
            j2 = sharedPreferences.getLong("PREF_CHINESE_GDPR_CONSENT_DATE", 0L);
        } else if (i2 != 4) {
            v40.g();
            return 0L;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.remove("PREF_GDPR_CONSENT_DATE");
        editorEdit.apply();
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        editorEdit2.remove("PREF_CHINESE_GDPR_CONSENT_DATE");
        editorEdit2.apply();
        SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
        editorEdit3.remove("PREF_CCPA_CONSENT_DATE");
        editorEdit3.apply();
        r(j2);
        return j2;
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final boolean n() {
        ConsentValue consentValue;
        InAppDispatch inAppDispatchB = this.f47626b.b();
        if (!g()) {
            return !InAppDispatchExtKt.e(inAppDispatchB);
        }
        List listF = f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.AnalyticsConsent) {
                arrayList.add(obj);
            }
        }
        Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
        if (consent == null || (consentValue = consent.f67882a) == null) {
            return false;
        }
        return consentValue.b();
    }

    @Override // com.vuitton.android.domain.repository.ConsentRepository
    public final void o() {
        FirebaseAnalytics firebaseAnalyticsA = AnalyticsKt.a();
        ConsentBuilder consentBuilder = new ConsentBuilder();
        FirebaseAnalytics.ConsentStatus consentStatus = FirebaseAnalytics.ConsentStatus.GRANTED;
        consentBuilder.f34358b = consentStatus;
        consentBuilder.f34357a = consentStatus;
        consentBuilder.f34359c = consentStatus;
        consentBuilder.d = consentStatus;
        firebaseAnalyticsA.c(consentBuilder.a());
    }

    public final List p() throws Throwable {
        Object failure;
        List listQ = q();
        if (!listQ.isEmpty()) {
            i(listQ);
            return listQ;
        }
        String string = this.f47625a.getString("key_consent", null);
        if (string != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = new Result((List) this.f47627c.b(BuiltinSerializersKt.b(Consent.INSTANCE.serializer()), string));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            if (Result.a(obj) != null) {
                this.d.c("Consent repository", "Error while parsing consents", null);
                obj = EmptyList.f71768b;
            }
            List list = (List) obj;
            if (list != null) {
                return list;
            }
        }
        return EmptyList.f71768b;
    }

    public final List q() {
        Consent.AnalyticsConsent analyticsConsent;
        Consent.CustomisationConsent customisationConsent;
        Consent.SocialConsent socialConsent;
        Consent.ChatConsent chatConsent;
        Consent.ChatConsent chatConsent2;
        Consent.FunctionalConsent functionalConsent;
        Consent.AnalyticsConsent analyticsConsent2;
        Consent.CustomisationConsent customisationConsent2;
        Consent.LucieLabsConsent lucieLabsConsent;
        Consent.ChatConsent chatConsent3;
        SharedPreferences sharedPreferences = this.f47625a;
        boolean zContains = sharedPreferences.contains("PREF_CONSENT_ANALYTICS_TRACKERS");
        boolean zContains2 = sharedPreferences.contains("PREF_CONSENT_CUSTOMISATION_TRACKERS");
        boolean zContains3 = sharedPreferences.contains("PREF_CONSENT_SOCIAL_TRACKERS");
        boolean zContains4 = sharedPreferences.contains("PREF_CONSENT_LUCIELABS_TRACKERS");
        boolean zContains5 = sharedPreferences.contains("PREF_CONSENT_FUNCTIONAL_TRACKERS");
        boolean zContains6 = sharedPreferences.contains("PREF_HAS_CHOSEN_CONSENT_CHAT");
        if (!zContains && !zContains2 && !zContains3 && !zContains4 && !zContains5 && !zContains6) {
            return EmptyList.f71768b;
        }
        Boolean boolValueOf = zContains ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_CONSENT_ANALYTICS_TRACKERS", false)) : null;
        Boolean boolValueOf2 = zContains2 ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_CONSENT_CUSTOMISATION_TRACKERS", false)) : null;
        Boolean boolValueOf3 = zContains3 ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_CONSENT_SOCIAL_TRACKERS", false)) : null;
        Boolean boolValueOf4 = zContains4 ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_CONSENT_LUCIELABS_TRACKERS", false)) : null;
        Boolean boolValueOf5 = zContains5 ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_CONSENT_FUNCTIONAL_TRACKERS", false)) : null;
        Boolean boolValueOf6 = zContains6 ? Boolean.valueOf(sharedPreferences.getBoolean("PREF_HAS_CHOSEN_CONSENT_CHAT", false)) : null;
        ArrayList arrayList = new ArrayList();
        int i2 = WhenMappings.f47629a[k().ordinal()];
        if (i2 == 1) {
            Consent.FunctionalConsent functionalConsent2 = new Consent.FunctionalConsent(ConsentValue.MANDATORY);
            if (zContains && Intrinsics.c(boolValueOf, Boolean.TRUE)) {
                analyticsConsent = new Consent.AnalyticsConsent(ConsentValue.GIVEN);
            } else {
                analyticsConsent = (zContains && Intrinsics.c(boolValueOf, Boolean.FALSE)) ? new Consent.AnalyticsConsent(ConsentValue.REFUSED) : new Consent.AnalyticsConsent(ConsentValue.UNSET);
            }
            if (zContains2 && Intrinsics.c(boolValueOf2, Boolean.TRUE)) {
                customisationConsent = new Consent.CustomisationConsent(ConsentValue.GIVEN);
            } else {
                customisationConsent = (zContains2 && Intrinsics.c(boolValueOf2, Boolean.FALSE)) ? new Consent.CustomisationConsent(ConsentValue.REFUSED) : new Consent.CustomisationConsent(ConsentValue.UNSET);
            }
            if (zContains3 && Intrinsics.c(boolValueOf3, Boolean.TRUE)) {
                socialConsent = new Consent.SocialConsent(ConsentValue.GIVEN);
            } else {
                socialConsent = (zContains3 && Intrinsics.c(boolValueOf3, Boolean.FALSE)) ? new Consent.SocialConsent(ConsentValue.REFUSED) : new Consent.SocialConsent(ConsentValue.UNSET);
            }
            if (zContains6 && Intrinsics.c(boolValueOf6, Boolean.TRUE)) {
                chatConsent = new Consent.ChatConsent(ConsentValue.GIVEN);
            } else {
                chatConsent = (zContains6 && Intrinsics.c(boolValueOf6, Boolean.FALSE)) ? new Consent.ChatConsent(ConsentValue.REFUSED) : new Consent.ChatConsent(ConsentValue.UNSET);
            }
            arrayList.addAll(CollectionsKt.P(functionalConsent2, analyticsConsent, customisationConsent, socialConsent, chatConsent));
        } else if (i2 == 2) {
            Consent.FunctionalConsent functionalConsent3 = new Consent.FunctionalConsent(ConsentValue.MANDATORY);
            Consent.AnalyticsConsent analyticsConsent3 = (!(zContains && Intrinsics.c(boolValueOf, Boolean.TRUE)) && zContains && Intrinsics.c(boolValueOf, Boolean.FALSE)) ? new Consent.AnalyticsConsent(ConsentValue.REFUSED) : new Consent.AnalyticsConsent(ConsentValue.GIVEN);
            Consent.CustomisationConsent customisationConsent3 = (!(zContains2 && Intrinsics.c(boolValueOf2, Boolean.TRUE)) && zContains2 && Intrinsics.c(boolValueOf2, Boolean.FALSE)) ? new Consent.CustomisationConsent(ConsentValue.REFUSED) : new Consent.CustomisationConsent(ConsentValue.GIVEN);
            Consent.SocialConsent socialConsent2 = (!(zContains3 && Intrinsics.c(boolValueOf3, Boolean.TRUE)) && zContains3 && Intrinsics.c(boolValueOf3, Boolean.FALSE)) ? new Consent.SocialConsent(ConsentValue.REFUSED) : new Consent.SocialConsent(ConsentValue.GIVEN);
            if (zContains6 && Intrinsics.c(boolValueOf6, Boolean.TRUE)) {
                chatConsent2 = new Consent.ChatConsent(ConsentValue.GIVEN);
            } else {
                chatConsent2 = (zContains6 && Intrinsics.c(boolValueOf6, Boolean.FALSE)) ? new Consent.ChatConsent(ConsentValue.REFUSED) : new Consent.ChatConsent(ConsentValue.UNSET);
            }
            arrayList.addAll(CollectionsKt.P(functionalConsent3, analyticsConsent3, customisationConsent3, socialConsent2, chatConsent2));
        } else if (i2 == 3) {
            if (zContains5 && Intrinsics.c(boolValueOf5, Boolean.TRUE)) {
                functionalConsent = new Consent.FunctionalConsent(ConsentValue.GIVEN);
            } else {
                functionalConsent = (zContains5 && Intrinsics.c(boolValueOf5, Boolean.FALSE)) ? new Consent.FunctionalConsent(ConsentValue.REFUSED) : new Consent.FunctionalConsent(ConsentValue.UNSET);
            }
            if (zContains && Intrinsics.c(boolValueOf, Boolean.TRUE)) {
                analyticsConsent2 = new Consent.AnalyticsConsent(ConsentValue.GIVEN);
            } else {
                analyticsConsent2 = (zContains && Intrinsics.c(boolValueOf, Boolean.FALSE)) ? new Consent.AnalyticsConsent(ConsentValue.REFUSED) : new Consent.AnalyticsConsent(ConsentValue.UNSET);
            }
            if (zContains2 && Intrinsics.c(boolValueOf2, Boolean.TRUE)) {
                customisationConsent2 = new Consent.CustomisationConsent(ConsentValue.GIVEN);
            } else {
                customisationConsent2 = (zContains2 && Intrinsics.c(boolValueOf2, Boolean.FALSE)) ? new Consent.CustomisationConsent(ConsentValue.REFUSED) : new Consent.CustomisationConsent(ConsentValue.UNSET);
            }
            if (zContains4 && Intrinsics.c(boolValueOf4, Boolean.TRUE)) {
                lucieLabsConsent = new Consent.LucieLabsConsent(ConsentValue.GIVEN);
            } else {
                lucieLabsConsent = (zContains4 && Intrinsics.c(boolValueOf4, Boolean.FALSE)) ? new Consent.LucieLabsConsent(ConsentValue.REFUSED) : new Consent.LucieLabsConsent(ConsentValue.UNSET);
            }
            if (zContains6 && Intrinsics.c(boolValueOf6, Boolean.TRUE)) {
                chatConsent3 = new Consent.ChatConsent(ConsentValue.GIVEN);
            } else {
                chatConsent3 = (zContains6 && Intrinsics.c(boolValueOf6, Boolean.FALSE)) ? new Consent.ChatConsent(ConsentValue.REFUSED) : new Consent.ChatConsent(ConsentValue.UNSET);
            }
            arrayList.addAll(CollectionsKt.P(functionalConsent, analyticsConsent2, customisationConsent2, lucieLabsConsent, chatConsent3));
        } else if (i2 != 4) {
            v40.g();
            return null;
        }
        List listP = CollectionsKt.P("PREF_CONSENT_ANALYTICS_TRACKERS", "PREF_CONSENT_CUSTOMISATION_TRACKERS", "PREF_CONSENT_SOCIAL_TRACKERS", "PREF_CONSENT_LUCIELABS_TRACKERS", "PREF_CONSENT_FUNCTIONAL_TRACKERS", "PREF_HAS_CHOSEN_CONSENT_CHAT");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Iterator it = listP.iterator();
        while (it.hasNext()) {
            editorEdit.remove((String) it.next());
        }
        editorEdit.apply();
        return arrayList;
    }

    public final void r(long j2) {
        SharedPreferences.Editor editorEdit = this.f47625a.edit();
        editorEdit.putLong("key_consent_date", j2);
        editorEdit.apply();
    }
}
