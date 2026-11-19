package com.linecorp.linesdk.internal.security.encryption;

import android.util.Base64;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
final class CipherData$encodeToBase64String$1 extends Lambda implements Function1<byte[], CharSequence> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CipherData$encodeToBase64String$1 f36251c = new CipherData$encodeToBase64String$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        String strEncodeToString = Base64.encodeToString(bArr, 2);
        strEncodeToString.getClass();
        return strEncodeToString;
    }
}
