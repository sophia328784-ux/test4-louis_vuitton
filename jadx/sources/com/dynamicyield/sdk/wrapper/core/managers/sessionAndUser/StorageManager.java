package com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser;

import android.content.Context;
import android.content.SharedPreferences;
import com.dynamicyield.sdk.wrapper.core.managers.logging.LoggingUtils;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StorageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DYLogger f25999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f26000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f26001c;
    public Long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f26002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f26003f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager$Companion;", "", "", "DYID_PREFS_NAME", "Ljava/lang/String;", "SESSION_PREFS_NAME", "EXPIRATION_SUFFIX", "", "HALF_HOUR", "J", "YEAR", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public StorageManager(Context context) {
        String string;
        DYLogger dYLogger = new DYLogger("StorageManager", LogLevel.DEBUG);
        this.f25999a = dYLogger;
        SharedPreferences sharedPreferences = context != null ? context.getSharedPreferences("dy-preference", 0) : null;
        this.f26000b = sharedPreferences;
        Set set = LoggingUtils.f25921a;
        dYLogger.a("StorageManager".concat(" initialized"), null);
        if (sharedPreferences != null) {
            try {
                string = sharedPreferences.getString("dyid", "");
            } catch (Exception e2) {
                this.f25999a.a(e2.toString(), LogLevel.ERROR);
                return;
            }
        } else {
            string = null;
        }
        this.f26001c = string;
        this.d = sharedPreferences != null ? Long.valueOf(sharedPreferences.getLong("dyid_expiration", 0L)) : null;
        this.f26002e = sharedPreferences != null ? sharedPreferences.getString("session", "") : null;
        this.f26003f = sharedPreferences != null ? Long.valueOf(sharedPreferences.getLong("session_expiration", 0L)) : null;
    }

    public final String a() {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences.Editor editorRemove2;
        LogLevel logLevel = LogLevel.VERBOSE;
        DYLogger dYLogger = this.f25999a;
        dYLogger.a("getUserId", logLevel);
        Long l = this.d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        dYLogger.a("isDataExpired", logLevel);
        if (l == null || l.longValue() <= jCurrentTimeMillis) {
            SharedPreferences sharedPreferences = this.f26000b;
            if (sharedPreferences != null && (editorEdit = sharedPreferences.edit()) != null && (editorRemove = editorEdit.remove("dyid")) != null && (editorRemove2 = editorRemove.remove("dyid_expiration")) != null) {
                editorRemove2.apply();
            }
            this.f26001c = null;
            this.d = null;
        }
        String str = this.f26001c;
        return str == null ? "" : str;
    }
}
