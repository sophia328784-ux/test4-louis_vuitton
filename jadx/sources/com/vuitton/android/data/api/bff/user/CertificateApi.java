package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.certificate.AddCertificateBodyDto;
import com.vuitton.android.data.dto.certificate.CertificateActivationCodeBodyDto;
import com.vuitton.android.data.dto.certificate.CertificateBffBodyDto;
import com.vuitton.android.data.dto.certificate.CertificateDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u0012\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J.\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00030\u000b2\b\b\u0001\u0010\u0016\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\bH§@¢\u0006\u0002\u0010\u0017J2\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0019\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u001a\u001a\u00020\u001bH§@¢\u0006\u0002\u0010\u001cJ(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u001e\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\bH§@¢\u0006\u0002\u0010\u0017¨\u0006\u001fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/CertificateApi;", "", "getCertificateList", "", "Lcom/vuitton/android/data/dto/certificate/CertificateDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCertificateListByName", "name", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addCertificate", "Lretrofit2/Response;", "", "accessToken", "addCertificateBodyDto", "Lcom/vuitton/android/data/dto/certificate/AddCertificateBodyDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/AddCertificateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "transferCertificate", "certificateDto", "Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCxidList", "activationCode", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "claimCertificate", "cxId", "certificateActivationCodeBodyDto", "Lcom/vuitton/android/data/dto/certificate/CertificateActivationCodeBodyDto;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateActivationCodeBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unlockCertificate", "certificateId", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CertificateApi {
    @PUT("certificates/add")
    Object addCertificate(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Body AddCertificateBodyDto addCertificateBodyDto, Continuation<? super Response<Unit>> continuation);

    @POST("certificates/claim/{cxId}")
    Object claimCertificate(@Path("cxId") String str, @Header(LVConstants.SFID_ACCESS_TOKEN) String str2, @Body CertificateActivationCodeBodyDto certificateActivationCodeBodyDto, Continuation<? super Response<Unit>> continuation);

    @GET("certificates")
    Object getCertificateList(Continuation<? super List<? extends CertificateDto>> continuation);

    @GET("certificates/{name}")
    Object getCertificateListByName(@Path("name") String str, Continuation<? super List<? extends CertificateDto>> continuation);

    @GET("certificates/claim/{activationCode}")
    Object getCxidList(@Path("activationCode") String str, @Header(LVConstants.SFID_ACCESS_TOKEN) String str2, Continuation<? super Response<List<String>>> continuation);

    @PUT("certificates/transfer")
    Object transferCertificate(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Body CertificateBffBodyDto certificateBffBodyDto, Continuation<? super Response<Unit>> continuation);

    @POST("certificates/pending-status/{certificateId}")
    Object unlockCertificate(@Path("certificateId") String str, @Header(LVConstants.SFID_ACCESS_TOKEN) String str2, Continuation<? super Response<Unit>> continuation);
}
