package com.dynatrace.agent.lifecycle;

import android.content.Context;
import android.content.SharedPreferences;
import com.dynatrace.android.agent.util.Utility;
import defpackage.je;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\n¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/lifecycle/NewUserCheckerImpl;", "Lcom/dynatrace/agent/lifecycle/NewUserChecker;", "Landroid/content/SharedPreferences;", "prefs", "Lkotlin/Function0;", "legacyPrefsProvider", "<init>", "(Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "(Landroid/content/Context;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NewUserCheckerImpl implements NewUserChecker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f26835c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f26836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f26837b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/lifecycle/NewUserCheckerImpl$Companion;", "", "", "NEW_USER_PREFS", "Ljava/lang/String;", "KEY_IS_NEW_USER", "LEGACY_SHARED_PREFERENCES", "LEGACY_KEY_NEW_VISITOR_SENT", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NewUserCheckerImpl(Context context) {
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences("dynatrace-new-user", 0);
        sharedPreferences.getClass();
        this(sharedPreferences, new je(context, 15));
    }

    @Override // com.dynatrace.agent.lifecycle.NewUserChecker
    public final boolean a() {
        SharedPreferences sharedPreferences = this.f26836a;
        if (sharedPreferences.contains("is_new_user")) {
            Utility.b("new user check: existing user (flag already set)");
            return false;
        }
        SharedPreferences sharedPreferences2 = (SharedPreferences) this.f26837b.mo47invoke();
        boolean z = true;
        if (sharedPreferences2.contains("DTXNewVisitorSent") && sharedPreferences2.getBoolean("DTXNewVisitorSent", true)) {
            z = false;
        }
        sharedPreferences.edit().putBoolean("is_new_user", false).apply();
        Utility.b("new user check: isNewUser=" + z + " (legacy DTXNewVisitorSent exists=" + sharedPreferences2.contains("DTXNewVisitorSent") + ')');
        return z;
    }

    public NewUserCheckerImpl(SharedPreferences sharedPreferences, Function0<? extends SharedPreferences> function0) {
        sharedPreferences.getClass();
        function0.getClass();
        this.f26836a = sharedPreferences;
        this.f26837b = function0;
    }
}
