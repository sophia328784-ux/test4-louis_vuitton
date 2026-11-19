package com.vuitton.android.presentation.ar;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/ar/ArException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "InvalidDisplayRotationError", "Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ArException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50550b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;", "Lcom/vuitton/android/presentation/ar/ArException;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidDisplayRotationError extends ArException {
        public InvalidDisplayRotationError() {
            super("Invalid Display Rotation", null);
        }
    }

    public ArException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f50550b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f50550b;
    }
}
