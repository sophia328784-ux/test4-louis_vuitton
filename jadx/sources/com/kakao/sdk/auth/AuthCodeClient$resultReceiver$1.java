package com.kakao.sdk.auth;

import android.net.Uri;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "uri", "Landroid/net/Uri;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
final class AuthCodeClient$resultReceiver$1 extends Lambda implements Function1<Uri, String> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AuthCodeClient$resultReceiver$1 f35827c = new AuthCodeClient$resultReceiver$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Uri uri = (Uri) obj;
        uri.getClass();
        return uri.getQueryParameter(m.v);
    }
}
