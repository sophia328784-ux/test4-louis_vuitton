package androidx.credentials;

import android.os.Bundle;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/credentials/ClearCredentialStateRequest;", "", "", "requestType", "<init>", "(Ljava/lang/String;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ClearCredentialStateRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f12346b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/credentials/ClearCredentialStateRequest$Companion;", "", "", "BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST", "Ljava/lang/String;", "TYPE_CLEAR_CREDENTIAL_STATE", "TYPE_CLEAR_RESTORE_CREDENTIAL", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ClearCredentialStateRequest(String str) {
        str.getClass();
        this.f12345a = str;
        Bundle bundle = new Bundle();
        this.f12346b = bundle;
        if (!Intrinsics.c(str, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE") && !Intrinsics.c(str, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            md.n(fc.h("The request type ", str, " is not supported."));
            throw null;
        }
        if (Intrinsics.c(str, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST", true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClearCredentialStateRequest() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ClearCredentialStateRequest(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE" : str);
    }
}
