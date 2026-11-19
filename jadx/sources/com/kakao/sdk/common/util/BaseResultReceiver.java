package com.kakao.sdk.common.util;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.model.KakaoSdkError;
import defpackage.pq0;
import defpackage.r81;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u0004\b\u0001\u0010\u00032\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/common/util/BaseResultReceiver;", "", "T", "E", "Landroid/os/ResultReceiver;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class BaseResultReceiver<T, E> extends ResultReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Lambda f35877c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseResultReceiver(String str) {
        super(new Handler(Looper.getMainLooper()));
        str.getClass();
        this.f35876b = str;
    }

    public abstract boolean a(Uri uri);

    public abstract void b(Throwable th);

    public abstract void c(Object obj);

    public abstract Throwable d(Uri uri);

    public abstract Object e(Uri uri);

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i2, Bundle bundle) {
        KakaoSdkError kakaoSdkError;
        bundle.getClass();
        SdkLog.Companion companion = SdkLog.d;
        String str = "***** " + this.f35876b + " Status: " + bundle;
        companion.getClass();
        SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), str, SdkLogLevel.D);
        if (i2 == -1) {
            Uri uri = Build.VERSION.SDK_INT >= 33 ? (Uri) bundle.getParcelable("key.url", Uri.class) : (Uri) bundle.getParcelable("key.url");
            if (uri == null) {
                r81.b();
                return;
            } else if (a(uri)) {
                b(d(uri));
            } else {
                Object objE = e(uri);
                if (objE == null) {
                    b(new ClientError(ClientErrorCause.Unknown, pq0.l(uri, "Failed to parse response\n")));
                } else {
                    c(objE);
                }
            }
        } else if (i2 != 0) {
            b(new IllegalStateException("Unknown resultCode in " + getClass().getSimpleName() + "#onReceivedResult()"));
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                kakaoSdkError = (KakaoSdkError) bundle.getSerializable("key.exception", KakaoSdkError.class);
            } else {
                Serializable serializable = bundle.getSerializable("key.exception");
                serializable.getClass();
                kakaoSdkError = (KakaoSdkError) serializable;
            }
            if (kakaoSdkError != null) {
                b(kakaoSdkError);
            }
        }
        this.f35877c = null;
    }
}
