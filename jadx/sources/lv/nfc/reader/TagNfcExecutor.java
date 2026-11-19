package lv.nfc.reader;

import android.nfc.tech.NfcV;
import android.os.Handler;
import android.os.Looper;
import com.batch.android.x0.h;
import com.dynatrace.android.callback.OkCallback;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import defpackage.aa0;
import defpackage.b5;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import lv.nfc.reader.data.exceptions.LVNetworkException;
import lv.nfc.reader.data.exceptions.LVReadTagError;
import lv.nfc.reader.data.exceptions.LVTagException;
import lv.nfc.reader.data.models.LVTagInput;
import lv.nfc.reader.data.models.LVTagResult;
import lv.nfc.reader.data.models.TagCheckResponse;
import lv.nfc.reader.utils.LVByteManipulation;
import lv.nfc.reader.utils.LVChallengeGenerator;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;

/* JADX INFO: loaded from: classes4.dex */
public class TagNfcExecutor {
    public static final String TAG = "SdkNfcReader";
    private OkHttpClient client;
    private final Gson gson = new GsonBuilder().create();
    private Map<String, String> headers;
    private byte[] tagId;

    private void closeNfcSafely(NfcV nfcV) {
        if (nfcV != null) {
            try {
                if (nfcV.isConnected()) {
                    nfcV.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private OkHttpClient getClient() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        HttpLoggingInterceptor.Level level = HttpLoggingInterceptor.Level.BASIC;
        level.getClass();
        httpLoggingInterceptor.d = level;
        return new OkHttpClient(new OkHttpClient.Builder(new OkHttpClient()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scanTag$0(LVTagInput lVTagInput, TagNfcExecutorCallback tagNfcExecutorCallback) {
        TagNfcExecutor tagNfcExecutor;
        try {
            NfcV nfc = lVTagInput.getNfc();
            this.tagId = nfc.getTag().getId();
            nfc.connect();
            String strGenerateChallenge = new LVChallengeGenerator().generateChallenge();
            String host = lVTagInput.getHost();
            TagCheckResponse tagCheckResponseTagCheck = tagCheck(host, strGenerateChallenge, nfcStep1(nfc, strGenerateChallenge));
            tagNfcExecutor = this;
            try {
                sendSuccessResult(tagNfcExecutorCallback, tagNfcExecutor.tagInformation(host, nfcStep2(nfc, tagCheckResponseTagCheck.getData().getApdu()), tagCheckResponseTagCheck.getData().getConnectionId(), readUID(nfc), lVTagInput.getCxidAllowList()));
                nfc.close();
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                tagNfcExecutor.closeNfcSafely(lVTagInput.getNfc());
                tagNfcExecutorCallback.error(exc);
            }
        } catch (Exception e3) {
            e = e3;
            tagNfcExecutor = this;
        }
    }

    private String nfcStep1(NfcV nfcV, String str) throws LVTagException {
        try {
            byte[] bArrHexToBytes = LVByteManipulation.hexToBytes(str);
            byte[] bArr = new byte[20];
            System.arraycopy(new byte[]{32, h.a.C, 22}, 0, bArr, 0, 3);
            System.arraycopy(this.tagId, 0, bArr, 3, 8);
            System.arraycopy(new byte[]{3, -128, 0}, 0, bArr, 11, 3);
            System.arraycopy(bArrHexToBytes, 0, bArr, 14, 6);
            byte[] bArrTransceive = nfcV.transceive(bArr);
            byte[] bArr2 = new byte[6];
            System.arraycopy(bArrTransceive, 2, bArr2, 0, 6);
            return LVByteManipulation.bytesToHex(bArr2);
        } catch (Exception e2) {
            throw new LVTagException(LVReadTagError.lostTag, e2.getClass().getName() + ":" + e2.getMessage(), e2.getCause());
        }
    }

    private String nfcStep2(NfcV nfcV, String str) throws LVTagException {
        try {
            byte[] bArrHexToBytes = LVByteManipulation.hexToBytes(str);
            byte[] bArr = new byte[22];
            System.arraycopy(new byte[]{32, h.a.C, 22}, 0, bArr, 0, 3);
            System.arraycopy(this.tagId, 0, bArr, 3, 8);
            bArr[11] = 3;
            bArr[12] = h.a.f24175c;
            bArr[13] = 0;
            System.arraycopy(bArrHexToBytes, 0, bArr, 14, 8);
            return LVByteManipulation.bytesToBase64(nfcV.transceive(bArr)).trim();
        } catch (Exception e2) {
            throw new LVTagException(LVReadTagError.lostTag, e2.getClass().getName() + ":" + e2.getMessage(), e2.getCause());
        }
    }

    private String readUID(NfcV nfcV) throws LVTagException {
        try {
            byte[] bArr = {32, 43, 0, 0, 0, 0, 0, 0, 0, 0};
            System.arraycopy(this.tagId, 0, bArr, 2, 8);
            byte[] bArrTransceive = nfcV.transceive(bArr);
            byte[] bArr2 = new byte[8];
            System.arraycopy(bArrTransceive, 2, bArr2, 0, 8);
            return LVByteManipulation.bytesToHex(LVByteManipulation.reverseArray(bArr2));
        } catch (Exception e2) {
            throw new LVTagException(LVReadTagError.technicalError, e2.getMessage(), e2.getCause());
        }
    }

    private static void sendSuccessResult(TagNfcExecutorCallback tagNfcExecutorCallback, LVTagResult lVTagResult) {
        new Handler(Looper.getMainLooper()).post(new aa0(tagNfcExecutorCallback, lVTagResult, 29));
    }

    private TagCheckResponse tagCheck(String str, String str2, String str3) throws LVNetworkException {
        try {
            HttpUrl.f76918j.getClass();
            HttpUrl.Builder builderG = HttpUrl.Companion.d(str).g();
            builderG.a("tag/check");
            builderG.b("challenge", str2);
            builderG.b("apduRequest", str3);
            Response responseB = OkCallback.b(this.client.a(LVConstants.createRequest(builderG.c(), this.headers)));
            boolean z = responseB.r;
            int i2 = responseB.f76986e;
            if (!z) {
                throw new LVNetworkException(LVReadTagError.technicalError.toString(), i2, responseB.d);
            }
            ResponseBody responseBody = responseB.f76988h;
            if (responseBody == null) {
                throw new LVNetworkException(LVReadTagError.technicalError.toString(), i2, "No Body");
            }
            String strString = responseBody.string();
            if (strString != null) {
                return (TagCheckResponse) this.gson.fromJson(strString, TagCheckResponse.class);
            }
            throw new LVNetworkException(LVReadTagError.technicalError.toString(), i2, "Empty Body");
        } catch (IOException e2) {
            throw new LVNetworkException(LVReadTagError.technicalError.toString(), 0, e2.getMessage());
        }
    }

    private LVTagResult tagInformation(String str, String str2, String str3, String str4, List<String> list) throws LVTagException {
        MediaType mediaTypeA;
        try {
            HttpUrl.f76918j.getClass();
            HttpUrl.Builder builderG = HttpUrl.Companion.d(str).g();
            builderG.a("tag/information");
            HttpUrl httpUrlC = builderG.c();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("APDU", str2);
            jsonObject.addProperty("connectionId", str3);
            jsonObject.addProperty("uid", str4);
            jsonObject.add("cxidAllowList", this.gson.toJsonTree(list).getAsJsonArray());
            String string = jsonObject.toString();
            MediaType.f76933e.getClass();
            try {
                mediaTypeA = MediaType.Companion.a(LVConstants.LV_JSON_VALUE);
            } catch (IllegalArgumentException unused) {
                mediaTypeA = null;
            }
            RequestBody.f76978a.getClass();
            Response responseB = OkCallback.b(this.client.a(LVConstants.createPostRequest(httpUrlC, this.headers, RequestBody.Companion.b(string, mediaTypeA))));
            if (responseB.r) {
                return (LVTagResult) this.gson.fromJson(responseB.f76988h.string(), LVTagResult.class);
            }
            return null;
        } catch (IOException e2) {
            throw new LVTagException(LVReadTagError.technicalError, e2.getClass().getName() + ":" + e2.getMessage(), e2.getCause());
        }
    }

    public void scanTag(LVTagInput lVTagInput, TagNfcExecutorCallback tagNfcExecutorCallback) {
        System.currentTimeMillis();
        this.headers = lVTagInput.getHeaders();
        this.client = getClient();
        Executors.newSingleThreadExecutor().execute(new b5(this, lVTagInput, tagNfcExecutorCallback, 19));
    }
}
