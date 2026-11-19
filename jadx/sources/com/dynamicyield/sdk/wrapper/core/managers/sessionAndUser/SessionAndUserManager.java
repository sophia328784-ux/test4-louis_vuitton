package com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser;

import android.content.Context;
import android.content.SharedPreferences;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Session;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.User;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;", "", "Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;", "sessionAndUserManagerProvider", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "sharedDevice", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SessionAndUserManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionAndUserManagerProvider f25996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f25997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DYLogger f25998c;
    public final StorageManager d;

    public SessionAndUserManager(SessionAndUserManagerProvider sessionAndUserManagerProvider, Context context, Boolean bool) {
        sessionAndUserManagerProvider.getClass();
        this.f25996a = sessionAndUserManagerProvider;
        this.f25997b = bool;
        DYLogger dYLogger = new DYLogger("SessionAndUserManager", LogLevel.DEBUG);
        this.f25998c = dYLogger;
        StorageManager storageManager = new StorageManager(context);
        this.d = storageManager;
        dYLogger.a("Initializing SessionAndUserManager", null);
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.c(bool, bool2)) {
            if (storageManager.a().length() > 0) {
                dYLogger.a("Initialization SessionAndUserManager: User is on a shared device, removing the old DY ID since shared devices don't have a persistent DY ID user.", null);
                d();
                return;
            }
            return;
        }
        if (!sessionAndUserManagerProvider.a() || Intrinsics.c(sessionAndUserManagerProvider.b(), bool2)) {
            return;
        }
        dYLogger.a("Initialization SessionAndUserManager: User has not accepted the consent, resetting session and user data.", null);
        c();
        d();
    }

    public final Session a() {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences.Editor editorRemove2;
        StorageManager storageManager = this.d;
        DYLogger dYLogger = storageManager.f25999a;
        LogLevel logLevel = LogLevel.VERBOSE;
        dYLogger.a("getSessionId", logLevel);
        Long l = storageManager.f26003f;
        long jCurrentTimeMillis = System.currentTimeMillis();
        storageManager.f25999a.a("isDataExpired", logLevel);
        if (l == null || l.longValue() <= jCurrentTimeMillis) {
            SharedPreferences sharedPreferences = storageManager.f26000b;
            if (sharedPreferences != null && (editorEdit = sharedPreferences.edit()) != null && (editorRemove = editorEdit.remove("session")) != null && (editorRemove2 = editorRemove.remove("session_expiration")) != null) {
                editorRemove2.apply();
            }
            storageManager.f26002e = null;
            storageManager.f26003f = null;
        }
        String str = storageManager.f26002e;
        if (str == null) {
            str = "";
        }
        Session session = new Session(str);
        this.f25998c.a("getSession", null);
        return session;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    public final User b(String str, String str2) {
        Boolean boolValueOf;
        String strA = this.d.a();
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = this.f25997b;
        if (Intrinsics.c(bool2, bool)) {
            boolValueOf = null;
        } else {
            SessionAndUserManagerProvider sessionAndUserManagerProvider = this.f25996a;
            if (sessionAndUserManagerProvider.a()) {
                Boolean boolB = sessionAndUserManagerProvider.b();
                boolValueOf = Boolean.valueOf(boolB != null ? boolB.booleanValue() : false);
            } else {
                boolValueOf = null;
            }
        }
        User user = new User(strA, bool2, str, str2, boolValueOf);
        this.f25998c.a("getUser", null);
        return user;
    }

    public final void c() {
        this.f25998c.a("resetSessionId: Reset the SessionId", null);
        StorageManager storageManager = this.d;
        SharedPreferences sharedPreferences = storageManager.f26000b;
        SharedPreferences.Editor editorEdit = sharedPreferences != null ? sharedPreferences.edit() : null;
        if (editorEdit == null) {
            return;
        }
        editorEdit.remove("session_expiration");
        editorEdit.remove("session");
        editorEdit.apply();
        storageManager.f26002e = null;
        storageManager.f26003f = null;
        storageManager.f25999a.a("current sessionId:" + storageManager.f26002e, null);
    }

    public final void d() {
        this.f25998c.a("resetUserId: Reset the DyId", null);
        StorageManager storageManager = this.d;
        SharedPreferences sharedPreferences = storageManager.f26000b;
        SharedPreferences.Editor editorEdit = sharedPreferences != null ? sharedPreferences.edit() : null;
        if (editorEdit == null) {
            return;
        }
        editorEdit.remove("dyid_expiration");
        editorEdit.remove("dyid");
        editorEdit.apply();
        storageManager.f26001c = null;
        storageManager.d = null;
        storageManager.f25999a.a("current dyid:" + storageManager.f26001c, null);
    }

    public final void e(Boolean bool) {
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.c(this.f25997b, bool2)) {
            return;
        }
        DYLogger dYLogger = this.f25998c;
        dYLogger.a("updateActiveConsentAccepted: Changing activeConsentAccepted to: " + bool, null);
        if (!this.f25996a.a() || Intrinsics.c(bool, bool2)) {
            return;
        }
        dYLogger.a("updateActiveConsentAccepted: User has not accepted the consent, resetting session and user data.", null);
        c();
        d();
    }

    public /* synthetic */ SessionAndUserManager(SessionAndUserManagerProvider sessionAndUserManagerProvider, Context context, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionAndUserManagerProvider, context, (i2 & 4) != 0 ? null : bool);
    }
}
