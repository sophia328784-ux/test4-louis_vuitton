package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.BufferedSink;
import okio.ByteString;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/ProtoWriter;", "", "Lokio/BufferedSink;", "sink", "<init>", "(Lokio/BufferedSink;)V", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoWriter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f43473b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BufferedSink f43474a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/squareup/wire/ProtoWriter$Companion;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static int a(int i2) {
            if ((i2 & (-128)) == 0) {
                return 1;
            }
            if ((i2 & (-16384)) == 0) {
                return 2;
            }
            if (((-2097152) & i2) == 0) {
                return 3;
            }
            return (i2 & (-268435456)) == 0 ? 4 : 5;
        }

        public static int b(long j2) {
            if (((-128) & j2) == 0) {
                return 1;
            }
            if (((-16384) & j2) == 0) {
                return 2;
            }
            if (((-2097152) & j2) == 0) {
                return 3;
            }
            if (((-268435456) & j2) == 0) {
                return 4;
            }
            if (((-34359738368L) & j2) == 0) {
                return 5;
            }
            if (((-4398046511104L) & j2) == 0) {
                return 6;
            }
            if (((-562949953421312L) & j2) == 0) {
                return 7;
            }
            if (((-72057594037927936L) & j2) == 0) {
                return 8;
            }
            return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
        }
    }

    public ProtoWriter(BufferedSink bufferedSink) {
        bufferedSink.getClass();
        this.f43474a = bufferedSink;
    }

    public final void a(ByteString byteString) {
        byteString.getClass();
        this.f43474a.G1(byteString);
    }

    public final void b(int i2) {
        while (true) {
            int i3 = i2 & (-128);
            BufferedSink bufferedSink = this.f43474a;
            if (i3 == 0) {
                bufferedSink.writeByte(i2);
                return;
            } else {
                bufferedSink.writeByte((i2 & CertificateBody.profileType) | 128);
                i2 >>>= 7;
            }
        }
    }

    public final void c(long j2) {
        while (true) {
            long j3 = (-128) & j2;
            BufferedSink bufferedSink = this.f43474a;
            if (j3 == 0) {
                bufferedSink.writeByte((int) j2);
                return;
            } else {
                bufferedSink.writeByte((((int) j2) & CertificateBody.profileType) | 128);
                j2 >>>= 7;
            }
        }
    }
}
