package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.PageAttributesValueSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.CartItem$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Context;
import com.vuitton.android.data.dto.connectivity.watchface.ContentDto;
import com.vuitton.android.data.dto.legal.ConsentFeatureDto;
import com.vuitton.android.data.dto.legal.ConsentRequirementDto;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.Consent$AnalyticsConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.Consent$ChatConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.Consent$CustomisationConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.Consent$FunctionalConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.Consent$LucieLabsConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.Consent$SocialConsent$$serializer;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lp implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76067b;

    public /* synthetic */ lp(int i2) {
        this.f76067b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76067b) {
            case 0:
                Consent.Companion companion = Consent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 1:
                Consent.Companion companion2 = Consent.INSTANCE;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.foundation.model.domain.model.privacy.Consent", reflectionFactory.b(Consent.class), new KClass[]{reflectionFactory.b(Consent.AnalyticsConsent.class), reflectionFactory.b(Consent.ChatConsent.class), reflectionFactory.b(Consent.CustomisationConsent.class), reflectionFactory.b(Consent.FunctionalConsent.class), reflectionFactory.b(Consent.LucieLabsConsent.class), reflectionFactory.b(Consent.SocialConsent.class)}, new KSerializer[]{Consent$AnalyticsConsent$$serializer.f67884a, Consent$ChatConsent$$serializer.f67886a, Consent$CustomisationConsent$$serializer.f67888a, Consent$FunctionalConsent$$serializer.f67890a, Consent$LucieLabsConsent$$serializer.f67892a, Consent$SocialConsent$$serializer.f67894a}, new Annotation[0]);
            case 2:
                Consent.AnalyticsConsent.Companion companion3 = Consent.AnalyticsConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 3:
                Consent.AnalyticsConsent.Companion companion4 = Consent.AnalyticsConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 4:
                Consent.ChatConsent.Companion companion5 = Consent.ChatConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 5:
                Consent.ChatConsent.Companion companion6 = Consent.ChatConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 6:
                Consent.CustomisationConsent.Companion companion7 = Consent.CustomisationConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 7:
                Consent.CustomisationConsent.Companion companion8 = Consent.CustomisationConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 8:
                Consent.FunctionalConsent.Companion companion9 = Consent.FunctionalConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 9:
                Consent.FunctionalConsent.Companion companion10 = Consent.FunctionalConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 10:
                Consent.LucieLabsConsent.Companion companion11 = Consent.LucieLabsConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 11:
                Consent.LucieLabsConsent.Companion companion12 = Consent.LucieLabsConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 12:
                Consent.SocialConsent.Companion companion13 = Consent.SocialConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 13:
                Consent.SocialConsent.Companion companion14 = Consent.SocialConsent.INSTANCE;
                return ConsentValue.INSTANCE.serializer();
            case 14:
                return Unit.f71739a;
            case 15:
                return EnumsKt.a("com.vuitton.android.data.dto.legal.ConsentFeatureDto", ConsentFeatureDto.values(), new String[]{"shadeFinderImageStorage"}, new Annotation[][]{null});
            case 16:
                return Unit.f71739a;
            case 17:
                return Unit.f71739a;
            case 18:
                return Unit.f71739a;
            case 19:
                ConsentRequirementDto.Companion companion15 = ConsentRequirementDto.INSTANCE;
                return ConsentFeatureDto.Companion.serializer();
            case 20:
                ConsentValue[] consentValueArrValues = ConsentValue.values();
                consentValueArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.privacy.ConsentValue", consentValueArrValues);
            case 21:
                return Unit.f71739a;
            case 22:
                return Unit.f71739a;
            case 23:
                return Unit.f71739a;
            case 24:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ContactUsTrackerEntryPointKt.f51125a;
                throw new IllegalStateException("no local ContactUsTracker provided");
            case 25:
                ContentDto.Companion companion16 = ContentDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 26:
                ContentDto.Companion companion17 = ContentDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 27:
                Context.Companion companion18 = Context.Companion;
                return new ArrayListSerializer(CartItem$$serializer.f26022a);
            case 28:
                Context.Companion companion19 = Context.Companion;
                return new LinkedHashMapSerializer(StringSerializer.f75684a, PageAttributesValueSerializer.f25973a);
            default:
                Context.Companion companion20 = Context.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
        }
    }
}
