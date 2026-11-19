package com.sightcall.universal.ar;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.api.JsonApi;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.model.Session;
import javax.inject.Inject;
import net.rtccloud.sdk.util.OldLogger;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public final class UniversalAr implements ArBridge {
    private static volatile ArBridge bridge;
    private static final OldLogger logger = OldLogger.get("UniversalAr");

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private final Context context;

    public UniversalAr(Context context) {
        this.context = context;
        SDKInjector.getSdkInjector().inject(this);
    }

    private ArBridge bridge() {
        if (bridge == null) {
            synchronized (ArBridge.class) {
                try {
                    if (bridge == null) {
                        bridge = findBridge(this.context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bridge;
    }

    private static ArBridge findBridge(Context context) {
        OldLogger oldLogger = logger;
        oldLogger.d("Searching meta-data for [%s]", ArBridge.META_DATA_KEY);
        Context applicationContext = context.getApplicationContext();
        try {
            String string = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128).metaData.getString(ArBridge.META_DATA_KEY);
            if (TextUtils.isEmpty(string)) {
                oldLogger.d("[%s] is not defined.", ArBridge.META_DATA_KEY);
            } else {
                Object objNewInstance = Class.forName(string).getConstructor(Context.class).newInstance(applicationContext);
                if (objNewInstance instanceof ArBridge) {
                    oldLogger.d("Found: %s", objNewInstance);
                    return (ArBridge) objNewInstance;
                }
            }
        } catch (Exception e2) {
            logger.w("%s creation error", ArBridge.META_DATA_KEY, e2.getMessage());
        }
        return ArBridge.NOOP;
    }

    @Override // com.sightcall.universal.ar.ArBridge
    public void checkArCoreAvailability() {
        bridge().checkArCoreAvailability();
    }

    @Override // com.sightcall.universal.ar.ArBridge
    public Class<? extends Activity> getActivityClass() {
        return bridge().getActivityClass();
    }

    @Override // com.sightcall.universal.ar.ArBridge
    public ArCoreState getArCoreState() {
        return bridge().getArCoreState();
    }

    @Override // com.sightcall.universal.ar.ArBridge
    public boolean isArCoreUnsupported() {
        return bridge().isArCoreUnsupported();
    }

    @Override // com.sightcall.universal.ar.ArBridge
    public void startActivity(Activity activity) {
        this.capabilitiesRepository.activateAr();
        bridge().startActivity(activity);
    }

    public void upload(Session session, ArPictureUpload arPictureUpload, final ArPictureUploadCallback arPictureUploadCallback) {
        if (session.caseReportId() == null) {
            arPictureUploadCallback.onUploadPictureError(new ArPictureUploadCallback.Error());
        } else {
            ((ArApi) Apis.get(ArApi.class, session.environment())).upload(Headers.Authorization.Bearer.with(session.config().hash()), JsonApi.wrap(arPictureUpload)).p(new Callback<JsonApi.Wrapper<ArPictureUpload>>() { // from class: com.sightcall.universal.ar.UniversalAr.1
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<ArPictureUpload>> call, Throwable th) {
                    UniversalAr.logger.e(th);
                    arPictureUploadCallback.onUploadPictureError(new ArPictureUploadCallback.Error());
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<ArPictureUpload>> call, Response<JsonApi.Wrapper<ArPictureUpload>> response) {
                    if (!response.f79449a.r) {
                        arPictureUploadCallback.onUploadPictureError(new ArPictureUploadCallback.Error());
                        return;
                    }
                    JsonApi.Wrapper wrapper = (JsonApi.Wrapper) response.f79450b;
                    ArPictureUpload arPictureUpload2 = wrapper != null ? (ArPictureUpload) wrapper.unwrap() : null;
                    ArPictureUploadCallback arPictureUploadCallback2 = arPictureUploadCallback;
                    if (arPictureUpload2 == null) {
                        arPictureUploadCallback2.onUploadPictureError(new ArPictureUploadCallback.Error());
                    } else {
                        arPictureUploadCallback2.onUploadPictureSuccess(new ArPictureUploadCallback.Success(ApiCallback.Holder.hold(call, response), arPictureUpload2));
                    }
                }
            });
        }
    }
}
