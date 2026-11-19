package com.dynatrace.agent.communication.network.request;

import com.dynatrace.agent.communication.network.datasource.DataRequest;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.storage.db.EndPointInfo;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.zip.CRC32;
import java.util.zip.GZIPOutputStream;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;", "", "", "version", "Lkotlin/Function0;", "", "timestampProvider", "", "useCompression", "<init>", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DataRequestFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f26649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26650c;

    public DataRequestFactory(String str, Function0<Long> function0, boolean z) {
        str.getClass();
        function0.getClass();
        this.f26648a = str;
        this.f26649b = function0;
        this.f26650c = z;
    }

    public final Request a(DataRequest dataRequest) throws IOException {
        byte[] bArrO;
        MediaType mediaTypeA;
        Compression compression;
        EndPointInfo endPointInfo = dataRequest.f26635a;
        String str = dataRequest.f26636b;
        if (this.f26650c) {
            str.getClass();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new GZIPOutputStream(byteArrayOutputStream), Charsets.UTF_8), 8192);
            try {
                bufferedWriter.write(str);
                bufferedWriter.close();
                bArrO = byteArrayOutputStream.toByteArray();
                bArrO.getClass();
                MediaType.f76933e.getClass();
                mediaTypeA = MediaType.Companion.a("application/octet-stream");
                compression = Compression.GZIP;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(bufferedWriter, th);
                    throw th2;
                }
            }
        } else {
            bArrO = StringsKt.o(str);
            MediaType.f76933e.getClass();
            mediaTypeA = MediaType.Companion.a("application/json;charset=UTF-8");
            compression = Compression.UNCOMPRESSED;
        }
        Headers.Builder builder = new Headers.Builder();
        builder.a("accept-encoding", "gzip");
        RequestBody.Companion companion = RequestBody.f76978a;
        int length = bArrO.length;
        companion.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(length, mediaTypeA, bArrO);
        HttpUrl.Companion companion2 = HttpUrl.f76918j;
        String str2 = endPointInfo.f26895b;
        companion2.getClass();
        HttpUrl.Builder builderG = HttpUrl.Companion.c(str2).g();
        HttpUrlExtensionsKt.a(builderG, endPointInfo, this.f26648a, dataRequest.d.f26562b.f27043a);
        String str3 = dataRequest.f26637c ? "high" : null;
        compression.getClass();
        Function0 function0 = this.f26649b;
        function0.getClass();
        builderG.b("cy", MvelScriptManager.VAR_EVENT);
        if (str3 != null) {
            builderG.b("pr", str3);
        }
        CRC32 crc32 = new CRC32();
        crc32.update(bArrO);
        builderG.b("bc", String.valueOf(crc32.getValue()));
        if (compression != Compression.UNCOMPRESSED) {
            builderG.b("co", compression.getDescription());
        }
        builderG.b("st", String.valueOf(((Number) function0.mo47invoke()).longValue()));
        RetryInfo retryInfo = dataRequest.f26638e;
        if (retryInfo != null) {
            builderG.b("rc", String.valueOf(retryInfo.f26645a));
            String str4 = retryInfo.f26646b;
            if (str4 != null) {
                builderG.b("rr", str4);
            }
        }
        Integer num = dataRequest.f26639f;
        if (num != null) {
            builderG.b("si", String.valueOf(num.intValue()));
        }
        HttpUrl httpUrlB = HttpUrlExtensionsKt.b(builderG);
        Request.Builder builder2 = new Request.Builder();
        builder2.c("POST", requestBody$Companion$toRequestBody$3A);
        builder2.f76976c = builder.d().h();
        builder2.f76974a = httpUrlB;
        return new Request(builder2);
    }

    public /* synthetic */ DataRequestFactory(String str, Function0 function0, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, function0, (i2 & 4) != 0 ? true : z);
    }
}
