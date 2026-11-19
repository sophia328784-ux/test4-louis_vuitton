package com.linecorp.linesdk.internal.security.encryption;

import android.util.Base64;
import defpackage.b21;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/linecorp/linesdk/internal/security/encryption/CipherData;", "", "", "encryptedData", "initialVector", "hmacValue", "<init>", "([B[B[B)V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CipherData {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f36248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f36249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f36250c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;", "", "", "SEPARATOR", "Ljava/lang/String;", "", "SIZE_DATA_TYPES", "I", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static CipherData a(String str) {
            str.getClass();
            List listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{";"}, false, 0, 6, null);
            if (listSplit$default.size() != 3) {
                b21.n(d21.d('`', "Failed to split encrypted text `", str));
                return null;
            }
            byte[] bArrDecode = Base64.decode((String) listSplit$default.get(0), 2);
            bArrDecode.getClass();
            byte[] bArrDecode2 = Base64.decode((String) listSplit$default.get(1), 2);
            bArrDecode2.getClass();
            byte[] bArrDecode3 = Base64.decode((String) listSplit$default.get(2), 2);
            bArrDecode3.getClass();
            return new CipherData(bArrDecode, bArrDecode2, bArrDecode3);
        }
    }

    public CipherData(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        bArr.getClass();
        bArr2.getClass();
        bArr3.getClass();
        this.f36248a = bArr;
        this.f36249b = bArr2;
        this.f36250c = bArr3;
    }

    public final String a() {
        return CollectionsKt.K(CollectionsKt.P(this.f36248a, this.f36249b, this.f36250c), ";", null, null, CipherData$encodeToBase64String$1.f36251c, 30);
    }
}
