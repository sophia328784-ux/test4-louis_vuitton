package com.vuitton.android.data.datasource.consents;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import dagger.Lazy;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;", "", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserConsentsLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f44054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f44055b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource$Companion;", "", "", "USER_CONSENT_SHARED_PREF_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public UserConsentsLocalDataSource(Lazy<SharedPreferences> lazy, Json json) {
        lazy.getClass();
        json.getClass();
        this.f44054a = lazy;
        this.f44055b = json;
    }

    public final Result a() throws Throwable {
        Object failure;
        String string = ((SharedPreferences) this.f44054a.get()).getString("USER_CONSENT", null);
        if (string == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new Result((UserConsents) this.f44055b.b(UserConsents.INSTANCE.serializer(), string));
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
        return new Result(((Result) failure).f71708b);
    }

    public final void b(UserConsents userConsents) {
        KisaConsents kisaConsents;
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        Boolean bool5;
        Boolean bool6;
        Boolean bool7;
        userConsents.getClass();
        Lazy lazy = this.f44054a;
        MarketingConsents marketingConsents = null;
        String string = ((SharedPreferences) lazy.get()).getString("USER_CONSENT", null);
        Json json = this.f44055b;
        UserConsents userConsents2 = string != null ? (UserConsents) json.b(UserConsents.INSTANCE.serializer(), string) : null;
        if (userConsents2 == null) {
            Object obj = lazy.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putString("USER_CONSENT", json.c(UserConsents.INSTANCE.serializer(), userConsents));
            editorEdit.apply();
            return;
        }
        MarketingConsents marketingConsents2 = userConsents2.f66293b;
        KisaConsents kisaConsents2 = userConsents2.f66292a;
        KisaConsents kisaConsents3 = userConsents.f66292a;
        if (kisaConsents3 != null) {
            Boolean bool8 = kisaConsents3.f66268a;
            if (bool8 == null) {
                bool8 = kisaConsents2 != null ? kisaConsents2.f66268a : null;
            }
            Boolean bool9 = kisaConsents3.f66269b;
            if (bool9 == null) {
                bool9 = kisaConsents2 != null ? kisaConsents2.f66269b : null;
            }
            Boolean bool10 = kisaConsents3.f66270c;
            if (bool10 == null) {
                bool10 = kisaConsents2 != null ? kisaConsents2.f66270c : null;
            }
            Boolean bool11 = kisaConsents3.d;
            if (bool11 == null) {
                bool11 = kisaConsents2 != null ? kisaConsents2.d : null;
            }
            Boolean bool12 = kisaConsents3.f66271e;
            if (bool12 == null) {
                bool12 = kisaConsents2 != null ? kisaConsents2.f66271e : null;
            }
            Boolean bool13 = kisaConsents3.f66272f;
            if (bool13 == null) {
                bool13 = kisaConsents2 != null ? kisaConsents2.f66272f : null;
            }
            Boolean bool14 = kisaConsents3.g;
            if (bool14 == null) {
                bool14 = kisaConsents2 != null ? kisaConsents2.g : null;
            }
            Boolean bool15 = kisaConsents3.f66273h;
            if (bool15 != null) {
                bool7 = bool15;
            } else if (kisaConsents2 != null) {
                bool15 = kisaConsents2.f66273h;
                bool7 = bool15;
            } else {
                bool7 = null;
            }
            kisaConsents = new KisaConsents(bool8, bool9, bool10, bool11, bool12, bool13, bool14, bool7);
        } else {
            kisaConsents = null;
        }
        MarketingConsents marketingConsents3 = userConsents.f66293b;
        if (marketingConsents3 != null) {
            Boolean bool16 = marketingConsents3.f66281a;
            if (bool16 != null) {
                bool = bool16;
            } else if (marketingConsents2 != null) {
                bool16 = marketingConsents2.f66281a;
                bool = bool16;
            } else {
                bool = null;
            }
            Boolean bool17 = marketingConsents3.f66282b;
            if (bool17 != null) {
                bool2 = bool17;
            } else if (marketingConsents2 != null) {
                bool17 = marketingConsents2.f66282b;
                bool2 = bool17;
            } else {
                bool2 = null;
            }
            Boolean bool18 = marketingConsents3.f66283c;
            if (bool18 != null) {
                bool3 = bool18;
            } else if (marketingConsents2 != null) {
                bool18 = marketingConsents2.f66283c;
                bool3 = bool18;
            } else {
                bool3 = null;
            }
            Boolean bool19 = marketingConsents3.d;
            if (bool19 != null) {
                bool4 = bool19;
            } else if (marketingConsents2 != null) {
                bool19 = marketingConsents2.d;
                bool4 = bool19;
            } else {
                bool4 = null;
            }
            Boolean bool20 = marketingConsents3.f66284e;
            if (bool20 != null) {
                bool5 = bool20;
            } else if (marketingConsents2 != null) {
                bool20 = marketingConsents2.f66284e;
                bool5 = bool20;
            } else {
                bool5 = null;
            }
            Boolean bool21 = marketingConsents3.f66285f;
            if (bool21 == null) {
                bool6 = marketingConsents2 != null ? marketingConsents2.f66285f : null;
            } else {
                bool6 = bool21;
            }
            marketingConsents = new MarketingConsents(bool, bool2, bool3, bool4, bool5, bool6, (Boolean) null, 64, (DefaultConstructorMarker) null);
        }
        UserConsents userConsents3 = new UserConsents(kisaConsents, marketingConsents);
        Object obj2 = lazy.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit2 = ((SharedPreferences) obj2).edit();
        editorEdit2.putString("USER_CONSENT", json.c(UserConsents.INSTANCE.serializer(), userConsents3));
        editorEdit2.apply();
    }
}
