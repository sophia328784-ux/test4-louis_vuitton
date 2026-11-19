package com.vuitton.android.data.exception;

import com.google.android.libraries.identity.googleid.GoogleIdTokenParsingException;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/exception/GoogleSignInParsingException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "message", "", "cause", "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException;", "<init>", "(Ljava/lang/String;Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GoogleSignInParsingException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleSignInParsingException(String str, GoogleIdTokenParsingException googleIdTokenParsingException) {
        super(str, googleIdTokenParsingException);
        str.getClass();
        googleIdTokenParsingException.getClass();
    }
}
