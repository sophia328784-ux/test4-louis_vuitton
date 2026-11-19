package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.BeautyConsentRepository;
import com.vuitton.foundation.model.domain.model.legal.ConsentFeature;
import com.vuitton.foundation.model.domain.model.legal.ConsentRequirement;
import com.vuitton.foundation.model.domain.model.legal.LegalConsent;
import com.vuitton.foundation.model.domain.model.legal.LegalConsentContext;
import defpackage.v40;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/BeautyConsentRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyConsentRepositoryImpl implements BeautyConsentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LegalConsent f47381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LegalConsent f47382b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47383a;

        static {
            int[] iArr = new int[LegalConsentContext.values().length];
            try {
                iArr[LegalConsentContext.TRY_ON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LegalConsentContext.SHADE_FINDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f47383a = iArr;
        }
    }

    @Inject
    public BeautyConsentRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.BeautyConsentRepository
    public final boolean a(LegalConsentContext legalConsentContext) {
        legalConsentContext.getClass();
        int i2 = WhenMappings.f47383a[legalConsentContext.ordinal()];
        if (i2 == 1) {
            return (this.f47381a == null && this.f47382b == null) ? false : true;
        }
        if (i2 == 2) {
            return this.f47382b != null;
        }
        v40.g();
        return false;
    }

    @Override // com.vuitton.android.domain.repository.BeautyConsentRepository
    public final String b() {
        List list;
        Object next;
        LegalConsent legalConsent;
        LegalConsent legalConsent2 = this.f47382b;
        if (legalConsent2 != null && (list = legalConsent2.f67764b) != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ConsentRequirement) next).d != ConsentFeature.SHADE_FINDER_IMAGE_STORAGE);
            ConsentRequirement consentRequirement = (ConsentRequirement) next;
            if (consentRequirement != null && consentRequirement.f67762e && (legalConsent = this.f47382b) != null) {
                return legalConsent.f67765c;
            }
        }
        return null;
    }

    @Override // com.vuitton.android.domain.repository.BeautyConsentRepository
    public final void c(LegalConsent legalConsent) {
        LegalConsentContext legalConsentContext = legalConsent.d;
        int i2 = legalConsentContext == null ? -1 : WhenMappings.f47383a[legalConsentContext.ordinal()];
        if (i2 == 1) {
            this.f47381a = legalConsent;
        } else {
            if (i2 != 2) {
                return;
            }
            this.f47382b = legalConsent;
        }
    }
}
