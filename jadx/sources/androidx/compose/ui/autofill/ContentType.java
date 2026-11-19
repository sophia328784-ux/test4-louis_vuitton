package androidx.compose.ui.autofill;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/autofill/ContentType;", "", "Companion", "Landroidx/compose/ui/autofill/AndroidContentType;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ContentType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8649a = Companion.f8650a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/autofill/ContentType$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f8650a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ContentType f8651b = ContentType_androidKt.a("username");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ContentType f8652c = ContentType_androidKt.a("password");
        public static final ContentType d = ContentType_androidKt.a("emailAddress");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final ContentType f8653e = ContentType_androidKt.a("newUsername");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final ContentType f8654f = ContentType_androidKt.a("newPassword");
        public static final ContentType g = ContentType_androidKt.a("postalAddress");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final ContentType f8655h = ContentType_androidKt.a("postalCode");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final ContentType f8656i = ContentType_androidKt.a("creditCardNumber");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final ContentType f8657j = ContentType_androidKt.a("creditCardSecurityCode");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final ContentType f8658k = ContentType_androidKt.a("creditCardExpirationDate");
        public static final ContentType l = ContentType_androidKt.a("creditCardExpirationMonth");
        public static final ContentType m = ContentType_androidKt.a("creditCardExpirationYear");
        public static final ContentType n = ContentType_androidKt.a("creditCardExpirationDay");
        public static final ContentType o = ContentType_androidKt.a("addressCountry");
        public static final ContentType p = ContentType_androidKt.a("addressRegion");
        public static final ContentType q = ContentType_androidKt.a("addressLocality");
        public static final ContentType r = ContentType_androidKt.a("streetAddress");
        public static final ContentType s = ContentType_androidKt.a("extendedAddress");
        public static final ContentType t = ContentType_androidKt.a("extendedPostalCode");
        public static final ContentType u = ContentType_androidKt.a("personName");
        public static final ContentType v = ContentType_androidKt.a("personGivenName");
        public static final ContentType w = ContentType_androidKt.a("personFamilyName");
        public static final ContentType x = ContentType_androidKt.a("personMiddleName");
        public static final ContentType y = ContentType_androidKt.a("personMiddleInitial");
        public static final ContentType z = ContentType_androidKt.a("personNamePrefix");
        public static final ContentType A = ContentType_androidKt.a("personNameSuffix");
        public static final ContentType B = ContentType_androidKt.a("phoneNumber");
        public static final ContentType C = ContentType_androidKt.a("phoneNumberDevice");
        public static final ContentType D = ContentType_androidKt.a("phoneCountryCode");
        public static final ContentType E = ContentType_androidKt.a("phoneNational");
        public static final ContentType F = ContentType_androidKt.a("gender");
        public static final ContentType G = ContentType_androidKt.a("birthDateFull");
        public static final ContentType H = ContentType_androidKt.a("birthDateDay");
        public static final ContentType I = ContentType_androidKt.a("birthDateMonth");
        public static final ContentType J = ContentType_androidKt.a("birthDateYear");
        public static final ContentType K = ContentType_androidKt.a("smsOTPCode");
    }
}
