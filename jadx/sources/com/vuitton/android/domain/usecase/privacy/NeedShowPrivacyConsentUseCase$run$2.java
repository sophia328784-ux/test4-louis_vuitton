package com.vuitton.android.domain.usecase.privacy;

import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.v40;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.privacy.NeedShowPrivacyConsentUseCase$run$2", f = "NeedShowPrivacyConsentUseCase.kt", l = {}, m = "invokeSuspend", v = 2)
final class NeedShowPrivacyConsentUseCase$run$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NeedShowPrivacyConsentUseCase f50262b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50263a;

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
            f50263a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeedShowPrivacyConsentUseCase$run$2(NeedShowPrivacyConsentUseCase needShowPrivacyConsentUseCase, Continuation continuation) {
        super(2, continuation);
        this.f50262b = needShowPrivacyConsentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NeedShowPrivacyConsentUseCase$run$2(this.f50262b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NeedShowPrivacyConsentUseCase$run$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:128:0x019f  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        Object next2;
        Object next3;
        Object next4;
        boolean z;
        Object next5;
        Object next6;
        Object next7;
        Object next8;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        NeedShowPrivacyConsentUseCase needShowPrivacyConsentUseCase = this.f50262b;
        ConsentRepository consentRepository = needShowPrivacyConsentUseCase.f50259a;
        PrivacyType privacyTypeK = needShowPrivacyConsentUseCase.f50260b.f50268a.k();
        if (privacyTypeK == PrivacyType.NONE) {
            return Boolean.FALSE;
        }
        if (!consentRepository.g()) {
            return Boolean.TRUE;
        }
        List listF = consentRepository.f();
        long jM = consentRepository.m();
        int i2 = WhenMappings.f50263a[privacyTypeK.ordinal()];
        boolean z2 = false;
        if (i2 == 1 || i2 == 2) {
            List list = listF;
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((Consent) next) instanceof Consent.FunctionalConsent));
            Consent consent = (Consent) next;
            if ((consent != null ? consent.f67882a : null) != ConsentValue.UNSET) {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!(((Consent) next2) instanceof Consent.AnalyticsConsent));
                Consent consent2 = (Consent) next2;
                if ((consent2 != null ? consent2.f67882a : null) != ConsentValue.UNSET) {
                    Iterator it3 = list.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next3 = null;
                            break;
                        }
                        next3 = it3.next();
                    } while (!(((Consent) next3) instanceof Consent.CustomisationConsent));
                    Consent consent3 = (Consent) next3;
                    if ((consent3 != null ? consent3.f67882a : null) != ConsentValue.UNSET) {
                        Iterator it4 = list.iterator();
                        do {
                            if (!it4.hasNext()) {
                                next4 = null;
                                break;
                            }
                            next4 = it4.next();
                        } while (!(((Consent) next4) instanceof Consent.SocialConsent));
                        Consent consent4 = (Consent) next4;
                        if ((consent4 != null ? consent4.f67882a : null) != ConsentValue.UNSET) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            List list2 = listF;
            Iterator it5 = list2.iterator();
            do {
                if (!it5.hasNext()) {
                    next5 = null;
                    break;
                }
                next5 = it5.next();
            } while (!(((Consent) next5) instanceof Consent.FunctionalConsent));
            Consent consent5 = (Consent) next5;
            if ((consent5 != null ? consent5.f67882a : null) != ConsentValue.UNSET) {
                Iterator it6 = list2.iterator();
                do {
                    if (!it6.hasNext()) {
                        next6 = null;
                        break;
                    }
                    next6 = it6.next();
                } while (!(((Consent) next6) instanceof Consent.AnalyticsConsent));
                Consent consent6 = (Consent) next6;
                if ((consent6 != null ? consent6.f67882a : null) != ConsentValue.UNSET) {
                    Iterator it7 = list2.iterator();
                    do {
                        if (!it7.hasNext()) {
                            next7 = null;
                            break;
                        }
                        next7 = it7.next();
                    } while (!(((Consent) next7) instanceof Consent.CustomisationConsent));
                    Consent consent7 = (Consent) next7;
                    if ((consent7 != null ? consent7.f67882a : null) != ConsentValue.UNSET) {
                        Iterator it8 = list2.iterator();
                        do {
                            if (!it8.hasNext()) {
                                next8 = null;
                                break;
                            }
                            next8 = it8.next();
                        } while (!(((Consent) next8) instanceof Consent.LucieLabsConsent));
                        Consent consent8 = (Consent) next8;
                        if ((consent8 != null ? consent8.f67882a : null) != ConsentValue.UNSET) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(System.currentTimeMillis());
        gregorianCalendar.add(2, -13);
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(jM);
        if (gregorianCalendar.after(gregorianCalendar2)) {
            z2 = true;
        } else {
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar();
            gregorianCalendar3.setTimeInMillis(System.currentTimeMillis());
            gregorianCalendar3.add(2, -13);
            GregorianCalendar gregorianCalendar4 = new GregorianCalendar();
            gregorianCalendar4.setTimeInMillis(jM);
            if (gregorianCalendar3.after(gregorianCalendar4) && z) {
                z2 = true;
            }
        }
        return Boolean.valueOf(z2);
    }
}
