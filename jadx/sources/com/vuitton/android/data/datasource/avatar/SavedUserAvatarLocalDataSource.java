package com.vuitton.android.data.datasource.avatar;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.avatar.SavedUserAvatar;
import dagger.Lazy;
import defpackage.nj0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;", "", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SavedUserAvatarLocalDataSource {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f43864c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f43865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f43866b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource$Companion;", "", "", "SAVED_AVATARS_SHARED_PREF_KEY", "Ljava/lang/String;", "", "MAX_USERS_WITH_SAVED_AVATARS", "I", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SavedUserAvatarLocalDataSource(Lazy<SharedPreferences> lazy, Json json) {
        lazy.getClass();
        json.getClass();
        this.f43865a = lazy;
        this.f43866b = json;
    }

    public final Object a() throws Throwable {
        Object failure;
        Object obj;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) this.f43865a.get()).getString("SAVED_USER_AVATARS", null);
            if (string == null || string.length() == 0) {
                obj = EmptyList.f71768b;
            } else {
                Json json = this.f43866b;
                json.getClass();
                obj = (List) json.b(new ArrayListSerializer(SavedUserAvatar.INSTANCE.serializer()), string);
            }
            failure = new Result(obj);
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

    public final void b(String str, String str2) throws Throwable {
        Object failure;
        str.getClass();
        str2.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objA = a();
            if (Result.a(objA) != null) {
                objA = EmptyList.f71768b;
            }
            ArrayList arrayListZ0 = CollectionsKt.z0((Collection) objA);
            SavedUserAvatar savedUserAvatar = new SavedUserAvatar(str, str2, 0L, 4, (DefaultConstructorMarker) null);
            CollectionsKt.a0(arrayListZ0, new nj0(str, 16));
            c(arrayListZ0.size() >= 3 ? CollectionsKt.X(savedUserAvatar, CollectionsKt.q0(CollectionsKt.o0(arrayListZ0, new Comparator() { // from class: com.vuitton.android.data.datasource.avatar.SavedUserAvatarLocalDataSource$saveAvatarForUser_gIAlu_s$lambda$0$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.valueOf(((SavedUserAvatar) obj2).f66673c).compareTo(Long.valueOf(((SavedUserAvatar) obj).f66673c));
                }
            }), 2)) : CollectionsKt.X(savedUserAvatar, arrayListZ0));
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
    }

    public final void c(ArrayList arrayList) throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object obj = this.f43865a.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            Json json = this.f43866b;
            json.getClass();
            editorEdit.putString("SAVED_USER_AVATARS", json.c(new ArrayListSerializer(SavedUserAvatar.INSTANCE.serializer()), arrayList));
            editorEdit.apply();
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
    }
}
