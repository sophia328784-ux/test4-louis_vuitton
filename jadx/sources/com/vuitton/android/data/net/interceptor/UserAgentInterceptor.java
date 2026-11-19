package com.vuitton.android.data.net.interceptor;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;", "Lokhttp3/Interceptor;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserAgentInterceptor implements Interceptor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f47097c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f47098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BuildConfigProvider f47099b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;", "", "", "HEADER_NAME", "Ljava/lang/String;", "USER_AGENT_PREFIX", "USER_AGENT_SUFFIX", "USER_AGENT_SUFFIX_PRD", "USER_AGENT_SUFFIX_PRP", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(Context context, boolean z) {
            Object failure;
            context.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = "preview";
            }
            String str = (String) failure;
            return z ? fc.h("LVapp/android/", str, " LVApp PRP") : fc.h("LVapp/android/", str, " LVApp PRD");
        }
    }

    public UserAgentInterceptor(Context context, BuildConfigProvider buildConfigProvider) {
        context.getClass();
        buildConfigProvider.getClass();
        this.f47098a = context;
        this.f47099b = buildConfigProvider;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        request.getClass();
        Request.Builder builder = new Request.Builder(request);
        this.f47099b.getClass();
        f47097c.getClass();
        builder.b("User-Agent", Companion.a(this.f47098a, false));
        return realInterceptorChain.b(new Request(builder));
    }
}
