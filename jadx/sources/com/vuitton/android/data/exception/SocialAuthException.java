package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/exception/SocialAuthException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "RegistrationNeeded", "UnknownError", "Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;", "Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SocialAuthException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46968b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;", "Lcom/vuitton/android/data/exception/SocialAuthException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RegistrationNeeded extends SocialAuthException {
        public RegistrationNeeded(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;", "Lcom/vuitton/android/data/exception/SocialAuthException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UnknownError extends SocialAuthException {
        public UnknownError(String str) {
            super(str, null);
        }
    }

    public SocialAuthException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f46968b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f46968b;
    }
}
