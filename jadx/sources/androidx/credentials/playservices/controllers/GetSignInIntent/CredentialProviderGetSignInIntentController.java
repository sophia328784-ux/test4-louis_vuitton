package androidx.credentials.playservices.controllers.GetSignInIntent;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.ResultReceiver;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p000authapi.zbaq;
import com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption;
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential;
import defpackage.jr;
import defpackage.kr;
import defpackage.z1;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;", "Lcom/google/android/gms/auth/api/identity/SignInCredential;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderGetSignInIntentController extends CredentialProviderController<GetCredentialRequest, GetSignInIntentRequest, SignInCredential, GetCredentialResponse, GetCredentialException> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f12525j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CredentialManagerCallback f12527f;
    public Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CancellationSignal f12528h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CredentialProviderGetSignInIntentController$resultReceiver$1 f12529i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$Companion;", "", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$resultReceiver$1] */
    public CredentialProviderGetSignInIntentController(Context context) {
        super(context);
        context.getClass();
        this.f12526e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.f12529i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                bundle.getClass();
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f12489a;
                CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 credentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1(2, companion, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
                final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = this.f12538b;
                if (CredentialProviderController.c(bundle, credentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1, credentialProviderGetSignInIntentController.i(), credentialProviderGetSignInIntentController.h(), credentialProviderGetSignInIntentController.f12528h)) {
                    return;
                }
                int i3 = bundle.getInt("ACTIVITY_REQUEST_CODE");
                Intent intent = (Intent) bundle.getParcelable("RESULT_DATA");
                companion.getClass();
                if (i3 == CredentialProviderBaseController.f12491c && !CredentialProviderController.e(i2, CredentialProviderGetSignInIntentController$handleResponse$1.f12530c, new Function1<GetCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        GetCredentialException getCredentialException = (GetCredentialException) obj;
                        getCredentialException.getClass();
                        CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController2 = credentialProviderGetSignInIntentController;
                        credentialProviderGetSignInIntentController2.i().execute(new kr(credentialProviderGetSignInIntentController2, getCredentialException, 0));
                        return Unit.f71739a;
                    }
                }, credentialProviderGetSignInIntentController.f12528h)) {
                    try {
                        Context context2 = credentialProviderGetSignInIntentController.f12526e;
                        Preconditions.h(context2);
                        final GetCredentialResponse getCredentialResponseG = credentialProviderGetSignInIntentController.g(new zbaq(context2, new zbv()).j(intent));
                        CredentialProviderController.b(credentialProviderGetSignInIntentController.f12528h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController2 = credentialProviderGetSignInIntentController;
                                credentialProviderGetSignInIntentController2.i().execute(new jr(credentialProviderGetSignInIntentController2, getCredentialResponseG, 3));
                                return Unit.f71739a;
                            }
                        });
                    } catch (GetCredentialException e2) {
                        CredentialProviderController.b(credentialProviderGetSignInIntentController.f12528h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController2 = credentialProviderGetSignInIntentController;
                                credentialProviderGetSignInIntentController2.i().execute(new kr(credentialProviderGetSignInIntentController2, e2, 1));
                                return Unit.f71739a;
                            }
                        });
                    } catch (ApiException e3) {
                        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        ref$ObjectRef.f71921b = new GetCredentialUnknownException(e3.getMessage());
                        int i4 = e3.f28974b.f29008b;
                        if (i4 == 16) {
                            ref$ObjectRef.f71921b = new GetCredentialCancellationException(e3.getMessage());
                        } else if (CredentialProviderBaseController.f12490b.contains(Integer.valueOf(i4))) {
                            ref$ObjectRef.f71921b = new GetCredentialInterruptedException(e3.getMessage());
                        }
                        CredentialProviderController.b(credentialProviderGetSignInIntentController.f12528h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController2 = credentialProviderGetSignInIntentController;
                                credentialProviderGetSignInIntentController2.i().execute(new jr(credentialProviderGetSignInIntentController2, ref$ObjectRef, 4));
                                return Unit.f71739a;
                            }
                        });
                    } catch (Throwable th) {
                        final GetCredentialUnknownException getCredentialUnknownException = new GetCredentialUnknownException(th.getMessage());
                        CredentialProviderController.b(credentialProviderGetSignInIntentController.f12528h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$6
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController2 = credentialProviderGetSignInIntentController;
                                credentialProviderGetSignInIntentController2.i().execute(new jr(credentialProviderGetSignInIntentController2, getCredentialUnknownException, 5));
                                return Unit.f71739a;
                            }
                        });
                    }
                }
            }
        };
    }

    public static GetSignInIntentRequest f(GetCredentialRequest getCredentialRequest) throws GetCredentialUnsupportedException {
        getCredentialRequest.getClass();
        List list = getCredentialRequest.f12384a;
        if (list.size() != 1) {
            throw new GetCredentialUnsupportedException("GetSignInWithGoogleOption cannot be combined with other options.");
        }
        Object obj = list.get(0);
        obj.getClass();
        GetSignInWithGoogleOption getSignInWithGoogleOption = (GetSignInWithGoogleOption) obj;
        Parcelable.Creator<GetSignInIntentRequest> creator = GetSignInIntentRequest.CREATOR;
        GetSignInIntentRequest.Builder builder = new GetSignInIntentRequest.Builder();
        String str = getSignInWithGoogleOption.g;
        Preconditions.h(str);
        builder.f28770a = str;
        builder.f28771b = getSignInWithGoogleOption.f32208h;
        builder.d = getSignInWithGoogleOption.f32209i;
        String str2 = builder.f28770a;
        String str3 = builder.f28771b;
        String str4 = builder.f28772c;
        String str5 = builder.d;
        return new GetSignInIntentRequest(builder.f28774f, str2, builder.f28773e, str3, str4, str5);
    }

    public final GetCredentialResponse g(SignInCredential signInCredential) throws GetCredentialUnknownException {
        GoogleIdTokenCredential googleIdTokenCredential;
        signInCredential.getClass();
        String str = signInCredential.f28790h;
        if (str != null) {
            GoogleIdTokenCredential.Builder builder = new GoogleIdTokenCredential.Builder();
            String str2 = signInCredential.f28786b;
            str2.getClass();
            builder.f32213a = str2;
            try {
                str.getClass();
                builder.f32214b = str;
                String str3 = signInCredential.f28787c;
                if (str3 != null) {
                    builder.f32215c = str3;
                }
                String str4 = signInCredential.d;
                if (str4 != null) {
                    builder.f32216e = str4;
                }
                String str5 = signInCredential.f28788e;
                if (str5 != null) {
                    builder.d = str5;
                }
                String str6 = signInCredential.f28791i;
                if (str6 != null) {
                    builder.g = str6;
                }
                Uri uri = signInCredential.f28789f;
                if (uri != null) {
                    builder.f32217f = uri;
                }
                googleIdTokenCredential = new GoogleIdTokenCredential(builder.f32213a, builder.f32214b, builder.f32215c, builder.d, builder.f32216e, builder.f32217f, builder.g);
            } catch (Exception unused) {
                throw new GetCredentialUnknownException("When attempting to convert get response, null Google ID Token found");
            }
        } else {
            googleIdTokenCredential = null;
        }
        if (googleIdTokenCredential != null) {
            return new GetCredentialResponse(googleIdTokenCredential);
        }
        throw new GetCredentialUnknownException("When attempting to convert get response, null credential found");
    }

    public final CredentialManagerCallback h() {
        CredentialManagerCallback credentialManagerCallback = this.f12527f;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        Intrinsics.h("callback");
        throw null;
    }

    public final Executor i() {
        Executor executor = this.g;
        if (executor != null) {
            return executor;
        }
        Intrinsics.h("executor");
        throw null;
    }

    public final void j(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        Context context = this.f12526e;
        getCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        this.f12528h = cancellationSignal;
        this.f12527f = credentialManagerCallback;
        this.g = executor;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        try {
            GetSignInIntentRequest getSignInIntentRequestF = f(getCredentialRequest);
            Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
            intent.putExtra("REQUEST_TYPE", getSignInIntentRequestF);
            CredentialProviderBaseController.a(this.f12529i, intent, "SIGN_IN_INTENT");
            context.startActivity(intent);
        } catch (Exception e2) {
            if (!(e2 instanceof GetCredentialUnsupportedException)) {
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$invokePlayServices$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = this.f12537c;
                        credentialProviderGetSignInIntentController.i().execute(new z1(credentialProviderGetSignInIntentController, 25));
                        return Unit.f71739a;
                    }
                });
            } else {
                final GetCredentialUnsupportedException getCredentialUnsupportedException = (GetCredentialUnsupportedException) e2;
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$invokePlayServices$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = this.f12536c;
                        credentialProviderGetSignInIntentController.i().execute(new jr(credentialProviderGetSignInIntentController, getCredentialUnsupportedException, 6));
                        return Unit.f71739a;
                    }
                });
            }
        }
    }
}
