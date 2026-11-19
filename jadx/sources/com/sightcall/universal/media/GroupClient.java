package com.sightcall.universal.media;

import android.os.Handler;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.api.HttpLoggingInterceptor;
import com.sightcall.universal.extensions.UniversalExtensionKt;
import com.sightcall.universal.model.Session;
import java.util.Random;
import net.rtccloud.sdk.util.OldLogger;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
class GroupClient {
    private static final OldLogger log = OldLogger.get("UploaderClient");

    public static abstract class GroupCallback {
        private final Metadata metadata;
        private final Random random = new Random();
        private final PictureGroupV3Request request;

        public GroupCallback(Metadata metadata, PictureGroupV3Request pictureGroupV3Request) {
            this.metadata = metadata;
            this.request = pictureGroupV3Request;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$replayRequest$0(GroupCallback groupCallback) {
            GroupClient.createGroup(this.metadata, this.request, groupCallback);
        }

        public abstract void onGroupFailure();

        public abstract void onGroupSuccess(String str, PictureGroupV3Response pictureGroupV3Response);

        public void replayRequest(GroupCallback groupCallback) {
            new Handler().postDelayed(new a(this, groupCallback, 0), this.random.nextInt(5000) + 1);
        }
    }

    public static void createGroup(final Metadata metadata, PictureGroupV3Request pictureGroupV3Request, final GroupCallback groupCallback) {
        String strHash;
        Environment environment;
        if (Apis.loggingInterceptor().getLevel() == HttpLoggingInterceptor.Level.BODY) {
            Universal.logger().i(String.valueOf(pictureGroupV3Request));
        }
        Agent agent = Universal.agent().get();
        if (agent == null || agent.token() == null) {
            Session session = UniversalExtensionKt.getSession();
            strHash = session != null ? session.config().hash() : null;
            environment = session.environment();
        } else {
            strHash = agent.token();
            environment = agent.environment();
        }
        get(environment).createPictureGroup(Headers.Authorization.PlaneTokenV3.with(strHash).toString(), pictureGroupV3Request).p(new Callback<PictureGroupV3Response>() { // from class: com.sightcall.universal.media.GroupClient.1
            @Override // retrofit2.Callback
            public void onFailure(Call<PictureGroupV3Response> call, Throwable th) {
                GroupClient.log.e("onFailure()", th);
                groupCallback.onGroupFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<PictureGroupV3Response> call, Response<PictureGroupV3Response> response) {
                okhttp3.Response response2 = response.f79449a;
                Object obj = response.f79450b;
                if (!response2.r || obj == null) {
                    groupCallback.onGroupFailure();
                } else {
                    groupCallback.onGroupSuccess(metadata.localGroup(), (PictureGroupV3Response) obj);
                }
            }
        });
    }

    private static UploaderApi get(Environment environment) {
        return (UploaderApi) Apis.get(UploaderApi.class, environment);
    }
}
