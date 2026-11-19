package com.vuitton.foundation.model.domain.model.forms;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v36 com.vuitton.foundation.model.domain.model.forms.FormSectionType[], still in use, count: 1, list:
  (r0v36 com.vuitton.foundation.model.domain.model.forms.FormSectionType[]) from 0x0230: INVOKE (r0v36 com.vuitton.foundation.model.domain.model.forms.FormSectionType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b)\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*¨\u0006+"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;", "", "", "value", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "ADDRESS1", "ADDRESS2", "ADDRESS3", "BIRTHDATE", "BRANCH_ID", "CITY", "CIVILITY", "COUNTRY", "COUNTY", "DESCRIPTION", "EMAIL", "FIRSTNAME", "FIRSTNAME2", "LASTNAME", "LASTNAME2", "PHONE", "PHONE_NUMBER_TYPE", "PHONE_NUMBER_COUNTRY", "PHONE_NUMBER", "POSTAL_CODE", "STATE", "STREET", "STREET_NUMBER", "VAT_CODE", "CONFIRM_PASSWORD", "NEW_PASSWORD", "PASSWORD", "LEGACY_CONSENTS", "ALL_MARKETING_COMMUNICATIONS_CONSENTS", "PRIVACY_POLICY_CONSENT", "MARKETING_EMAILS_CONSENT", "EMAIL_TRACKING_CONSENT", "TARGETED_ADVERTISING_CONSENT", "MARKETING_TEXTS_CONSENT", "BOOKING_MARKETING_EMAILS_CONSENT", "BOOKING_PERSONAL_DATA_COLLECTION_CONSENT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormSectionType {
    ADDRESS1("address1"),
    ADDRESS2("address2"),
    ADDRESS3("address3"),
    BIRTHDATE("birthDate"),
    BRANCH_ID("branchID"),
    CITY("city"),
    CIVILITY("civility"),
    COUNTRY("country"),
    COUNTY("county"),
    DESCRIPTION("description"),
    EMAIL("email"),
    FIRSTNAME("firstName"),
    FIRSTNAME2("firstName2"),
    LASTNAME("lastName"),
    LASTNAME2("lastName2"),
    PHONE("phone"),
    PHONE_NUMBER_TYPE("phoneNumberType"),
    PHONE_NUMBER_COUNTRY("phoneNumberCountry"),
    PHONE_NUMBER("phoneNumber"),
    POSTAL_CODE("postalCode"),
    STATE("state"),
    STREET("street"),
    STREET_NUMBER("streetNumber"),
    VAT_CODE("vatCode"),
    CONFIRM_PASSWORD("confirmPassword"),
    NEW_PASSWORD("newPassword"),
    PASSWORD("password"),
    LEGACY_CONSENTS("legacyConsents"),
    ALL_MARKETING_COMMUNICATIONS_CONSENTS("allMarketingCommunicationsConsents"),
    PRIVACY_POLICY_CONSENT("privacyPolicyConsent"),
    MARKETING_EMAILS_CONSENT("marketingEmailsConsent"),
    EMAIL_TRACKING_CONSENT("pixelTrackingConsent"),
    TARGETED_ADVERTISING_CONSENT("targetedAdvertisingConsent"),
    MARKETING_TEXTS_CONSENT("marketingTextsConsent"),
    BOOKING_MARKETING_EMAILS_CONSENT("bookingMarketingEmailsConsent"),
    BOOKING_PERSONAL_DATA_COLLECTION_CONSENT("bookingPersonalDataCollectionConsent");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String value;

    static {
        $ENTRIES = EnumEntriesKt.a(formSectionTypeArr);
    }

    public FormSectionType(String str) {
        super(str, i);
        this.value = str;
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static FormSectionType valueOf(String str) {
        return (FormSectionType) Enum.valueOf(FormSectionType.class, str);
    }

    public static FormSectionType[] values() {
        return (FormSectionType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValue() {
        return this.value;
    }
}
