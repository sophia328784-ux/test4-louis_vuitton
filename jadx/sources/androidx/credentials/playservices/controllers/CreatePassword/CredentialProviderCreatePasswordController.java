package androidx.credentials.playservices.controllers.CreatePassword;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.ResultReceiver;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CreatePasswordResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SignInPassword;
import defpackage.r6;
import defpackage.z1;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreatePasswordRequest;", "Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;", "", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderCreatePasswordController extends CredentialProviderController<CreatePasswordRequest, SavePasswordRequest, Unit, CreateCredentialResponse, CreateCredentialException> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f12442j = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CredentialManagerCallback f12444f;
    public Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CancellationSignal f12445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CredentialProviderCreatePasswordController$resultReceiver$1 f12446i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$Companion;", "", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1] */
    public CredentialProviderCreatePasswordController(Context context) {
        super(context);
        context.getClass();
        this.f12443e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.f12446i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                bundle.getClass();
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f12489a;
                CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1(2, companion, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
                final CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = this.f12451b;
                Executor executor = credentialProviderCreatePasswordController.g;
                if (executor == null) {
                    Intrinsics.h("executor");
                    throw null;
                }
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePasswordController.f12444f;
                if (credentialManagerCallback == null) {
                    Intrinsics.h("callback");
                    throw null;
                }
                if (CredentialProviderController.c(bundle, credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1, executor, credentialManagerCallback, credentialProviderCreatePasswordController.f12445h)) {
                    return;
                }
                int i3 = bundle.getInt("ACTIVITY_REQUEST_CODE");
                companion.getClass();
                if (i3 == CredentialProviderBaseController.f12491c && !CredentialProviderController.d(i2, CredentialProviderCreatePasswordController$handleResponse$1.f12447c, new Function1<CreateCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$handleResponse$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CreateCredentialException createCredentialException = (CreateCredentialException) obj;
                        createCredentialException.getClass();
                        CredentialProviderCreatePasswordController credentialProviderCreatePasswordController2 = credentialProviderCreatePasswordController;
                        Executor executor2 = credentialProviderCreatePasswordController2.g;
                        if (executor2 != null) {
                            executor2.execute(new r6(credentialProviderCreatePasswordController2, createCredentialException, 26));
                            return Unit.f71739a;
                        }
                        Intrinsics.h("executor");
                        throw null;
                    }
                }, credentialProviderCreatePasswordController.f12445h)) {
                    Unit.f71739a.getClass();
                    final CreatePasswordResponse createPasswordResponse = new CreatePasswordResponse();
                    CredentialProviderController.b(credentialProviderCreatePasswordController.f12445h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$handleResponse$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            CredentialProviderCreatePasswordController credentialProviderCreatePasswordController2 = credentialProviderCreatePasswordController;
                            Executor executor2 = credentialProviderCreatePasswordController2.g;
                            if (executor2 == null) {
                                Intrinsics.h("executor");
                                throw null;
                            }
                            executor2.execute(new r6(credentialProviderCreatePasswordController2, createPasswordResponse, 27));
                            return Unit.f71739a;
                        }
                    });
                }
            }
        };
    }

    public final void f(CreatePasswordRequest createPasswordRequest, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal) {
        createPasswordRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        this.f12445h = cancellationSignal;
        this.f12444f = credentialManagerCallback;
        this.g = executor;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        Parcelable.Creator<SavePasswordRequest> creator = SavePasswordRequest.CREATOR;
        SavePasswordRequest.Builder builder = new SavePasswordRequest.Builder();
        builder.f28782a = new SignInPassword(createPasswordRequest.g, createPasswordRequest.f12357h);
        SavePasswordRequest savePasswordRequest = new SavePasswordRequest(builder.f28782a, builder.f28783b, builder.f28784c);
        Context context = this.f12443e;
        Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
        intent.putExtra("REQUEST_TYPE", savePasswordRequest);
        CredentialProviderBaseController.a(this.f12446i, intent, "CREATE_PASSWORD");
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$invokePlayServices$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = this.f12450c;
                    Executor executor2 = credentialProviderCreatePasswordController.g;
                    if (executor2 != null) {
                        executor2.execute(new z1(credentialProviderCreatePasswordController, 23));
                        return Unit.f71739a;
                    }
                    Intrinsics.h("executor");
                    throw null;
                }
            });
        }
    }
}
