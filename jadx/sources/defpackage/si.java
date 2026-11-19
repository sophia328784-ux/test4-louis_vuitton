package defpackage;

import android.content.Context;
import androidx.camera.camera2.internal.Camera2UseCaseConfigFactory;
import androidx.camera.core.impl.UseCaseConfigFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class si implements UseCaseConfigFactory.Provider {
    @Override // androidx.camera.core.impl.UseCaseConfigFactory.Provider
    public final Camera2UseCaseConfigFactory a(Context context) {
        return new Camera2UseCaseConfigFactory(context);
    }
}
