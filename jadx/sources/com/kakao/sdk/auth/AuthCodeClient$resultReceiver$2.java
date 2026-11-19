package com.kakao.sdk.auth;

import android.net.Uri;
import com.kakao.sdk.common.model.AuthError;
import com.kakao.sdk.common.model.AuthErrorCause;
import com.kakao.sdk.common.model.AuthErrorResponse;
import com.kakao.sdk.common.util.KakaoJson;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "uri", "Landroid/net/Uri;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
final class AuthCodeClient$resultReceiver$2 extends Lambda implements Function1<Uri, Throwable> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object failure;
        Uri uri = (Uri) obj;
        uri.getClass();
        String queryParameter = uri.getQueryParameter("error");
        if (queryParameter == null) {
            queryParameter = "unknown";
        }
        String queryParameter2 = uri.getQueryParameter("error_description");
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = (AuthErrorCause) KakaoJson.f35885a.fromJson(queryParameter, (Type) AuthErrorCause.class);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Object obj2 = AuthErrorCause.Unknown;
        if (failure instanceof Result.Failure) {
            failure = obj2;
        }
        return new AuthError(302, (AuthErrorCause) failure, new AuthErrorResponse(queryParameter, queryParameter2));
    }
}
