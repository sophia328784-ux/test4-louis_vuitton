package com.sightcall.universal.di;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.universal.internal.ui.NetworkConnectorImpl;
import dagger.Module;
import dagger.Provides;
import defpackage.r81;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava3.RxJava3CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0006\u001a\u00020\u0003H\u0001¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\fJ\r\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/di/SdkModule;", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "provideApplicationContext", "provideApplicationContext$sdk_installedRelease", "provideSDKInjector", "Lcom/sightcall/universal/di/SDKInjectorI;", "sdkComponent", "Lcom/sightcall/universal/di/SdkComponent;", "provideSDKInjector$sdk_installedRelease", "provideRxJava2ExecutionScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "provideRxJava2ExecutionScheduler$sdk_installedRelease", "provideRxJava2PostExecutionScheduler", "provideRxJava2PostExecutionScheduler$sdk_installedRelease", "provideNetworkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class SdkModule {
    private final Context context;

    public SdkModule(Context context) {
        context.getClass();
        this.context = context;
    }

    @ApplicationContext
    @Provides
    @SdkScope
    /* JADX INFO: renamed from: provideApplicationContext$sdk_installedRelease, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    @SdkScope
    public final NetworkConnector provideNetworkConnector() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, 0 == true ? 1 : 0);
        HttpLoggingInterceptor.Level level = HttpLoggingInterceptor.Level.BODY;
        level.getClass();
        httpLoggingInterceptor.d = level;
        Gson gsonCreate = new GsonBuilder().create();
        if (gsonCreate == null) {
            r81.d("gson == null");
            return null;
        }
        GsonConverterFactory gsonConverterFactory = new GsonConverterFactory(gsonCreate);
        RxJava3CallAdapterFactory rxJava3CallAdapterFactory = new RxJava3CallAdapterFactory();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.f76962c.add(httpLoggingInterceptor);
        OkHttpClient okHttpClient = new OkHttpClient(builder);
        Retrofit.Builder builder2 = new Retrofit.Builder();
        builder2.b("https://www.sightcall.com");
        builder2.a(gsonConverterFactory);
        builder2.d.add(rxJava3CallAdapterFactory);
        builder2.f79461a = okHttpClient;
        return new NetworkConnectorImpl(builder2.d());
    }

    @Provides
    @IOScheduler
    @SdkScope
    public final Scheduler provideRxJava2ExecutionScheduler$sdk_installedRelease() {
        Scheduler scheduler = Schedulers.f71156b;
        scheduler.getClass();
        return scheduler;
    }

    @Provides
    @MainScheduler
    @SdkScope
    public final Scheduler provideRxJava2PostExecutionScheduler$sdk_installedRelease() {
        Scheduler scheduler = AndroidSchedulers.f70017a;
        if (scheduler != null) {
            return scheduler;
        }
        r81.d("scheduler == null");
        return null;
    }

    @Provides
    @SdkScope
    public final SDKInjectorI provideSDKInjector$sdk_installedRelease(SdkComponent sdkComponent) {
        sdkComponent.getClass();
        return new SDKInjectorImpl(sdkComponent);
    }
}
