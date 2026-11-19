package com.dynatrace.agent.metrics;

import android.content.Context;
import android.os.Build;
import com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker;
import defpackage.ch0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B<\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012#\b\u0002\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0006¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;", "", "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;", "networkConnectivityChecker", "Landroid/content/Context;", "applicationContext", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", MvelScriptManager.VAR_CONTEXT, "", "isDeviceRooted", "<init>", "(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentMetricsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NetworkConnectivityChecker f26877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f26878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f26879c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26881f;

    public OneAgentMetricsProvider(NetworkConnectivityChecker networkConnectivityChecker, Context context, Function1<? super Context, Boolean> function1) {
        networkConnectivityChecker.getClass();
        context.getClass();
        function1.getClass();
        this.f26877a = networkConnectivityChecker;
        this.f26878b = context;
        this.f26879c = function1;
        String str = Build.MANUFACTURER;
        str.getClass();
        this.d = str;
        String str2 = Build.MODEL;
        str2.getClass();
        this.f26880e = str2;
        String str3 = Build.VERSION.RELEASE;
        str3.getClass();
        this.f26881f = str3;
    }

    public /* synthetic */ OneAgentMetricsProvider(NetworkConnectivityChecker networkConnectivityChecker, Context context, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(networkConnectivityChecker, context, (i2 & 4) != 0 ? new ch0(5) : function1);
    }
}
