package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import android.os.Bundle;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManager;
import androidx.credentials.CustomCredential;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.NoCredentialException;
import com.google.android.libraries.identity.googleid.GetGoogleIdOption;
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential;
import com.google.android.libraries.identity.googleid.GoogleIdTokenParsingException;
import com.vuitton.android.data.exception.GoogleSignInParsingException;
import com.vuitton.android.data.exception.GoogleSignInUnsupportedTypeException;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;", "Landroidx/credentials/CredentialManager;", "credentialManager", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Landroidx/credentials/CredentialManager;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GoogleSignInManagerImpl implements GoogleSignInManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CredentialManager f53411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f53412b;

    @Inject
    public GoogleSignInManagerImpl(CredentialManager credentialManager, EnvironmentProvider environmentProvider) {
        credentialManager.getClass();
        environmentProvider.getClass();
        this.f53411a = credentialManager;
        this.f53412b = environmentProvider;
    }

    public static Object b(Credential credential, String str, String str2, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) throws Throwable {
        Object failure;
        Throwable googleSignInUnsupportedTypeException;
        if (!(credential instanceof CustomCredential) || !Intrinsics.c(credential.f12363a, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL")) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new GoogleSignInUnsupportedTypeException(credential.f12363a));
        }
        try {
            Result.Companion companion2 = Result.INSTANCE;
            GoogleIdTokenCredential.Companion companion3 = GoogleIdTokenCredential.f32210h;
            Bundle bundle = credential.f12364b;
            companion3.getClass();
            GoogleIdTokenCredential googleIdTokenCredentialA = GoogleIdTokenCredential.Companion.a(bundle);
            str.getClass();
            str2.getClass();
            trackingAuthOrigin.getClass();
            trackingAuthEntryPoint.getClass();
            String str3 = googleIdTokenCredentialA.g;
            String str4 = str3 == null ? "" : str3;
            String str5 = googleIdTokenCredentialA.f32212f;
            failure = new Result(new SocialLoginUiModel(googleIdTokenCredentialA.d, str4, str5 == null ? "" : str5, (String) null, str, str2, googleIdTokenCredentialA.f32211e, (String) null, (String) null, trackingAuthOrigin, trackingAuthEntryPoint, SocialAuthMode.GOOGLE, 392, (DefaultConstructorMarker) null));
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        if (thA2 instanceof GoogleIdTokenParsingException) {
            googleSignInUnsupportedTypeException = new GoogleSignInParsingException("Failed to parse Google id token", (GoogleIdTokenParsingException) thA2);
        } else {
            String message = thA2.getMessage();
            if (message == null) {
                message = "Unable to parse Google id token";
            }
            googleSignInUnsupportedTypeException = new GoogleSignInUnsupportedTypeException(message);
        }
        return new Result.Failure(googleSignInUnsupportedTypeException);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:52:0x0103  */
    /* JADX WARN: Code duplicated, block: B:53:0x010b  */
    /* JADX WARN: Code duplicated, block: B:55:0x010f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0113  */
    /* JADX WARN: Code duplicated, block: B:59:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x011a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0122  */
    /* JADX WARN: Code duplicated, block: B:65:0x0129  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManager
    public final Object a(Context context, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, ContinuationImpl continuationImpl) throws Throwable {
        GoogleSignInManagerImpl$getGoogleCredentials$1 googleSignInManagerImpl$getGoogleCredentials$1;
        String strA;
        TrackingAuthOrigin trackingAuthOrigin2;
        TrackingAuthEntryPoint trackingAuthEntryPoint2;
        String str;
        TrackingAuthOrigin trackingAuthOrigin3;
        TrackingAuthEntryPoint trackingAuthEntryPoint3;
        Object failure;
        Throwable thA;
        Object failure2;
        Throwable thA2;
        Object failure3;
        String message;
        if (continuationImpl instanceof GoogleSignInManagerImpl$getGoogleCredentials$1) {
            googleSignInManagerImpl$getGoogleCredentials$1 = (GoogleSignInManagerImpl$getGoogleCredentials$1) continuationImpl;
            int i2 = googleSignInManagerImpl$getGoogleCredentials$1.f53417h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                googleSignInManagerImpl$getGoogleCredentials$1.f53417h = i2 - Integer.MIN_VALUE;
            } else {
                googleSignInManagerImpl$getGoogleCredentials$1 = new GoogleSignInManagerImpl$getGoogleCredentials$1(this, continuationImpl);
            }
        } else {
            googleSignInManagerImpl$getGoogleCredentials$1 = new GoogleSignInManagerImpl$getGoogleCredentials$1(this, continuationImpl);
        }
        Object obj = googleSignInManagerImpl$getGoogleCredentials$1.f53416f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = googleSignInManagerImpl$getGoogleCredentials$1.f53417h;
        if (i3 == 0) {
            ResultKt.b(obj);
            strA = NonceUtilsKt.a();
            String strB = NonceUtilsKt.b(strA);
            GetGoogleIdOption.Builder builder = new GetGoogleIdOption.Builder();
            builder.f32207c = false;
            String strC = this.f53412b.c();
            strC.getClass();
            if (strC.length() <= 0) {
                md.n("serverClientId should not be empty");
                return null;
            }
            builder.f32205a = strC;
            builder.f32206b = strB;
            GetGoogleIdOption getGoogleIdOption = new GetGoogleIdOption(builder.f32205a, builder.f32206b, builder.f32207c, null, null, false, false);
            ArrayList arrayList = new GetCredentialRequest.Builder().f12388a;
            arrayList.add(getGoogleIdOption);
            GetCredentialRequest getCredentialRequest = new GetCredentialRequest(CollectionsKt.y0(arrayList), null, false, null, false);
            try {
                Result.Companion companion = Result.INSTANCE;
                CredentialManager credentialManager = this.f53411a;
                trackingAuthOrigin2 = trackingAuthOrigin;
                try {
                    googleSignInManagerImpl$getGoogleCredentials$1.f53413b = trackingAuthOrigin2;
                    trackingAuthEntryPoint2 = trackingAuthEntryPoint;
                    try {
                        googleSignInManagerImpl$getGoogleCredentials$1.f53414c = trackingAuthEntryPoint2;
                        googleSignInManagerImpl$getGoogleCredentials$1.d = strA;
                        googleSignInManagerImpl$getGoogleCredentials$1.f53415e = strB;
                        googleSignInManagerImpl$getGoogleCredentials$1.f53417h = 1;
                        Object objD = credentialManager.d(context, getCredentialRequest, googleSignInManagerImpl$getGoogleCredentials$1);
                        if (objD == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        str = strB;
                        trackingAuthOrigin3 = trackingAuthOrigin2;
                        trackingAuthEntryPoint3 = trackingAuthEntryPoint2;
                        obj = objD;
                    } catch (Throwable th) {
                        th = th;
                        str = strB;
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                        trackingAuthOrigin3 = trackingAuthOrigin2;
                        trackingAuthEntryPoint3 = trackingAuthEntryPoint2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    trackingAuthEntryPoint2 = trackingAuthEntryPoint;
                    str = strB;
                    Result.Companion companion3 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                    trackingAuthOrigin3 = trackingAuthOrigin2;
                    trackingAuthEntryPoint3 = trackingAuthEntryPoint2;
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    failure2 = ((Result) failure).f71708b;
                    if (!(failure2 instanceof Result.Failure)) {
                        try {
                            Object objB = b(((GetCredentialResponse) failure2).f12390a, strA, str, trackingAuthOrigin3, trackingAuthEntryPoint3);
                            ResultKt.b(objB);
                            failure2 = (SocialLoginUiModel) objB;
                        } catch (Throwable th3) {
                            Result.Companion companion4 = Result.INSTANCE;
                            failure2 = new Result.Failure(th3);
                        }
                    }
                    thA2 = Result.a(failure2);
                    if (thA2 == null) {
                        return new GoogleCredentialResult.Success((SocialLoginUiModel) failure2);
                    }
                    if (thA2 instanceof GetCredentialCancellationException) {
                        failure3 = GoogleCredentialResult.Cancelled.f53407a;
                    } else if (thA2 instanceof NoCredentialException) {
                        failure3 = GoogleCredentialResult.NoAccountFound.f53409a;
                    } else {
                        message = thA2.getMessage();
                        if (message == null) {
                            message = "Unknown error";
                        }
                        failure3 = new GoogleCredentialResult.Failure(message);
                    }
                    return failure3;
                }
            } catch (Throwable th4) {
                th = th4;
                trackingAuthOrigin2 = trackingAuthOrigin;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = googleSignInManagerImpl$getGoogleCredentials$1.f53415e;
            strA = googleSignInManagerImpl$getGoogleCredentials$1.d;
            trackingAuthEntryPoint3 = googleSignInManagerImpl$getGoogleCredentials$1.f53414c;
            trackingAuthOrigin3 = googleSignInManagerImpl$getGoogleCredentials$1.f53413b;
            try {
                ResultKt.b(obj);
            } catch (Throwable th5) {
                th = th5;
                trackingAuthEntryPoint2 = trackingAuthEntryPoint3;
                trackingAuthOrigin2 = trackingAuthOrigin3;
                Result.Companion companion5 = Result.INSTANCE;
                failure = new Result.Failure(th);
                trackingAuthOrigin3 = trackingAuthOrigin2;
                trackingAuthEntryPoint3 = trackingAuthEntryPoint2;
            }
        }
        failure = new Result((GetCredentialResponse) obj);
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        failure2 = ((Result) failure).f71708b;
        if (!(failure2 instanceof Result.Failure)) {
            Object objB2 = b(((GetCredentialResponse) failure2).f12390a, strA, str, trackingAuthOrigin3, trackingAuthEntryPoint3);
            ResultKt.b(objB2);
            failure2 = (SocialLoginUiModel) objB2;
        }
        thA2 = Result.a(failure2);
        if (thA2 == null) {
            return new GoogleCredentialResult.Success((SocialLoginUiModel) failure2);
        }
        if (thA2 instanceof GetCredentialCancellationException) {
            failure3 = GoogleCredentialResult.Cancelled.f53407a;
        } else if (thA2 instanceof NoCredentialException) {
            failure3 = GoogleCredentialResult.NoAccountFound.f53409a;
        } else {
            message = thA2.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            failure3 = new GoogleCredentialResult.Failure(message);
        }
        return failure3;
    }
}
