package com.sightcall.httpclient.di;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.gson.Gson;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.httpclient.interceptors.ContentTypeInterceptor;
import com.sightcall.httpclient.interceptors.UserAgentInterceptor;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import dagger.Module;
import dagger.Provides;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sightcall/httpclient/di/HttpClientModule;", "", "versionName", "", "versionMucl", "", "<init>", "(Ljava/lang/String;I)V", "provideRetrofit", "Lretrofit2/Retrofit;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "Companion", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class HttpClientModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static URL baseUrl;
    private static URL developerBaseUrl;
    private final int versionMucl;
    private final String versionName;

    public HttpClientModule(String str, int i2) {
        str.getClass();
        this.versionName = str;
        this.versionMucl = i2;
    }

    @Provides
    public final Retrofit provideRetrofit(Context context) throws PackageManager.NameNotFoundException {
        context.getClass();
        Retrofit.Builder builder = new Retrofit.Builder();
        URL url = developerBaseUrl;
        if (url == null && (url = baseUrl) == null) {
            Intrinsics.h("baseUrl");
            throw null;
        }
        String string = url.toString();
        HttpUrl.f76918j.getClass();
        builder.c(HttpUrl.Companion.c(string));
        builder.a(new GsonConverterFactory(new Gson()));
        OkHttpClient.Builder builder2 = new OkHttpClient.Builder();
        long jAppVersionCode = ContextExtensionsKt.appVersionCode(context);
        String packageName = context.getPackageName();
        packageName.getClass();
        builder2.f76962c.add(new UserAgentInterceptor(jAppVersionCode, packageName, this.versionName, this.versionMucl));
        ContentTypeInterceptor contentTypeInterceptor = ContentTypeInterceptor.INSTANCE;
        contentTypeInterceptor.getClass();
        builder2.d.add(contentTypeInterceptor);
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
        HttpLoggingInterceptor.Level level = HttpLoggingInterceptor.Level.BODY;
        level.getClass();
        httpLoggingInterceptor.d = level;
        builder2.d.add(httpLoggingInterceptor);
        builder.f79461a = new OkHttpClient(builder2);
        return builder.d();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/sightcall/httpclient/di/HttpClientModule$Companion;", "", "<init>", "()V", "baseUrl", "Ljava/net/URL;", "developerBaseUrl", "initBaseUrl", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "initDeveloperBaseUrl", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void initBaseUrl(String url) {
            url.getClass();
            HttpClientModule.baseUrl = new URL(url);
        }

        public final void initDeveloperBaseUrl(String url) {
            url.getClass();
            HttpClientModule.developerBaseUrl = new URL(url);
        }

        private Companion() {
        }
    }
}
