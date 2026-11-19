package com.dynatrace.agent.communication.network.request;

import com.dynatrace.agent.storage.db.EndPointInfo;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.util.zip.CRC32;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class HttpUrlExtensionsKt {
    public static final void a(HttpUrl.Builder builder, EndPointInfo endPointInfo, String str, long j2) {
        endPointInfo.getClass();
        str.getClass();
        builder.b("ty", "mb");
        builder.b("pv", "4");
        builder.b("tt", ReferenceApiV3ConstKt.OS_NAME);
        builder.b("av", str);
        builder.b("ai", endPointInfo.f26894a);
        builder.b("cr", String.valueOf(j2));
    }

    public static final HttpUrl b(HttpUrl.Builder builder) {
        String strValueOf;
        builder.getClass();
        HttpUrl httpUrlC = builder.c();
        String strD = httpUrlC.d();
        if (strD != null) {
            byte[] bArrO = StringsKt.o(strD);
            CRC32 crc32 = new CRC32();
            crc32.update(bArrO);
            strValueOf = String.valueOf(crc32.getValue());
        } else {
            strValueOf = null;
        }
        HttpUrl.Builder builderG = httpUrlC.g();
        builderG.b("qc", strValueOf);
        builderG.b("end", "1");
        return builderG.c();
    }
}
