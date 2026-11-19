package defpackage;

import androidx.credentials.CredentialManagerCallback;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f69769c;
    public final /* synthetic */ Ref$ObjectRef d;

    public /* synthetic */ hr(CredentialManagerCallback credentialManagerCallback, Ref$ObjectRef ref$ObjectRef, int i2) {
        this.f69768b = i2;
        this.f69769c = credentialManagerCallback;
        this.d = ref$ObjectRef;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69768b;
        Ref$ObjectRef ref$ObjectRef = this.d;
        CredentialManagerCallback credentialManagerCallback = this.f69769c;
        switch (i2) {
            case 0:
                credentialManagerCallback.a(ref$ObjectRef.f71921b);
                break;
            case 1:
                credentialManagerCallback.a(ref$ObjectRef.f71921b);
                break;
            default:
                credentialManagerCallback.a(ref$ObjectRef.f71921b);
                break;
        }
    }
}
