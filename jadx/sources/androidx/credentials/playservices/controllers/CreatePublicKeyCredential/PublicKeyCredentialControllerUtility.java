package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import com.batch.android.s.b;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import io.jsonwebtoken.JwsHeader;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility;", "", "<init>", "()V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PublicKeyCredentialControllerUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f12467a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f12468b = b.a.f24015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f12469c = "type";
    public static final String d = "rpId";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f12470e = "challenge";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f12471f = "appid";
    public static final String g = "thirdPartyPayment";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f12472h = "authenticatorSelection";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f12473i = "requireResidentKey";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f12474j = "residentKey";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f12475k = "authenticatorAttachment";
    public static final String l = "timeout";
    public static final String m = "excludeCredentials";
    public static final String n = "transports";
    public static final String o = "rp";
    public static final String p = "name";
    public static final String q = "icon";
    public static final String r = JwsHeader.ALGORITHM;
    public static final String s = "user";
    public static final String t = "displayName";
    public static final String u = "extensions";
    public static final String v = "attestation";
    public static final String w = "pubKeyCredParams";
    public static final LinkedHashMap x = MapsKt.f(new Pair(ErrorCode.UNKNOWN_ERR, new UnknownError()), new Pair(ErrorCode.ABORT_ERR, new AbortError()), new Pair(ErrorCode.ATTESTATION_NOT_PRIVATE_ERR, new NotReadableError()), new Pair(ErrorCode.CONSTRAINT_ERR, new ConstraintError()), new Pair(ErrorCode.DATA_ERR, new DataError()), new Pair(ErrorCode.INVALID_STATE_ERR, new InvalidStateError()), new Pair(ErrorCode.ENCODING_ERR, new EncodingError()), new Pair(ErrorCode.NETWORK_ERR, new NetworkError()), new Pair(ErrorCode.NOT_ALLOWED_ERR, new NotAllowedError()), new Pair(ErrorCode.NOT_SUPPORTED_ERR, new NotSupportedError()), new Pair(ErrorCode.SECURITY_ERR, new SecurityError()), new Pair(ErrorCode.TIMEOUT_ERR, new TimeoutError()));

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility$Companion;", "", "", "AUTH_MIN_VERSION_JSON_CREATE", "J", "", "FLAGS", "I", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }
}
