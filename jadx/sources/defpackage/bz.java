package defpackage;

import com.google.firebase.installations.FirebaseInstallations;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bz implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FirebaseInstallations f20995c;

    public /* synthetic */ bz(FirebaseInstallations firebaseInstallations, int i2) {
        this.f20994b = i2;
        this.f20995c = firebaseInstallations;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f20994b;
        FirebaseInstallations firebaseInstallations = this.f20995c;
        switch (i2) {
            case 0:
                Object obj = FirebaseInstallations.m;
                firebaseInstallations.c();
                break;
            default:
                Object obj2 = FirebaseInstallations.m;
                firebaseInstallations.c();
                break;
        }
    }
}
