package com.sightcall.universal.ocr;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.model.Session;
import java.io.ByteArrayOutputStream;
import java.util.UUID;
import net.rtccloud.sdk.VideoModule;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class OcrClient {

    public interface UploadCallback {
        void onUploadError();

        void onUploadFailure();

        void onUploadSuccess();
    }

    private static OcrApi api(Environment environment) {
        return (OcrApi) Apis.get(OcrApi.class, environment);
    }

    public static Call<?> upload(Session session, byte[] bArr, VideoModule.CameraSource cameraSource, int i2, final UploadCallback uploadCallback) {
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Usecase usecase = session.usecase;
        Float fOcrRatio = usecase.ocrRatio();
        Float fOcrSafeArea = usecase.ocrSafeArea();
        if (fOcrRatio == null || fOcrSafeArea == null) {
            return null;
        }
        Bitmap bitmapExtractBitmap = OcrUtils.extractBitmap(cameraSource, bitmapDecodeByteArray, fOcrRatio.floatValue(), fOcrSafeArea.floatValue() / 2.0f);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapExtractBitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream);
        String string = UUID.randomUUID().toString();
        MediaType.f76933e.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3C = RequestBody.c("{\"attributes\":{\"agent\":\"" + i2 + "\",\"picture\":\"" + string + "\"},\"type\":\"ocr\"}", MediaType.Companion.a(InitUrlConnection.CONTENT_TYPE_VALUE));
        MultipartBody.Part.f76948c.getClass();
        MultipartBody.Part partB = MultipartBody.Part.Companion.b(DbParams.KEY_DATA, null, requestBody$Companion$toRequestBody$3C);
        MediaType mediaTypeA = MediaType.Companion.a("image/jpeg");
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        RequestBody.f76978a.getClass();
        byteArray.getClass();
        Call<Void> callUpload = api(session.environment()).upload(Headers.Authorization.Bearer.with(session.config.hash()), partB, MultipartBody.Part.Companion.b(string, string + ".jpg", RequestBody.Companion.a(byteArray.length, mediaTypeA, byteArray)));
        callUpload.p(new Callback<Void>() { // from class: com.sightcall.universal.ocr.OcrClient.1
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                uploadCallback.onUploadFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                boolean z = response.f79449a.r;
                UploadCallback uploadCallback2 = uploadCallback;
                if (z) {
                    uploadCallback2.onUploadSuccess();
                } else {
                    uploadCallback2.onUploadError();
                }
            }
        });
        return callUpload;
    }
}
