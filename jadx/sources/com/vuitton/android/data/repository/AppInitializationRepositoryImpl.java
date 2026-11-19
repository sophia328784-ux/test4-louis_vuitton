package com.vuitton.android.data.repository;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AppInitializationRepository;
import com.vuitton.android.domain.repository.AppInitializationStateHolder;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/AppInitializationRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppInitializationRepository;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppInitializationRepositoryImpl implements AppInitializationRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f47243a;

    @Inject
    public AppInitializationRepositoryImpl(@ApplicationContext Context context) {
        context.getClass();
        this.f47243a = context;
    }

    @Override // com.vuitton.android.domain.repository.AppInitializationRepository
    public final Object a() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object applicationContext = this.f47243a.getApplicationContext();
            applicationContext.getClass();
            ((AppInitializationStateHolder) applicationContext).a();
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
