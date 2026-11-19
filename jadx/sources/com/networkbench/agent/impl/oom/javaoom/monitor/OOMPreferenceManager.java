package com.networkbench.agent.impl.oom.javaoom.monitor;

import android.content.SharedPreferences;
import com.networkbench.agent.impl.base.MonitorBuildConfig;
import com.networkbench.agent.impl.base.Monitor_SharedPreferencesKt;
import defpackage.fc;
import defpackage.n00;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u000fJ\u001a\u0010\u0018\u001a\u00020\u000f2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u000e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;", "", "()V", "PREFERENCE_NAME", "", "mPreferences", "Landroid/content/SharedPreferences;", "getMPreferences", "()Landroid/content/SharedPreferences;", "mPreferences$delegate", "Lkotlin/Lazy;", "mPrefix", "mSharedPreferencesInvoker", "Lkotlin/Function1;", "clearUnusedPreference", "", "preferences", "editor", "Landroid/content/SharedPreferences$Editor;", "getAnalysisTimes", "", "getFirstLaunchTime", "", "increaseAnalysisTimes", "init", "sharedPreferencesInvoker", "setFirstLaunchTime", "time", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class OOMPreferenceManager {
    private static final String PREFERENCE_NAME = "koom_hprof_analysis";
    private static String mPrefix;
    private static Function1<? super String, ? extends SharedPreferences> mSharedPreferencesInvoker;
    public static final OOMPreferenceManager INSTANCE = new OOMPreferenceManager();

    /* JADX INFO: renamed from: mPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy mPreferences = LazyKt.b(new Function0<SharedPreferences>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMPreferenceManager$mPreferences$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final SharedPreferences mo47invoke() {
            return (SharedPreferences) OOMPreferenceManager.access$getMSharedPreferencesInvoker$p(OOMPreferenceManager.INSTANCE).invoke("koom_hprof_analysis");
        }
    });

    private OOMPreferenceManager() {
    }

    public static final /* synthetic */ Function1 access$getMSharedPreferencesInvoker$p(OOMPreferenceManager oOMPreferenceManager) {
        Function1<? super String, ? extends SharedPreferences> function1 = mSharedPreferencesInvoker;
        if (function1 != null) {
            return function1;
        }
        Intrinsics.h("mSharedPreferencesInvoker");
        throw null;
    }

    private final void clearUnusedPreference(SharedPreferences preferences, SharedPreferences.Editor editor) {
        for (String str : Monitor_SharedPreferencesKt.getAllKeys(preferences)) {
            String str2 = mPrefix;
            if (str2 == null) {
                Intrinsics.h("mPrefix");
                throw null;
            }
            if (!StringsKt.P(str, str2, false)) {
                editor.remove(str);
            }
        }
    }

    private final SharedPreferences getMPreferences() {
        return (SharedPreferences) mPreferences.getF71699b();
    }

    public final int getAnalysisTimes() {
        SharedPreferences mPreferences2 = getMPreferences();
        StringBuilder sb = new StringBuilder();
        String str = mPrefix;
        if (str == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        sb.append(str);
        sb.append("times");
        return mPreferences2.getInt(sb.toString(), 0);
    }

    public final long getFirstLaunchTime() {
        SharedPreferences mPreferences2 = getMPreferences();
        StringBuilder sb = new StringBuilder();
        String str = mPrefix;
        if (str == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        long j2 = mPreferences2.getLong(n00.r(str, "first_analysis_time", sb), 0L);
        if (j2 != 0) {
            return j2;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        setFirstLaunchTime(jCurrentTimeMillis);
        return jCurrentTimeMillis;
    }

    public final void increaseAnalysisTimes() {
        SharedPreferences.Editor editorEdit = getMPreferences().edit();
        OOMPreferenceManager oOMPreferenceManager = INSTANCE;
        SharedPreferences mPreferences2 = oOMPreferenceManager.getMPreferences();
        editorEdit.getClass();
        oOMPreferenceManager.clearUnusedPreference(mPreferences2, editorEdit);
        StringBuilder sb = new StringBuilder();
        String str = mPrefix;
        if (str == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        String strR = n00.r(str, "times", sb);
        SharedPreferences mPreferences3 = getMPreferences();
        StringBuilder sb2 = new StringBuilder();
        String str2 = mPrefix;
        if (str2 == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        sb2.append(str2);
        sb2.append("times");
        editorEdit.putInt(strR, mPreferences3.getInt(sb2.toString(), 0) + 1).apply();
    }

    public final void init(Function1<? super String, ? extends SharedPreferences> sharedPreferencesInvoker) {
        sharedPreferencesInvoker.getClass();
        mSharedPreferencesInvoker = sharedPreferencesInvoker;
        mPrefix = fc.l(new StringBuilder(), MonitorBuildConfig.getVERSION_NAME(), '_');
    }

    public final void setFirstLaunchTime(long time) {
        SharedPreferences mPreferences2 = getMPreferences();
        StringBuilder sb = new StringBuilder();
        String str = mPrefix;
        if (str == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        sb.append(str);
        sb.append("first_analysis_time");
        if (mPreferences2.contains(sb.toString())) {
            return;
        }
        SharedPreferences.Editor editorEdit = getMPreferences().edit();
        StringBuilder sb2 = new StringBuilder();
        String str2 = mPrefix;
        if (str2 != null) {
            editorEdit.putLong(n00.r(str2, "first_analysis_time", sb2), time).apply();
        } else {
            Intrinsics.h("mPrefix");
            throw null;
        }
    }
}
