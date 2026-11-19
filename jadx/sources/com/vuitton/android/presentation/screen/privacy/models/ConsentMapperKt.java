package com.vuitton.android.presentation.screen.privacy.models;

import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConsentMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63398a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f63399b;

        static {
            int[] iArr = new int[ConsentValue.values().length];
            try {
                iArr[ConsentValue.GIVEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConsentValue.REFUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConsentValue.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConsentValue.MANDATORY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63398a = iArr;
            int[] iArr2 = new int[ConsentValueUiModel.values().length];
            try {
                iArr2[ConsentValueUiModel.GIVEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ConsentValueUiModel.REFUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[ConsentValueUiModel.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[ConsentValueUiModel.MANDATORY.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f63399b = iArr2;
        }
    }

    public static final Consent a(ConsentUiModel consentUiModel) {
        consentUiModel.getClass();
        if (consentUiModel instanceof ConsentUiModel.FunctionalConsentUiModel) {
            return new Consent.FunctionalConsent(b(consentUiModel.f63400a));
        }
        if (consentUiModel instanceof ConsentUiModel.AnalyticsConsentUiModel) {
            return new Consent.AnalyticsConsent(b(consentUiModel.f63400a));
        }
        if (consentUiModel instanceof ConsentUiModel.CustomisationConsentUiModel) {
            return new Consent.CustomisationConsent(b(consentUiModel.f63400a));
        }
        if (consentUiModel instanceof ConsentUiModel.SocialConsentUiModel) {
            return new Consent.SocialConsent(b(consentUiModel.f63400a));
        }
        if (consentUiModel instanceof ConsentUiModel.ChatConsentUiModel) {
            return new Consent.ChatConsent(b(consentUiModel.f63400a));
        }
        if (consentUiModel instanceof ConsentUiModel.LucieLabsConsentUiModel) {
            return new Consent.LucieLabsConsent(b(consentUiModel.f63400a));
        }
        v40.g();
        return null;
    }

    public static final ConsentValue b(ConsentValueUiModel consentValueUiModel) {
        consentValueUiModel.getClass();
        int i2 = WhenMappings.f63399b[consentValueUiModel.ordinal()];
        if (i2 == 1) {
            return ConsentValue.GIVEN;
        }
        if (i2 == 2) {
            return ConsentValue.REFUSED;
        }
        if (i2 == 3) {
            return ConsentValue.UNSET;
        }
        if (i2 == 4) {
            return ConsentValue.MANDATORY;
        }
        v40.g();
        return null;
    }

    public static final ConsentUiModel c(Consent consent) {
        consent.getClass();
        if (consent instanceof Consent.FunctionalConsent) {
            return new ConsentUiModel.FunctionalConsentUiModel(d(consent.f67882a));
        }
        if (consent instanceof Consent.AnalyticsConsent) {
            return new ConsentUiModel.AnalyticsConsentUiModel(d(consent.f67882a));
        }
        if (consent instanceof Consent.CustomisationConsent) {
            return new ConsentUiModel.CustomisationConsentUiModel(d(consent.f67882a));
        }
        if (consent instanceof Consent.SocialConsent) {
            return new ConsentUiModel.SocialConsentUiModel(d(consent.f67882a));
        }
        if (consent instanceof Consent.ChatConsent) {
            return new ConsentUiModel.ChatConsentUiModel(d(consent.f67882a));
        }
        if (consent instanceof Consent.LucieLabsConsent) {
            return new ConsentUiModel.LucieLabsConsentUiModel(d(consent.f67882a));
        }
        v40.g();
        return null;
    }

    public static final ConsentValueUiModel d(ConsentValue consentValue) {
        consentValue.getClass();
        int i2 = WhenMappings.f63398a[consentValue.ordinal()];
        if (i2 == 1) {
            return ConsentValueUiModel.GIVEN;
        }
        if (i2 == 2) {
            return ConsentValueUiModel.REFUSED;
        }
        if (i2 == 3) {
            return ConsentValueUiModel.UNSET;
        }
        if (i2 == 4) {
            return ConsentValueUiModel.MANDATORY;
        }
        v40.g();
        return null;
    }
}
