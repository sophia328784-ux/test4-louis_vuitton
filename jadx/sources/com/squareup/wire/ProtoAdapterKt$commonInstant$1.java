package com.squareup.wire;

import defpackage.b21;
import defpackage.n00;
import defpackage.o60;
import java.io.IOException;
import java.time.Instant;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001¨\u0006\u0004"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonInstant$1", "Lcom/squareup/wire/ProtoAdapter;", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonInstant$1 extends ProtoAdapter<Instant> {
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
                Instant instantOfEpochSecond = Instant.ofEpochSecond(jM, iJ);
                instantOfEpochSecond.getClass();
                return instantOfEpochSecond;
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
                Instant instantOfEpochSecond = Instant.ofEpochSecond(jO, iN);
                instantOfEpochSecond.getClass();
                return instantOfEpochSecond;
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
        Instant instant = (Instant) obj;
        protoWriter.getClass();
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        if (-62135596800L > epochSecond || epochSecond >= 253402300800L) {
            b21.n(o60.i(epochSecond, "Timestamp seconds (", ") must be in range [-62135596800, 253402300799]"));
            return;
        }
        if (nano < 0 || nano >= 1000000000) {
            b21.n(n00.m(nano, "Timestamp nanos (", ") must be in range [0, 999999999]"));
            return;
        }
        if (epochSecond != 0) {
            ProtoAdapter.f43457k.f(protoWriter, 1, Long.valueOf(epochSecond));
        }
        if (nano != 0) {
            ProtoAdapter.f43454h.f(protoWriter, 2, Integer.valueOf(nano));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Instant instant = (Instant) obj;
        reverseProtoWriter.getClass();
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        if (-62135596800L > epochSecond || epochSecond >= 253402300800L) {
            b21.n(o60.i(epochSecond, "Timestamp seconds (", ") must be in range [-62135596800, 253402300799]"));
            return;
        }
        if (nano < 0 || nano >= 1000000000) {
            b21.n(n00.m(nano, "Timestamp nanos (", ") must be in range [0, 999999999]"));
            return;
        }
        if (nano != 0) {
            ProtoAdapter.f43454h.g(reverseProtoWriter, 2, Integer.valueOf(nano));
        }
        if (epochSecond != 0) {
            ProtoAdapter.f43457k.g(reverseProtoWriter, 1, Long.valueOf(epochSecond));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        int i2 = 0;
        if (-62135596800L > epochSecond || epochSecond >= 253402300800L) {
            b21.n(o60.i(epochSecond, "Timestamp seconds (", ") must be in range [-62135596800, 253402300799]"));
            return 0;
        }
        if (nano < 0 || nano >= 1000000000) {
            b21.n(n00.m(nano, "Timestamp nanos (", ") must be in range [0, 999999999]"));
            return 0;
        }
        if (epochSecond != 0) {
            i2 = ProtoAdapter.f43457k.i(1, Long.valueOf(epochSecond));
        }
        if (nano == 0) {
            return i2;
        }
        return ProtoAdapter.f43454h.i(2, Integer.valueOf(nano)) + i2;
    }
}
