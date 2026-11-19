package com.vuitton.foundation.model.domain.model.authentication.oauth;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v23 com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterError[], still in use, count: 1, list:
  (r0v23 com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterError[]) from 0x0153: INVOKE (r0v23 com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterError[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u001c\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;", "", "", "errorCode", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "INVALID_PASSWORD", "PHONE_NUMBER_TOO_SHORT", "PHONE_NUMBER_TOO_LONG", "PHONE_NUMBER_INVALID_COUNTRY", "PHONE_NUMBER_INVALID", "INVALID_PASSWORD_RULES", "INVALID_PASSWORD_CONTAINS_NAME", "INVALID_PASSWORD_CONTAINS_EMAIL", "INVALID_EMAIL", "USER_ALREADY_EXISTS", "BIRTHDATE_INCONSISTENT", "LEGAL_AGE_BLOCKED", "LEGAL_AGE_TO_BE_BLOCKED", "INVALID_PHONE", "INVALID_CALLING_CODE", "INVALID_TITLE", "INVALID_NAME", "EMAIL_AND_USERNAME_NOT_MATCH", "INVALID_OTP", "INVALID_POSTAL_CODE", "INVALID_STATE", "INVALID_CITY", "INVALID_ADDRESS", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeRegisterError {
    INVALID_PASSWORD("register_invalid_password"),
    PHONE_NUMBER_TOO_SHORT("register_phone_number_too_short"),
    PHONE_NUMBER_TOO_LONG("register_phone_number_too_long"),
    PHONE_NUMBER_INVALID_COUNTRY("register_phone_number_invalid_country"),
    PHONE_NUMBER_INVALID("register_phone_number_not_a_number"),
    INVALID_PASSWORD_RULES("register_invalid_new_password_too_short_or_not_contains_number_or_uppercase"),
    INVALID_PASSWORD_CONTAINS_NAME("register_invalid_new_password_too_easy_contains_name"),
    INVALID_PASSWORD_CONTAINS_EMAIL("register_invalid_new_password_too_easy_contains_email"),
    INVALID_EMAIL("register_invalid_email_address"),
    USER_ALREADY_EXISTS("register_user_already_exist"),
    BIRTHDATE_INCONSISTENT("register_birthdate_inconsistent"),
    LEGAL_AGE_BLOCKED("register_legal_age_blocked"),
    LEGAL_AGE_TO_BE_BLOCKED("register_legal_age_to_be_blocked"),
    INVALID_PHONE("register_invalid_phone"),
    INVALID_CALLING_CODE("register_invalid_calling_code"),
    INVALID_TITLE("register_invalid_title"),
    INVALID_NAME("register_invalid_name"),
    EMAIL_AND_USERNAME_NOT_MATCH("register_email_and_username_do_not_match"),
    INVALID_OTP("register_invalid_otp"),
    INVALID_POSTAL_CODE("register_invalid_postal_code"),
    INVALID_STATE("register_invalid_state"),
    INVALID_CITY("register_invalid_city"),
    INVALID_ADDRESS("register_invalid_address");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String errorCode;

    static {
        $ENTRIES = EnumEntriesKt.a(nativeRegisterErrorArr);
    }

    public NativeRegisterError(String str) {
        super(str, i);
        this.errorCode = str;
    }

    public static NativeRegisterError valueOf(String str) {
        return (NativeRegisterError) Enum.valueOf(NativeRegisterError.class, str);
    }

    public static NativeRegisterError[] values() {
        return (NativeRegisterError[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getErrorCode() {
        return this.errorCode;
    }
}
