package com.sightcall.session.di;

import com.sightcall.session.SessionRepository;
import com.sightcall.session.SessionRepositoryImpl;
import com.sightcall.session.datasource.reference.ReferenceDataSource;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3;
import com.sightcall.session.datasource.reference.v3.ReferenceDataSourceV3Impl;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH!¢\u0006\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/sightcall/session/di/SessionModule;", "", "<init>", "()V", "provideSessionRepository", "Lcom/sightcall/session/SessionRepository;", "sessionRepositoryImpl", "Lcom/sightcall/session/SessionRepositoryImpl;", "provideSessionRepository$session_release", "provideReferenceDataSource", "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;", "referenceDataSource", "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;", "provideReferenceDataSource$session_release", "Companion", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class SessionModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract ReferenceDataSource provideReferenceDataSource$session_release(ReferenceDataSourceV3Impl referenceDataSource);

    @Binds
    public abstract SessionRepository provideSessionRepository$session_release(SessionRepositoryImpl sessionRepositoryImpl);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/sightcall/session/di/SessionModule$Companion;", "", "<init>", "()V", "provideReferenceApiV3", "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;", "retrofit", "Lretrofit2/Retrofit;", "provideReferenceApiV3$session_release", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Provides
        public final ReferenceApiV3 provideReferenceApiV3$session_release(Retrofit retrofit) {
            retrofit.getClass();
            Object objB = retrofit.b(ReferenceApiV3.class);
            objB.getClass();
            return (ReferenceApiV3) objB;
        }

        private Companion() {
        }
    }
}
