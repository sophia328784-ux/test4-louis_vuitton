package dagger.hilt.android.internal.modules;

import android.app.Application;
import dagger.hilt.android.internal.Contexts;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ApplicationContextModule_ProvideApplicationFactory implements Factory<Application> {
    public static Application a(ApplicationContextModule applicationContextModule) {
        return Contexts.a(applicationContextModule.f68523a);
    }
}
