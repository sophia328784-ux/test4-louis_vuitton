package com.sightcall.capabilities.di;

import android.content.Context;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.capabilities.CapabilitiesRepositoryImpl;
import com.sightcall.capabilities.datasource.rtcc.RtccDatasource;
import com.sightcall.capabilities.datasource.rtcc.RtccDatasourceImpl;
import com.sightcall.pratik.InstantAppWrapper;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/sightcall/capabilities/di/CapabilitiesModule;", "", "<init>", "()V", "provideRtccDatasource", "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;", "rtccDatasourceImpl", "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;", "provideRtccDatasource$capabilities_release", "Companion", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class CapabilitiesModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract RtccDatasource provideRtccDatasource$capabilities_release(RtccDatasourceImpl rtccDatasourceImpl);

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;", "", "<init>", "()V", "provideCapabilitiesRepositories", "Lcom/sightcall/capabilities/CapabilitiesRepository;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "rtccDatasource", "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;", "provideCapabilitiesRepositories$capabilities_release", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Provides
        @CapabilitiesScope
        public final CapabilitiesRepository provideCapabilitiesRepositories$capabilities_release(Context context, RtccDatasource rtccDatasource) {
            context.getClass();
            rtccDatasource.getClass();
            return new CapabilitiesRepositoryImpl(InstantAppWrapper.isInstantApp(context), rtccDatasource);
        }

        private Companion() {
        }
    }
}
