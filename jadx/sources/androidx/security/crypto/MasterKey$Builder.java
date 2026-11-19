package androidx.security.crypto;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import defpackage.az;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class MasterKey$Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KeyGenParameterSpec f19867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MasterKey$KeyScheme f19868c;

    public MasterKey$Builder(Context context, String str) {
        context.getApplicationContext();
        this.f19866a = str;
    }

    public final void a(MasterKey$KeyScheme masterKey$KeyScheme) {
        if (MasterKey$1.f19865a[masterKey$KeyScheme.ordinal()] != 1) {
            az.m(masterKey$KeyScheme, "Unsupported scheme: ");
        } else if (this.f19867b == null) {
            this.f19868c = masterKey$KeyScheme;
        } else {
            md.n("KeyScheme set after setting a KeyGenParamSpec");
        }
    }

    public MasterKey$Builder(Context context) {
        this(context, "_androidx_security_master_key_");
    }
}
