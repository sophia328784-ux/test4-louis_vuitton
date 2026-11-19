package com.squareup.wire;

import java.io.IOException;
import java.time.Duration;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001¨\u0006\u0004"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonDuration$1", "Lcom/squareup/wire/ProtoAdapter;", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonDuration$1 extends ProtoAdapter<Duration> {
    public static int j(Duration duration) {
        return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getNano() : duration.getNano() - 1000000000;
    }

    public static long k(Duration duration) {
        return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getSeconds() : duration.getSeconds() + 1;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int iH = protoReader32.h();
        long jM = 0;
        int iJ = 0;
        while (true) {
            int iNextTag = protoReader32.nextTag();
            if (iNextTag == -1) {
                protoReader32.l(iH);
                Duration durationOfSeconds = Duration.ofSeconds(jM, iJ);
                durationOfSeconds.getClass();
                return durationOfSeconds;
            }
            if (iNextTag == 1) {
                ProtoAdapter.f43457k.getClass();
                jM = protoReader32.m();
            } else if (iNextTag != 2) {
                protoReader32.f(iNextTag);
            } else {
                ProtoAdapter.f43454h.getClass();
                iJ = protoReader32.j();
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        long jO = 0;
        int iN = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                protoReader.e(jD);
                Duration durationOfSeconds = Duration.ofSeconds(jO, iN);
                durationOfSeconds.getClass();
                return durationOfSeconds;
            }
            if (iG == 1) {
                ProtoAdapter.f43457k.getClass();
                jO = protoReader.o();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                ProtoAdapter.f43454h.getClass();
                iN = protoReader.n();
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Duration duration = (Duration) obj;
        protoWriter.getClass();
        duration.getClass();
        long jK = k(duration);
        if (jK != 0) {
            ProtoAdapter.f43457k.f(protoWriter, 1, Long.valueOf(jK));
        }
        int iJ = j(duration);
        if (iJ != 0) {
            ProtoAdapter.f43454h.f(protoWriter, 2, Integer.valueOf(iJ));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Duration duration = (Duration) obj;
        reverseProtoWriter.getClass();
        duration.getClass();
        int iJ = j(duration);
        if (iJ != 0) {
            ProtoAdapter.f43454h.g(reverseProtoWriter, 2, Integer.valueOf(iJ));
        }
        long jK = k(duration);
        if (jK != 0) {
            ProtoAdapter.f43457k.g(reverseProtoWriter, 1, Long.valueOf(jK));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int i2;
        Duration duration = (Duration) obj;
        duration.getClass();
        long jK = k(duration);
        if (jK != 0) {
            i2 = ProtoAdapter.f43457k.i(1, Long.valueOf(jK));
        } else {
            i2 = 0;
        }
        int iJ = j(duration);
        if (iJ == 0) {
            return i2;
        }
        return ProtoAdapter.f43454h.i(2, Integer.valueOf(iJ)) + i2;
    }
}
