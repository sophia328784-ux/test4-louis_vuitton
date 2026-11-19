package androidx.credentials.playservices.controllers.BeginSignIn;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.util.Base64;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.GetPasswordOption;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.PasswordCredential;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialDomException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.PublicKeyCredentialControllerUtility;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAssertionResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.internal.p000authapi.zbaq;
import com.google.android.libraries.identity.googleid.GetGoogleIdOption;
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential;
import defpackage.br;
import defpackage.md;
import defpackage.r6;
import defpackage.tr;
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
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;", "Lcom/google/android/gms/auth/api/identity/SignInCredential;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderBeginSignInController extends CredentialProviderController<GetCredentialRequest, BeginSignInRequest, SignInCredential, GetCredentialResponse, GetCredentialException> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f12429j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CredentialManagerCallback f12431f;
    public Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CancellationSignal f12432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CredentialProviderBeginSignInController$resultReceiver$1 f12433i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController$Companion;", "", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$resultReceiver$1] */
    public CredentialProviderBeginSignInController(Context context) {
        super(context);
        context.getClass();
        this.f12430e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.f12433i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                bundle.getClass();
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f12489a;
                CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 credentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1(2, companion, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
                final CredentialProviderBeginSignInController credentialProviderBeginSignInController = this.f12441b;
                if (CredentialProviderController.c(bundle, credentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1, credentialProviderBeginSignInController.h(), credentialProviderBeginSignInController.g(), credentialProviderBeginSignInController.f12432h)) {
                    return;
                }
                int i3 = bundle.getInt("ACTIVITY_REQUEST_CODE");
                Intent intent = (Intent) bundle.getParcelable("RESULT_DATA");
                companion.getClass();
                if (i3 == CredentialProviderBaseController.f12491c && !CredentialProviderController.e(i2, CredentialProviderBeginSignInController$handleResponse$1.f12434c, new Function1<GetCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        GetCredentialException getCredentialException = (GetCredentialException) obj;
                        getCredentialException.getClass();
                        CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = credentialProviderBeginSignInController;
                        credentialProviderBeginSignInController2.h().execute(new br(credentialProviderBeginSignInController2, getCredentialException, 0));
                        return Unit.f71739a;
                    }
                }, credentialProviderBeginSignInController.f12432h)) {
                    try {
                        Context context2 = credentialProviderBeginSignInController.f12430e;
                        Preconditions.h(context2);
                        final GetCredentialResponse getCredentialResponseF = credentialProviderBeginSignInController.f(new zbaq(context2, new zbv()).j(intent));
                        CredentialProviderController.b(credentialProviderBeginSignInController.f12432h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = credentialProviderBeginSignInController;
                                credentialProviderBeginSignInController2.h().execute(new r6(credentialProviderBeginSignInController2, getCredentialResponseF, 22));
                                return Unit.f71739a;
                            }
                        });
                    } catch (GetCredentialException e2) {
                        CredentialProviderController.b(credentialProviderBeginSignInController.f12432h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = credentialProviderBeginSignInController;
                                credentialProviderBeginSignInController2.h().execute(new br(credentialProviderBeginSignInController2, e2, 1));
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
                        CredentialProviderController.b(credentialProviderBeginSignInController.f12432h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = credentialProviderBeginSignInController;
                                credentialProviderBeginSignInController2.h().execute(new r6(credentialProviderBeginSignInController2, ref$ObjectRef, 23));
                                return Unit.f71739a;
                            }
                        });
                    } catch (Throwable th) {
                        final GetCredentialUnknownException getCredentialUnknownException = new GetCredentialUnknownException(th.getMessage());
                        CredentialProviderController.b(credentialProviderBeginSignInController.f12432h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$6
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = credentialProviderBeginSignInController;
                                credentialProviderBeginSignInController2.h().execute(new r6(credentialProviderBeginSignInController2, getCredentialUnknownException, 24));
                                return Unit.f71739a;
                            }
                        });
                    }
                }
            }
        };
    }

    public final GetCredentialResponse f(SignInCredential signInCredential) throws GetCredentialCancellationException, GetPublicKeyCredentialDomException, GetCredentialUnknownException {
        Credential publicKeyCredential;
        String string;
        signInCredential.getClass();
        String str = signInCredential.g;
        PublicKeyCredential publicKeyCredential2 = signInCredential.f28792j;
        String str2 = signInCredential.f28790h;
        String str3 = signInCredential.f28786b;
        if (str != null) {
            str3.getClass();
            str.getClass();
            publicKeyCredential = new PasswordCredential(str3, str);
        } else if (str2 != null) {
            GoogleIdTokenCredential.Builder builder = new GoogleIdTokenCredential.Builder();
            str3.getClass();
            builder.f32213a = str3;
            builder.f32214b = str2;
            String str4 = signInCredential.f28787c;
            if (str4 != null) {
                builder.f32215c = str4;
            }
            String str5 = signInCredential.d;
            if (str5 != null) {
                builder.f32216e = str5;
            }
            String str6 = signInCredential.f28788e;
            if (str6 != null) {
                builder.d = str6;
            }
            String str7 = signInCredential.f28791i;
            if (str7 != null) {
                builder.g = str7;
            }
            Uri uri = signInCredential.f28789f;
            if (uri != null) {
                builder.f32217f = uri;
            }
            publicKeyCredential = new GoogleIdTokenCredential(builder.f32213a, builder.f32214b, builder.f32215c, builder.d, builder.f32216e, builder.f32217f, builder.g);
        } else {
            publicKeyCredential = null;
            if (publicKeyCredential2 != null) {
                PublicKeyCredentialControllerUtility.f12467a.getClass();
                JSONObject jSONObject = new JSONObject();
                SafeParcelable safeParcelable = publicKeyCredential2.f29457e;
                if (safeParcelable == null && (safeParcelable = publicKeyCredential2.f29458f) == null && (safeParcelable = publicKeyCredential2.g) == null) {
                    md.k("No response set.");
                    return null;
                }
                if (safeParcelable instanceof AuthenticatorErrorResponse) {
                    AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) safeParcelable;
                    ErrorCode errorCode = authenticatorErrorResponse.f29433b;
                    errorCode.getClass();
                    String str8 = authenticatorErrorResponse.f29434c;
                    DomError domError = (DomError) PublicKeyCredentialControllerUtility.x.get(errorCode);
                    if (domError == null) {
                        throw new GetPublicKeyCredentialDomException(new UnknownError(), tr.g("unknown fido gms exception - ", str8));
                    }
                    if (errorCode == ErrorCode.NOT_ALLOWED_ERR && str8 != null && StringsKt.k(str8, "Unable to get sync account", false)) {
                        throw new GetCredentialCancellationException("Passkey retrieval was cancelled by the user.");
                    }
                    throw new GetPublicKeyCredentialDomException(domError, str8);
                }
                if (safeParcelable instanceof AuthenticatorAssertionResponse) {
                    try {
                        string = publicKeyCredential2.W1().toString();
                        string.getClass();
                    } catch (Throwable th) {
                        throw new GetCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
                    }
                } else {
                    string = jSONObject.toString();
                    string.getClass();
                }
                publicKeyCredential = new androidx.credentials.PublicKeyCredential(string);
            }
        }
        if (publicKeyCredential != null) {
            return new GetCredentialResponse(publicKeyCredential);
        }
        throw new GetCredentialUnknownException("When attempting to convert get response, null credential found");
    }

    public final CredentialManagerCallback g() {
        CredentialManagerCallback credentialManagerCallback = this.f12431f;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        Intrinsics.h("callback");
        throw null;
    }

    public final Executor h() {
        Executor executor = this.g;
        if (executor != null) {
            return executor;
        }
        Intrinsics.h("executor");
        throw null;
    }

    public final void i(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        getCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        this.f12432h = cancellationSignal;
        this.f12431f = credentialManagerCallback;
        this.g = executor;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        BeginSignInControllerUtility.f12428a.getClass();
        Context context = this.f12430e;
        context.getClass();
        BeginSignInRequest.Builder builder = new BeginSignInRequest.Builder();
        PackageManager packageManager = context.getPackageManager();
        packageManager.getClass();
        boolean z = false;
        long j2 = packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
        boolean z2 = false;
        boolean z3 = false;
        for (CredentialOption credentialOption : getCredentialRequest.f12384a) {
            if (credentialOption instanceof GetPasswordOption) {
                BeginSignInRequest.PasswordRequestOptions.Builder builder2 = new BeginSignInRequest.PasswordRequestOptions.Builder();
                builder2.f28763a = true;
                builder.f28737a = new BeginSignInRequest.PasswordRequestOptions(builder2.f28763a);
                z2 = (z2 || credentialOption.f12373e) ? true : z;
            } else if ((credentialOption instanceof GetPublicKeyCredentialOption) && !z3) {
                if (j2 >= 231815000) {
                    PublicKeyCredentialControllerUtility.f12467a.getClass();
                    BeginSignInRequest.PasskeyJsonRequestOptions.Builder builder3 = new BeginSignInRequest.PasskeyJsonRequestOptions.Builder();
                    builder3.f28755a = true;
                    builder3.f28756b = ((GetPublicKeyCredentialOption) credentialOption).g;
                    builder.d = new BeginSignInRequest.PasskeyJsonRequestOptions(builder3.f28755a, builder3.f28756b);
                } else {
                    PublicKeyCredentialControllerUtility.f12467a.getClass();
                    JSONObject jSONObject = new JSONObject(((GetPublicKeyCredentialOption) credentialOption).g);
                    String strOptString = jSONObject.optString(PublicKeyCredentialControllerUtility.d, "");
                    strOptString.getClass();
                    if (strOptString.length() == 0) {
                        throw new JSONException("GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty");
                    }
                    String strOptString2 = jSONObject.optString(PublicKeyCredentialControllerUtility.f12470e, "");
                    strOptString2.getClass();
                    if (strOptString2.length() == 0) {
                        throw new JSONException("Challenge not found in request or is unexpectedly empty");
                    }
                    byte[] bArrDecode = Base64.decode(strOptString2, 11);
                    bArrDecode.getClass();
                    BeginSignInRequest.PasskeysRequestOptions.Builder builder4 = new BeginSignInRequest.PasskeysRequestOptions.Builder();
                    builder4.f28759a = true;
                    builder4.f28761c = strOptString;
                    builder4.f28760b = bArrDecode;
                    builder.f28739c = new BeginSignInRequest.PasskeysRequestOptions(builder4.f28761c, builder4.f28759a, builder4.f28760b);
                }
                z3 = true;
            } else if (credentialOption instanceof GetGoogleIdOption) {
                GetGoogleIdOption getGoogleIdOption = (GetGoogleIdOption) credentialOption;
                Parcelable.Creator<BeginSignInRequest.GoogleIdTokenRequestOptions> creator = BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR;
                BeginSignInRequest.GoogleIdTokenRequestOptions.Builder builder5 = new BeginSignInRequest.GoogleIdTokenRequestOptions.Builder();
                builder5.d = getGoogleIdOption.f32202i;
                builder5.f28750c = getGoogleIdOption.f32201h;
                builder5.g = getGoogleIdOption.l;
                String str = getGoogleIdOption.g;
                Preconditions.e(str);
                builder5.f28749b = str;
                builder5.f28748a = true;
                String str2 = getGoogleIdOption.f32203j;
                if (str2 != null) {
                    List list = getGoogleIdOption.f32204k;
                    builder5.f28751e = str2;
                    builder5.f28752f = list;
                }
                long j3 = j2;
                builder.f28738b = new BeginSignInRequest.GoogleIdTokenRequestOptions(builder5.f28749b, builder5.f28750c, builder5.f28748a, builder5.f28751e, builder5.f28752f, builder5.d, builder5.g);
                z2 = z2 || getGoogleIdOption.m;
                j2 = j3;
                z = false;
            }
        }
        if (j2 > 241217000) {
            builder.f28742h = getCredentialRequest.f12387e;
        }
        builder.f28741f = z2;
        BeginSignInRequest beginSignInRequest = new BeginSignInRequest(builder.f28737a, builder.f28738b, builder.f28740e, builder.f28741f, builder.g, builder.f28739c, builder.d, builder.f28742h);
        Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
        intent.putExtra("REQUEST_TYPE", beginSignInRequest);
        CredentialProviderBaseController.a(this.f12433i, intent, "BEGIN_SIGN_IN");
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$invokePlayServices$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    CredentialProviderBeginSignInController credentialProviderBeginSignInController = this.f12440c;
                    credentialProviderBeginSignInController.h().execute(new z1(credentialProviderBeginSignInController, 22));
                    return Unit.f71739a;
                }
            });
        }
    }
}
