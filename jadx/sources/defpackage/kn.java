package defpackage;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kn implements Provider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentRegistrar f71687b;

    public /* synthetic */ kn(ComponentRegistrar componentRegistrar, int i2) {
        this.f71686a = i2;
        this.f71687b = componentRegistrar;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        int i2 = this.f71686a;
        return this.f71687b;
    }
}
