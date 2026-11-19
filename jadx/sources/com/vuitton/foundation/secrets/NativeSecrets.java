package com.vuitton.foundation.secrets;

import com.batch.android.s.b;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087 ¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/secrets/NativeSecrets;", "", "", b.a.f24015b, "", "nativeGetSecret", "(I)[B", "secrets"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NativeSecrets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f68294a = 0;

    static {
        System.loadLibrary("secrets");
    }

    @JvmStatic
    public static final native byte[] nativeGetSecret(int id);
}
