package androidx.credentials.playservices.controllers.GetRestoreCredential;

import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import defpackage.gr;
import defpackage.jr;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialResponse;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class CredentialProviderGetRestoreCredentialController$invokePlayServices$1 extends Lambda implements Function1<GetRestoreCredentialResponse, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CancellationSignal f12512c;
    public final /* synthetic */ Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f12513e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderGetRestoreCredentialController$invokePlayServices$1(CredentialProviderGetRestoreCredentialController credentialProviderGetRestoreCredentialController, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        super(1);
        this.f12512c = cancellationSignal;
        this.d = executor;
        this.f12513e = credentialManagerCallback;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GetRestoreCredentialResponse getRestoreCredentialResponse = (GetRestoreCredentialResponse) obj;
        final CredentialManagerCallback credentialManagerCallback = this.f12513e;
        final Executor executor = this.d;
        CancellationSignal cancellationSignal = this.f12512c;
        try {
            getRestoreCredentialResponse.getClass();
            Credential.Companion companion = Credential.f12362c;
            Bundle bundle = getRestoreCredentialResponse.f28868b;
            companion.getClass();
            final GetCredentialResponse getCredentialResponse = new GetCredentialResponse(Credential.Companion.a("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle));
            CredentialProviderController.Companion companion2 = CredentialProviderController.d;
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetRestoreCredentialController$invokePlayServices$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    executor.execute(new jr(credentialManagerCallback, getCredentialResponse, 2));
                    return Unit.f71739a;
                }
            });
        } catch (Exception e2) {
            CredentialProviderController.Companion companion3 = CredentialProviderController.d;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetRestoreCredentialController$invokePlayServices$1.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    executor.execute(new gr(credentialManagerCallback, e2, 1));
                    return Unit.f71739a;
                }
            };
            int i2 = CredentialProviderGetRestoreCredentialController.f12510f;
            CredentialProviderController.b(cancellationSignal, function0);
        }
        return Unit.f71739a;
    }
}
