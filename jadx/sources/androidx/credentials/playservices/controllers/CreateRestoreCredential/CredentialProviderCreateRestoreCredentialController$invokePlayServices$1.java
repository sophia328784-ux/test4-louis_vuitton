package androidx.credentials.playservices.controllers.CreateRestoreCredential;

import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialResponse;
import defpackage.gr;
import defpackage.r6;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class CredentialProviderCreateRestoreCredentialController$invokePlayServices$1 extends Lambda implements Function1<CreateRestoreCredentialResponse, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CancellationSignal f12478c;
    public final /* synthetic */ Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f12479e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreateRestoreCredentialController$invokePlayServices$1(CredentialProviderCreateRestoreCredentialController credentialProviderCreateRestoreCredentialController, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        super(1);
        this.f12478c = cancellationSignal;
        this.d = executor;
        this.f12479e = credentialManagerCallback;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CreateRestoreCredentialResponse createRestoreCredentialResponse = (CreateRestoreCredentialResponse) obj;
        final CredentialManagerCallback credentialManagerCallback = this.f12479e;
        final Executor executor = this.d;
        CancellationSignal cancellationSignal = this.f12478c;
        try {
            createRestoreCredentialResponse.getClass();
            androidx.credentials.CreateRestoreCredentialResponse.Companion companion = androidx.credentials.CreateRestoreCredentialResponse.f12361b;
            Bundle bundle = createRestoreCredentialResponse.f28866b;
            companion.getClass();
            bundle.getClass();
            String string = bundle.getString("androidx.credentials.BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_RESPONSE");
            if (string == null) {
                throw new CreateCredentialUnknownException("The response bundle did not contain the response data. This should not happen.");
            }
            final androidx.credentials.CreateRestoreCredentialResponse createRestoreCredentialResponse2 = new androidx.credentials.CreateRestoreCredentialResponse(string, bundle, null);
            CredentialProviderController.Companion companion2 = CredentialProviderController.d;
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreateRestoreCredential.CredentialProviderCreateRestoreCredentialController$invokePlayServices$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    executor.execute(new r6(credentialManagerCallback, createRestoreCredentialResponse2, 29));
                    return Unit.f71739a;
                }
            });
            return Unit.f71739a;
        } catch (Exception e2) {
            CredentialProviderController.Companion companion3 = CredentialProviderController.d;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreateRestoreCredential.CredentialProviderCreateRestoreCredentialController$invokePlayServices$1.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    executor.execute(new gr(credentialManagerCallback, e2, 0));
                    return Unit.f71739a;
                }
            };
            int i2 = CredentialProviderCreateRestoreCredentialController.f12476f;
            CredentialProviderController.b(cancellationSignal, function0);
        }
    }
}
