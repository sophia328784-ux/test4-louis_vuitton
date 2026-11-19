package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.RequestValidationHelper;
import com.networkbench.agent.impl.util.r;
import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/credentials/GetRestoreCredentialOption;", "Landroidx/credentials/CredentialOption;", "", "requestJson", "<init>", "(Ljava/lang/String;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class GetRestoreCredentialOption extends CredentialOption {
    public static final Companion g = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/GetRestoreCredentialOption$Companion;", "", "", "BUNDLE_KEY_GET_RESTORE_CREDENTIAL_REQUEST", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public GetRestoreCredentialOption(String str) {
        str.getClass();
        g.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_REQUEST", str);
        super("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle, new Bundle(), false, false, EmptySet.f71770b, r.E);
        RequestValidationHelper.f12402a.getClass();
        if (RequestValidationHelper.Companion.a(str)) {
            return;
        }
        md.n("requestJson must not be empty, and must be a valid JSON");
        throw null;
    }
}
