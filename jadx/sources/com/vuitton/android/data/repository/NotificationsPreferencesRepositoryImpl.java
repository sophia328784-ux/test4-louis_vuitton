package com.vuitton.android.data.repository;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.core.app.NotificationManagerCompat;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.repository.NotificationsPreferencesRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.notifications.Contactability;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import dagger.Lazy;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.json.Json;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB;\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/ConsentRepository;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsPreferencesRepositoryImpl implements NotificationsPreferencesRepository {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f47799f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f47802c;
    public final Json d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConsentRepository f47803e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "KEY_NOTIFICATIONS_REFERENCES", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f47799f = "NotificationsPreferencesRepositoryImpl";
    }

    @Inject
    public NotificationsPreferencesRepositoryImpl(Logger logger, @ApplicationContext Context context, Lazy<SharedPreferences> lazy, Json json, ConsentRepository consentRepository) {
        logger.getClass();
        context.getClass();
        lazy.getClass();
        json.getClass();
        consentRepository.getClass();
        this.f47800a = logger;
        this.f47801b = context;
        this.f47802c = lazy;
        this.d = json;
        this.f47803e = consentRepository;
    }

    @Override // com.vuitton.android.domain.repository.NotificationsPreferencesRepository
    public final void a(Map map) {
        try {
            Json json = this.d;
            json.getClass();
            String strC = json.c(new LinkedHashMapSerializer(NotificationPreferenceType.INSTANCE.serializer(), BooleanSerializer.f75574a), map);
            Object obj = this.f47802c.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putString("notifications_preferences", strC);
            editorEdit.apply();
        } catch (SerializationException e2) {
            a.y("Failed to serialize notification preferences: ", e2.getMessage(), this.f47800a, f47799f, null);
        }
    }

    @Override // com.vuitton.android.domain.repository.NotificationsPreferencesRepository
    public final Contactability b() throws Throwable {
        boolean zJ = this.f47803e.j();
        boolean zAreNotificationsEnabled = new NotificationManagerCompat(this.f47801b).f11955b.areNotificationsEnabled();
        Map mapC = c();
        List listP = CollectionsKt.P(NotificationPreferenceType.BRAND_COMMUNICATION, NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION, NotificationPreferenceType.NOTIFY_ME);
        boolean z = true;
        if (!(listP instanceof Collection) || !listP.isEmpty()) {
            Iterator it = listP.iterator();
            while (it.hasNext()) {
                if (!Intrinsics.c(mapC.get((NotificationPreferenceType) it.next()), Boolean.TRUE)) {
                    z = false;
                    break;
                }
            }
        }
        if (zJ && zAreNotificationsEnabled && z) {
            return Contactability.NO_ACTION_REQUIRED;
        }
        if (zJ && zAreNotificationsEnabled && !z) {
            return Contactability.PREFERENCE_CENTER;
        }
        if (zJ && !zAreNotificationsEnabled && z) {
            return Contactability.SYSTEM_NOTIFICATION;
        }
        if (!zJ || zAreNotificationsEnabled || z) {
            return (zJ || !zAreNotificationsEnabled || z) ? Contactability.EVERYTHING : Contactability.PERSONALIZATION;
        }
        return Contactability.PREFERENCE_CENTER_WITH_NOTIFICATION;
    }

    @Override // com.vuitton.android.domain.repository.NotificationsPreferencesRepository
    public final Map c() throws Throwable {
        Object failure;
        Object failure2;
        Object objB;
        Object objB2;
        Json json = this.d;
        try {
            String string = ((SharedPreferences) this.f47802c.get()).getString("notifications_preferences", null);
            if (string != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (StringsKt.w(string)) {
                        objB2 = null;
                    } else {
                        json.getClass();
                        objB2 = json.b(new LinkedHashMapSerializer(NotificationPreferenceType.INSTANCE.serializer(), BooleanSerializer.f75574a), string);
                    }
                    failure = new Result(objB2);
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
                Object obj = ((Result) failure).f71708b;
                if (obj instanceof Result.Failure) {
                    obj = null;
                }
                Map map = (Map) obj;
                if (map == null) {
                    try {
                        if (StringsKt.w(string)) {
                            objB = null;
                        } else {
                            json.getClass();
                            objB = json.b(new LinkedHashMapSerializer(NotificationPreferenceType.INSTANCE.serializer(), BuiltinSerializersKt.d(BooleanSerializer.f75574a)), string);
                        }
                        failure2 = new Result(objB);
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        failure2 = new Result.Failure(th2);
                    }
                    Throwable thA2 = Result.a(failure2);
                    if (thA2 != null) {
                        if (thA2 instanceof CancellationException) {
                            throw thA2;
                        }
                        failure2 = new Result(new Result.Failure(thA2));
                    }
                    Object obj2 = ((Result) failure2).f71708b;
                    if (obj2 instanceof Result.Failure) {
                        obj2 = null;
                    }
                    Map map2 = (Map) obj2;
                    if (map2 != null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map2.size()));
                        for (Object obj3 : map2.entrySet()) {
                            Object key = ((Map.Entry) obj3).getKey();
                            Boolean bool = (Boolean) ((Map.Entry) obj3).getValue();
                            linkedHashMap.put(key, Boolean.valueOf(bool != null ? bool.booleanValue() : false));
                        }
                        map = linkedHashMap;
                    } else {
                        map = null;
                    }
                }
                if (map != null) {
                    return map;
                }
            }
            return MapsKt.c();
        } catch (SerializationException e2) {
            this.f47800a.c(f47799f, e2.toString(), null);
            return MapsKt.c();
        }
    }

    @Override // com.vuitton.android.domain.repository.NotificationsPreferencesRepository
    public final void d() {
        Object obj = this.f47802c.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.remove("notifications_preferences");
        editorEdit.apply();
    }
}
