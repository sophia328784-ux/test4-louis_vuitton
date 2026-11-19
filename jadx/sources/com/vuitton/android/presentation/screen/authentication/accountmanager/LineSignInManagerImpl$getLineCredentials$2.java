package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Intent;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.Scope;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import com.linecorp.linesdk.auth.internal.LineAuthenticationActivity;
import com.linecorp.linesdk.internal.EncryptorHolder;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.md;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl$getLineCredentials$2", f = "LineSignInManager.kt", l = {162}, m = "invokeSuspend", v = 2)
final class LineSignInManagerImpl$getLineCredentials$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super LineCredentialResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LineSignInManagerImpl f53440c;
    public final /* synthetic */ ComponentActivity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthOrigin f53441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthEntryPoint f53442f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LineSignInManagerImpl$getLineCredentials$2(LineSignInManagerImpl lineSignInManagerImpl, ComponentActivity componentActivity, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, Continuation continuation) {
        super(2, continuation);
        this.f53440c = lineSignInManagerImpl;
        this.d = componentActivity;
        this.f53441e = trackingAuthOrigin;
        this.f53442f = trackingAuthEntryPoint;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LineSignInManagerImpl$getLineCredentials$2(this.f53440c, this.d, this.f53441e, this.f53442f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LineSignInManagerImpl$getLineCredentials$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53439b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f53439b = 1;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(this), 1);
        cancellableContinuationImpl.initCancellability();
        final String strA = NonceUtilsKt.a();
        final String strB = NonceUtilsKt.b(strA);
        final LineSignInManagerImpl lineSignInManagerImpl = this.f53440c;
        String strH = lineSignInManagerImpl.f53437a.h();
        LineAuthenticationParams.Builder builder = new LineAuthenticationParams.Builder();
        builder.f36126a = CollectionsKt.P(Scope.f36100c, Scope.d, Scope.f36101e);
        builder.f36127b = strB;
        LineAuthenticationParams lineAuthenticationParams = new LineAuthenticationParams(builder);
        ComponentActivity componentActivity = this.d;
        LineAuthenticationConfig lineAuthenticationConfig = new LineAuthenticationConfig(new LineAuthenticationConfig.Builder(strH, componentActivity));
        EncryptorHolder.a(componentActivity);
        int i3 = LineAuthenticationActivity.f36152e;
        Intent intent = new Intent(componentActivity, (Class<?>) LineAuthenticationActivity.class);
        intent.putExtra("authentication_config", lineAuthenticationConfig);
        intent.putExtra("authentication_params", lineAuthenticationParams);
        String str = "line_login_" + UUID.randomUUID();
        ActivityResultRegistry activityResultRegistry = componentActivity.getActivityResultRegistry();
        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
        final TrackingAuthOrigin trackingAuthOrigin = this.f53441e;
        final TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53442f;
        final ActivityResultRegistry$register$3 activityResultRegistry$register$3E = activityResultRegistry.e(str, activityResultContracts$StartActivityForResult, new ActivityResultCallback(lineSignInManagerImpl, strA, strB, trackingAuthOrigin, trackingAuthEntryPoint) { // from class: com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl$getLineCredentials$2$1$launcher$1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f53445c;
            public final /* synthetic */ String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TrackingAuthOrigin f53446e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ TrackingAuthEntryPoint f53447f;

            {
                this.f53445c = strA;
                this.d = strB;
                this.f53446e = trackingAuthOrigin;
                this.f53447f = trackingAuthEntryPoint;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj2) {
                Intent intent2;
                Object failure;
                String str2;
                ActivityResult activityResult = (ActivityResult) obj2;
                activityResult.getClass();
                int i4 = activityResult.f731b;
                CancellableContinuationImpl cancellableContinuationImpl2 = this.f53444b;
                if (i4 != -1 || (intent2 = activityResult.f732c) == null) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(new LineCredentialResult.Failure("Login cancelled or failed"));
                    return;
                }
                int i5 = LineAuthenticationActivity.f36152e;
                LineLoginResult lineLoginResultA = (LineLoginResult) intent2.getParcelableExtra("authentication_result");
                if (lineLoginResultA == null) {
                    lineLoginResultA = LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("Authentication result is not found."));
                }
                Result.Companion companion2 = Result.INSTANCE;
                int i6 = LineSignInManagerImpl.WhenMappings.f53438a[lineLoginResultA.f36128b.ordinal()];
                if (i6 != 1) {
                    failure = i6 != 2 ? new LineCredentialResult.Failure(lineLoginResultA.f36132h.f36061c) : LineCredentialResult.Cancelled.f53434a;
                } else {
                    LineIdToken lineIdToken = lineLoginResultA.f36130e;
                    if (lineIdToken == null || (str2 = lineIdToken.f36071b) == null) {
                        failure = new LineCredentialResult.Failure("Missing ID token");
                    } else {
                        String str3 = lineIdToken.n;
                        if (str3 == null) {
                            str3 = "";
                        }
                        failure = new LineCredentialResult.Success(new SocialLoginUiModel(str3, (String) null, (String) null, (String) null, this.f53445c, this.d, str2, (String) null, (String) null, this.f53446e, this.f53447f, SocialAuthMode.LINE, 398, (DefaultConstructorMarker) null));
                    }
                }
                cancellableContinuationImpl2.resumeWith(failure);
            }
        });
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl$getLineCredentials$2$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                activityResultRegistry$register$3E.b();
                return Unit.f71739a;
            }
        });
        activityResultRegistry$register$3E.a(intent);
        Object result = cancellableContinuationImpl.getResult();
        return result == coroutineSingletons ? coroutineSingletons : result;
    }
}
