package com.google.firebase.heartbeatinfo;

import android.content.Context;
import androidx.core.os.UserManagerCompat;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultHeartBeatController implements HeartBeatController, HeartBeatInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f35131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f35132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35133c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f35134e;

    public DefaultHeartBeatController(final Context context, final String str, Set set, Provider provider, Executor executor) {
        this.f35131a = new Lazy(new Provider() { // from class: com.google.firebase.heartbeatinfo.a
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return new HeartBeatInfoStorage(context, str);
            }
        });
        this.d = set;
        this.f35134e = executor;
        this.f35133c = provider;
        this.f35132b = context;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatController
    public final Task a() {
        return !UserManagerCompat.a(this.f35132b) ? Tasks.f("") : Tasks.c(new b(this, 0), this.f35134e);
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public final synchronized HeartBeatInfo.HeartBeat b() {
        boolean zE;
        long jCurrentTimeMillis = System.currentTimeMillis();
        final HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) this.f35131a.get();
        synchronized (heartBeatInfoStorage) {
            zE = heartBeatInfoStorage.e(HeartBeatInfoStorage.f35135b, jCurrentTimeMillis);
        }
        if (!zE) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        synchronized (heartBeatInfoStorage) {
            final String strB = HeartBeatInfoStorage.b(System.currentTimeMillis());
            heartBeatInfoStorage.f35137a.a(new Function1(heartBeatInfoStorage, strB) { // from class: com.google.firebase.heartbeatinfo.f

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ String f35145b;

                {
                    this.f35145b = strB;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MutablePreferences mutablePreferences = (MutablePreferences) obj;
                    Preferences.Key key = HeartBeatInfoStorage.d;
                    String str = this.f35145b;
                    mutablePreferences.e(key, str);
                    HeartBeatInfoStorage.d(mutablePreferences, str);
                    return null;
                }
            });
        }
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    public final void c() {
        if (this.d.size() <= 0) {
            Tasks.f(null);
        } else if (UserManagerCompat.a(this.f35132b)) {
            Tasks.c(new b(this, 1), this.f35134e);
        } else {
            Tasks.f(null);
        }
    }
}
