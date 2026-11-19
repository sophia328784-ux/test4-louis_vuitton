package defpackage;

import com.google.firebase.inject.Provider;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ln implements Provider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76061a;

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        switch (this.f76061a) {
            case 0:
                return Collections.EMPTY_SET;
            default:
                return null;
        }
    }
}
