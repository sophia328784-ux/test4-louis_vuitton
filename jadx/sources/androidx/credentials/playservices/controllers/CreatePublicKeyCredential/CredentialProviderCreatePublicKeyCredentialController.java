package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Base64;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.GoogleThirdPartyPaymentExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;
import defpackage.cr;
import defpackage.dr;
import defpackage.er;
import defpackage.fr;
import defpackage.md;
import defpackage.r6;
import defpackage.tr;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreatePublicKeyCredentialRequest;", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderCreatePublicKeyCredentialController extends CredentialProviderController<CreatePublicKeyCredentialRequest, PublicKeyCredentialCreationOptions, PublicKeyCredential, CreateCredentialResponse, CreateCredentialException> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f12452j = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CredentialManagerCallback f12454f;
    public Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CancellationSignal f12455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1 f12456i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController$Companion;", "", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1] */
    public CredentialProviderCreatePublicKeyCredentialController(Context context) {
        super(context);
        context.getClass();
        this.f12453e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.f12456i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                bundle.getClass();
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f12489a;
                CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1(2, companion, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
                final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f12466b;
                Executor executor = credentialProviderCreatePublicKeyCredentialController.g;
                final CreateCredentialException createCredentialCancellationException = null;
                if (executor == null) {
                    Intrinsics.h("executor");
                    throw null;
                }
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback == null) {
                    Intrinsics.h("callback");
                    throw null;
                }
                if (CredentialProviderController.c(bundle, credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1, executor, credentialManagerCallback, credentialProviderCreatePublicKeyCredentialController.f12455h)) {
                    return;
                }
                int i3 = bundle.getInt("ACTIVITY_REQUEST_CODE");
                Intent intent = (Intent) bundle.getParcelable("RESULT_DATA");
                companion.getClass();
                if (i3 == CredentialProviderBaseController.f12491c && !CredentialProviderController.d(i2, CredentialProviderCreatePublicKeyCredentialController$handleResponse$1.f12457c, new Function1<CreateCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CreateCredentialException createCredentialException = (CreateCredentialException) obj;
                        createCredentialException.getClass();
                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = credentialProviderCreatePublicKeyCredentialController;
                        Executor executor2 = credentialProviderCreatePublicKeyCredentialController2.g;
                        if (executor2 != null) {
                            executor2.execute(new dr(credentialProviderCreatePublicKeyCredentialController2, createCredentialException, 0));
                            return Unit.f71739a;
                        }
                        Intrinsics.h("executor");
                        throw null;
                    }
                }, credentialProviderCreatePublicKeyCredentialController.f12455h)) {
                    byte[] byteArrayExtra = intent != null ? intent.getByteArrayExtra("FIDO2_CREDENTIAL_EXTRA") : null;
                    int i4 = 0;
                    if (byteArrayExtra == null) {
                        CredentialProviderPlayServicesImpl.Companion companion2 = CredentialProviderPlayServicesImpl.INSTANCE;
                        CancellationSignal cancellationSignal = credentialProviderCreatePublicKeyCredentialController.f12455h;
                        companion2.getClass();
                        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
                            return;
                        }
                        Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                        if (executor2 != null) {
                            executor2.execute(new cr(credentialProviderCreatePublicKeyCredentialController, i4));
                            return;
                        } else {
                            Intrinsics.h("executor");
                            throw null;
                        }
                    }
                    PublicKeyCredential publicKeyCredential = (PublicKeyCredential) SafeParcelableSerializer.a(byteArrayExtra, PublicKeyCredential.CREATOR);
                    publicKeyCredential.getClass();
                    PublicKeyCredentialControllerUtility.f12467a.getClass();
                    SafeParcelable safeParcelable = publicKeyCredential.f29457e;
                    if (safeParcelable == null && (safeParcelable = publicKeyCredential.f29458f) == null && (safeParcelable = publicKeyCredential.g) == null) {
                        md.k("No response set.");
                        return;
                    }
                    if (safeParcelable instanceof AuthenticatorErrorResponse) {
                        AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) safeParcelable;
                        ErrorCode errorCode = authenticatorErrorResponse.f29433b;
                        errorCode.getClass();
                        DomError domError = (DomError) PublicKeyCredentialControllerUtility.x.get(errorCode);
                        String str = authenticatorErrorResponse.f29434c;
                        if (domError == null) {
                            createCredentialCancellationException = new CreatePublicKeyCredentialDomException(new UnknownError(), tr.g("unknown fido gms exception - ", str));
                        } else {
                            createCredentialCancellationException = (errorCode == ErrorCode.NOT_ALLOWED_ERR && str != null && StringsKt.k(str, "Unable to get sync account", false)) ? new CreateCredentialCancellationException("Passkey registration was cancelled by the user.") : new CreatePublicKeyCredentialDomException(domError, str);
                        }
                    }
                    if (createCredentialCancellationException != null) {
                        CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.f12455h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = credentialProviderCreatePublicKeyCredentialController;
                                Executor executor3 = credentialProviderCreatePublicKeyCredentialController2.g;
                                if (executor3 == null) {
                                    Intrinsics.h("executor");
                                    throw null;
                                }
                                executor3.execute(new dr(credentialProviderCreatePublicKeyCredentialController2, createCredentialCancellationException, 1));
                                return Unit.f71739a;
                            }
                        });
                        return;
                    }
                    try {
                        final CreatePublicKeyCredentialResponse createPublicKeyCredentialResponseG = CredentialProviderCreatePublicKeyCredentialController.g(publicKeyCredential);
                        CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.f12455h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = credentialProviderCreatePublicKeyCredentialController;
                                Executor executor3 = credentialProviderCreatePublicKeyCredentialController2.g;
                                if (executor3 == null) {
                                    Intrinsics.h("executor");
                                    throw null;
                                }
                                executor3.execute(new r6(credentialProviderCreatePublicKeyCredentialController2, createPublicKeyCredentialResponseG, 28));
                                return Unit.f71739a;
                            }
                        });
                    } catch (JSONException e2) {
                        CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.f12455h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$6
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = credentialProviderCreatePublicKeyCredentialController;
                                Executor executor3 = credentialProviderCreatePublicKeyCredentialController2.g;
                                if (executor3 == null) {
                                    Intrinsics.h("executor");
                                    throw null;
                                }
                                executor3.execute(new er(credentialProviderCreatePublicKeyCredentialController2, e2, 0));
                                return Unit.f71739a;
                            }
                        });
                    } catch (Throwable th) {
                        CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.f12455h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$7
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = credentialProviderCreatePublicKeyCredentialController;
                                Executor executor3 = credentialProviderCreatePublicKeyCredentialController2.g;
                                if (executor3 == null) {
                                    Intrinsics.h("executor");
                                    throw null;
                                }
                                executor3.execute(new fr(credentialProviderCreatePublicKeyCredentialController2, th, 0));
                                return Unit.f71739a;
                            }
                        });
                    }
                }
            }
        };
    }

    public static CreatePublicKeyCredentialResponse g(PublicKeyCredential publicKeyCredential) throws CreateCredentialUnknownException {
        try {
            String string = publicKeyCredential.W1().toString();
            string.getClass();
            return new CreatePublicKeyCredentialResponse(string);
        } catch (Throwable th) {
            throw new CreateCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
        }
    }

    public final PublicKeyCredentialCreationOptions f(CreatePublicKeyCredentialRequest createPublicKeyCredentialRequest) throws JSONException, PackageManager.NameNotFoundException, CreatePublicKeyCredentialDomException {
        ArrayList arrayList;
        createPublicKeyCredentialRequest.getClass();
        PublicKeyCredentialControllerUtility.f12467a.getClass();
        String str = createPublicKeyCredentialRequest.g;
        Context context = this.f12453e;
        context.getClass();
        if (GoogleApiAvailability.f28961e.b(context, GoogleApiAvailabilityLight.f28963a) == 0) {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getClass();
            PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 0);
            packageInfo.getClass();
            if (packageInfo.getLongVersionCode() > 241217000) {
                return new PublicKeyCredentialCreationOptions(str);
            }
        }
        JSONObject jSONObject = new JSONObject(str);
        PublicKeyCredentialCreationOptions.Builder builder = new PublicKeyCredentialCreationOptions.Builder();
        String strOptString = jSONObject.optString(PublicKeyCredentialControllerUtility.f12470e, "");
        strOptString.getClass();
        if (strOptString.length() == 0) {
            throw new JSONException("Challenge not found in request or is unexpectedly empty");
        }
        int i2 = 11;
        byte[] bArrDecode = Base64.decode(strOptString, 11);
        bArrDecode.getClass();
        builder.f29471c = bArrDecode;
        JSONObject jSONObject2 = jSONObject.getJSONObject(PublicKeyCredentialControllerUtility.s);
        String str2 = PublicKeyCredentialControllerUtility.f12468b;
        String string = jSONObject2.getString(str2);
        string.getClass();
        byte[] bArrDecode2 = Base64.decode(string, 11);
        bArrDecode2.getClass();
        String str3 = PublicKeyCredentialControllerUtility.p;
        String string2 = jSONObject2.getString(str3);
        String string3 = jSONObject2.getString(PublicKeyCredentialControllerUtility.t);
        String str4 = PublicKeyCredentialControllerUtility.q;
        String strOptString2 = jSONObject2.optString(str4, "");
        string3.getClass();
        if (string3.length() == 0) {
            throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
        }
        if (bArrDecode2.length == 0) {
            throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
        }
        string2.getClass();
        if (string2.length() == 0) {
            throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
        }
        builder.f29470b = new PublicKeyCredentialUserEntity(bArrDecode2, string2, strOptString2, string3);
        JSONObject jSONObject3 = jSONObject.getJSONObject(PublicKeyCredentialControllerUtility.o);
        String string4 = jSONObject3.getString(str2);
        String strOptString3 = jSONObject3.optString(str3, "");
        String strOptString4 = jSONObject3.optString(str4, "");
        strOptString4.getClass();
        if (strOptString4.length() == 0) {
            strOptString4 = null;
        }
        strOptString3.getClass();
        if (strOptString3.length() == 0) {
            throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
        }
        string4.getClass();
        if (string4.length() == 0) {
            throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
        }
        builder.f29469a = new PublicKeyCredentialRpEntity(string4, strOptString3, strOptString4);
        JSONArray jSONArray = jSONObject.getJSONArray(PublicKeyCredentialControllerUtility.w);
        ArrayList arrayList2 = new ArrayList();
        int length = jSONArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            JSONObject jSONObject4 = jSONArray.getJSONObject(i3);
            int i4 = (int) jSONObject4.getLong(PublicKeyCredentialControllerUtility.r);
            String strOptString5 = jSONObject4.optString(PublicKeyCredentialControllerUtility.f12469c, "");
            strOptString5.getClass();
            if (strOptString5.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
            }
            try {
                COSEAlgorithmIdentifier.a(i4);
                arrayList2.add(new PublicKeyCredentialParameters(strOptString5, i4));
            } catch (Throwable unused) {
            }
        }
        builder.d = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        String str5 = PublicKeyCredentialControllerUtility.m;
        if (jSONObject.has(str5)) {
            JSONArray jSONArray2 = jSONObject.getJSONArray(str5);
            int length2 = jSONArray2.length();
            int i5 = 0;
            while (i5 < length2) {
                JSONObject jSONObject5 = jSONArray2.getJSONObject(i5);
                String string5 = jSONObject5.getString(PublicKeyCredentialControllerUtility.f12468b);
                string5.getClass();
                byte[] bArrDecode3 = Base64.decode(string5, i2);
                bArrDecode3.getClass();
                String string6 = jSONObject5.getString(PublicKeyCredentialControllerUtility.f12469c);
                string6.getClass();
                if (string6.length() == 0) {
                    throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                }
                if (bArrDecode3.length == 0) {
                    throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                }
                String str6 = PublicKeyCredentialControllerUtility.n;
                if (jSONObject5.has(str6)) {
                    arrayList = new ArrayList();
                    JSONArray jSONArray3 = jSONObject5.getJSONArray(str6);
                    int length3 = jSONArray3.length();
                    for (int i6 = 0; i6 < length3; i6++) {
                        try {
                            arrayList.add(Transport.a(jSONArray3.getString(i6)));
                        } catch (Transport.UnsupportedTransportException e2) {
                            throw new CreatePublicKeyCredentialDomException(new EncodingError(), e2.getMessage());
                        }
                    }
                } else {
                    arrayList = null;
                }
                arrayList3.add(new PublicKeyCredentialDescriptor(string6, bArrDecode3, arrayList));
                i5++;
                i2 = 11;
            }
        }
        builder.f29473f = arrayList3;
        String strOptString6 = jSONObject.optString(PublicKeyCredentialControllerUtility.v, "none");
        strOptString6.getClass();
        builder.f29474h = AttestationConveyancePreference.a(strOptString6.length() != 0 ? strOptString6 : "none");
        String str7 = PublicKeyCredentialControllerUtility.l;
        if (jSONObject.has(str7)) {
            builder.f29472e = Double.valueOf(jSONObject.getLong(str7) / 1000.0d);
        }
        String str8 = PublicKeyCredentialControllerUtility.f12472h;
        if (jSONObject.has(str8)) {
            JSONObject jSONObject6 = jSONObject.getJSONObject(str8);
            AuthenticatorSelectionCriteria.Builder builder2 = new AuthenticatorSelectionCriteria.Builder();
            boolean zOptBoolean = jSONObject6.optBoolean(PublicKeyCredentialControllerUtility.f12473i, false);
            String strOptString7 = jSONObject6.optString(PublicKeyCredentialControllerUtility.f12474j, "");
            strOptString7.getClass();
            ResidentKeyRequirement residentKeyRequirementA = strOptString7.length() > 0 ? ResidentKeyRequirement.a(strOptString7) : null;
            builder2.f29439b = Boolean.valueOf(zOptBoolean);
            builder2.f29440c = residentKeyRequirementA;
            String strOptString8 = jSONObject6.optString(PublicKeyCredentialControllerUtility.f12475k, "");
            strOptString8.getClass();
            if (strOptString8.length() > 0) {
                builder2.f29438a = Attachment.a(strOptString8);
            }
            Attachment attachment = builder2.f29438a;
            String string7 = attachment == null ? null : attachment.toString();
            Boolean bool = builder2.f29439b;
            ResidentKeyRequirement residentKeyRequirement = builder2.f29440c;
            builder.g = new AuthenticatorSelectionCriteria(string7, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString(), bool);
        }
        String str9 = PublicKeyCredentialControllerUtility.u;
        if (jSONObject.has(str9)) {
            JSONObject jSONObject7 = jSONObject.getJSONObject(str9);
            AuthenticationExtensions.Builder builder3 = new AuthenticationExtensions.Builder();
            String strOptString9 = jSONObject7.optString(PublicKeyCredentialControllerUtility.f12471f, "");
            strOptString9.getClass();
            if (strOptString9.length() > 0) {
                builder3.f29412a = new FidoAppIdExtension(strOptString9);
            }
            if (jSONObject7.optBoolean(PublicKeyCredentialControllerUtility.g, false)) {
                builder3.f29418i = new GoogleThirdPartyPaymentExtension(true);
            }
            if (jSONObject7.optBoolean("uvm", false)) {
                builder3.f29413b = new UserVerificationMethodExtension(true);
            }
            builder.f29475i = builder3.a();
        }
        return builder.a();
    }

    public final void h(CreatePublicKeyCredentialRequest createPublicKeyCredentialRequest, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal) {
        createPublicKeyCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        this.f12455h = cancellationSignal;
        this.f12454f = credentialManagerCallback;
        this.g = executor;
        try {
            PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptionsF = f(createPublicKeyCredentialRequest);
            CredentialProviderPlayServicesImpl.INSTANCE.getClass();
            if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
                return;
            }
            Context context = this.f12453e;
            Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
            intent.putExtra("REQUEST_TYPE", publicKeyCredentialCreationOptionsF);
            CredentialProviderBaseController.a(this.f12456i, intent, "CREATE_PUBLIC_KEY_CREDENTIAL");
            try {
                context.startActivity(intent);
            } catch (Exception unused) {
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f12465c;
                        Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                        if (executor2 != null) {
                            executor2.execute(new cr(credentialProviderCreatePublicKeyCredentialController, 1));
                            return Unit.f71739a;
                        }
                        Intrinsics.h("executor");
                        throw null;
                    }
                });
            }
        } catch (JSONException e2) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f12463c;
                    Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                    if (executor2 == null) {
                        Intrinsics.h("executor");
                        throw null;
                    }
                    executor2.execute(new er(credentialProviderCreatePublicKeyCredentialController, e2, 1));
                    return Unit.f71739a;
                }
            });
        } catch (Throwable th) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f12464c;
                    Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                    if (executor2 == null) {
                        Intrinsics.h("executor");
                        throw null;
                    }
                    executor2.execute(new fr(credentialProviderCreatePublicKeyCredentialController, th, 1));
                    return Unit.f71739a;
                }
            });
        }
    }
}
