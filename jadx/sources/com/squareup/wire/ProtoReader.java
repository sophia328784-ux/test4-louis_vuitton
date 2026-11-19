package com.squareup.wire;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.r81;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/ProtoReader;", "", "Lokio/BufferedSource;", Payload.SOURCE, "<init>", "(Lokio/BufferedSource;)V", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ProtoReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BufferedSource f43465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f43466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f43467c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43469f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FieldEncoding f43470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f43471i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/squareup/wire/ProtoReader$Companion;", "", "", "RECURSION_LIMIT", "I", "FIELD_ENCODING_MASK", "TAG_FIELD_ENCODING_BITS", "STATE_VARINT", "STATE_FIXED64", "STATE_LENGTH_DELIMITED", "STATE_START_GROUP", "STATE_END_GROUP", "STATE_FIXED32", "STATE_TAG", "STATE_PACKED_TAG", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ProtoReader(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        this.f43465a = bufferedSource;
        this.f43467c = Long.MAX_VALUE;
        this.f43468e = 2;
        this.f43469f = -1;
        this.g = -1L;
        this.f43471i = new ArrayList();
    }

    public void a(int i2, FieldEncoding fieldEncoding, Object obj) {
        fieldEncoding.getClass();
        ProtoWriter protoWriter = new ProtoWriter((BufferedSink) this.f43471i.get(this.d - 1));
        ProtoAdapter protoAdapterB = fieldEncoding.b();
        protoAdapterB.getClass();
        protoAdapterB.f(protoWriter, i2, obj);
    }

    public final void b(int i2) throws IOException {
        if (this.f43468e == i2) {
            this.f43468e = 6;
            return;
        }
        long j2 = this.f43466b;
        long j3 = this.f43467c;
        if (j2 > j3) {
            no0.p("Expected to end at ", this.f43467c, " but was ", this.f43466b);
        } else {
            if (j2 != j3) {
                this.f43468e = 7;
                return;
            }
            this.f43467c = this.g;
            this.g = -1L;
            this.f43468e = 6;
        }
    }

    public final long c() throws ProtocolException {
        if (this.f43468e != 2) {
            StringBuilder sb = new StringBuilder("Expected LENGTH_DELIMITED but was ");
            sb.append(this.f43468e);
            sb.append(". Reader position: ");
            sb.append(this.f43466b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
        }
        long j2 = this.f43467c - this.f43466b;
        this.f43465a.D0(j2);
        this.f43468e = 6;
        this.f43466b = this.f43467c;
        this.f43467c = this.g;
        this.g = -1L;
        return j2;
    }

    public long d() throws IOException {
        if (this.f43468e != 2) {
            md.k("Unexpected call to beginMessage()");
            return 0L;
        }
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 > 100) {
            az.o("Wire recursion limit exceeded");
            return 0L;
        }
        ArrayList arrayList = this.f43471i;
        if (i2 > arrayList.size()) {
            arrayList.add(new Buffer());
        }
        long j2 = this.g;
        this.g = -1L;
        this.f43468e = 6;
        return j2;
    }

    public ByteString e(long j2) throws IOException {
        if (this.f43468e != 6) {
            md.k("Unexpected call to endMessage()");
            return null;
        }
        int i2 = this.d - 1;
        this.d = i2;
        if (i2 < 0 || this.g != -1) {
            md.k("No corresponding call to beginMessage()");
            return null;
        }
        if (this.f43466b != this.f43467c && i2 != 0) {
            no0.p("Expected to end at ", this.f43467c, " but was ", this.f43466b);
            return null;
        }
        this.f43467c = j2;
        Buffer buffer = (Buffer) this.f43471i.get(i2);
        long j3 = buffer.f77390c;
        return j3 > 0 ? buffer.N0(j3) : ByteString.f77399f;
    }

    public final int f() throws ProtocolException {
        int i2;
        BufferedSource bufferedSource = this.f43465a;
        bufferedSource.D0(1L);
        this.f43466b++;
        byte b2 = bufferedSource.readByte();
        if (b2 >= 0) {
            return b2;
        }
        int i3 = b2 & 127;
        bufferedSource.D0(1L);
        this.f43466b++;
        byte b3 = bufferedSource.readByte();
        if (b3 >= 0) {
            i2 = b3 << 7;
        } else {
            i3 |= (b3 & 127) << 7;
            bufferedSource.D0(1L);
            this.f43466b++;
            byte b4 = bufferedSource.readByte();
            if (b4 >= 0) {
                i2 = b4 << 14;
            } else {
                i3 |= (b4 & 127) << 14;
                bufferedSource.D0(1L);
                this.f43466b++;
                byte b5 = bufferedSource.readByte();
                if (b5 < 0) {
                    int i4 = i3 | ((b5 & 127) << 21);
                    bufferedSource.D0(1L);
                    this.f43466b++;
                    byte b6 = bufferedSource.readByte();
                    int i5 = i4 | (b6 << 28);
                    if (b6 < 0) {
                        for (int i6 = 0; i6 < 5; i6++) {
                            bufferedSource.D0(1L);
                            this.f43466b++;
                            if (bufferedSource.readByte() < 0) {
                            }
                        }
                        StringBuilder sb = new StringBuilder("Malformed VARINT. Reader position: ");
                        sb.append(this.f43466b);
                        sb.append(". Last read tag: ");
                        throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
                    }
                    return i5;
                }
                i2 = b5 << 21;
            }
        }
        return i2 | i3;
    }

    public int g() throws IOException {
        int i2 = this.f43468e;
        if (i2 == 7) {
            this.f43468e = 2;
            return this.f43469f;
        }
        if (i2 != 6) {
            md.k("Unexpected call to nextTag()");
            return 0;
        }
        while (this.f43466b < this.f43467c && !this.f43465a.Z0()) {
            int iF = f();
            if (iF == 0) {
                StringBuilder sb = new StringBuilder("Unexpected tag 0. Reader position: ");
                sb.append(this.f43466b);
                sb.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
            }
            int i3 = iF >>> 3;
            this.f43469f = i3;
            int i4 = iF & 7;
            if (i4 == 0) {
                this.f43470h = FieldEncoding.VARINT;
                this.f43468e = 0;
                return i3;
            }
            if (i4 == 1) {
                this.f43470h = FieldEncoding.FIXED64;
                this.f43468e = 1;
                return i3;
            }
            if (i4 == 2) {
                this.f43470h = FieldEncoding.LENGTH_DELIMITED;
                this.f43468e = 2;
                int iF2 = f();
                if (iF2 < 0) {
                    StringBuilder sbQ = fc.q(iF2, "Negative length: ", ". Reader position: ");
                    sbQ.append(this.f43466b);
                    sbQ.append(". Last read tag: ");
                    throw new ProtocolException(tr.k(sbQ, this.f43469f, JwtParser.SEPARATOR_CHAR));
                }
                if (this.g != -1) {
                    r81.b();
                    return 0;
                }
                long j2 = this.f43467c;
                this.g = j2;
                long j3 = this.f43466b + ((long) iF2);
                this.f43467c = j3;
                if (j3 <= j2) {
                    return this.f43469f;
                }
                md.e();
                return 0;
            }
            if (i4 != 3) {
                if (i4 == 4) {
                    StringBuilder sb2 = new StringBuilder("Unexpected end group. Reader position: ");
                    sb2.append(this.f43466b);
                    sb2.append(". Last read tag: ");
                    throw new ProtocolException(tr.k(sb2, this.f43469f, JwtParser.SEPARATOR_CHAR));
                }
                if (i4 == 5) {
                    this.f43470h = FieldEncoding.FIXED32;
                    this.f43468e = 5;
                    return i3;
                }
                StringBuilder sbQ2 = fc.q(i4, "Unexpected field encoding: ", ". Reader position: ");
                sbQ2.append(this.f43466b);
                sbQ2.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sbQ2, this.f43469f, JwtParser.SEPARATOR_CHAR));
            }
            q(i3);
        }
        return -1;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public FieldEncoding getF43470h() {
        return this.f43470h;
    }

    public ByteString i() throws ProtocolException {
        long jC = c();
        BufferedSource bufferedSource = this.f43465a;
        bufferedSource.D0(jC);
        return bufferedSource.N0(jC);
    }

    public int j() throws IOException {
        int i2 = this.f43468e;
        if (i2 == 5 || i2 == 2) {
            BufferedSource bufferedSource = this.f43465a;
            bufferedSource.D0(4L);
            this.f43466b += 4;
            int iW1 = bufferedSource.w1();
            b(5);
            return iW1;
        }
        StringBuilder sb = new StringBuilder("Expected FIXED32 or LENGTH_DELIMITED but was ");
        sb.append(this.f43468e);
        sb.append(". Reader position: ");
        sb.append(this.f43466b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
    }

    public long k() throws IOException {
        int i2 = this.f43468e;
        if (i2 == 1 || i2 == 2) {
            BufferedSource bufferedSource = this.f43465a;
            bufferedSource.D0(8L);
            this.f43466b += 8;
            long jA0 = bufferedSource.A0();
            b(1);
            return jA0;
        }
        StringBuilder sb = new StringBuilder("Expected FIXED64 or LENGTH_DELIMITED but was ");
        sb.append(this.f43468e);
        sb.append(". Reader position: ");
        sb.append(this.f43466b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
    }

    public String l() throws ProtocolException {
        long jC = c();
        BufferedSource bufferedSource = this.f43465a;
        bufferedSource.D0(jC);
        return bufferedSource.K0(jC);
    }

    public void m(int i2) {
        FieldEncoding f43470h = getF43470h();
        f43470h.getClass();
        a(i2, f43470h, f43470h.b().c(this));
    }

    public int n() {
        int i2 = this.f43468e;
        if (i2 == 0 || i2 == 2) {
            int iF = f();
            b(0);
            return iF;
        }
        StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
        sb.append(this.f43468e);
        sb.append(". Reader position: ");
        sb.append(this.f43466b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
    }

    public long o() throws IOException {
        int i2 = this.f43468e;
        if (i2 != 0 && i2 != 2) {
            StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
            sb.append(this.f43468e);
            sb.append(". Reader position: ");
            sb.append(this.f43466b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
        }
        long j2 = 0;
        for (int i3 = 0; i3 < 64; i3 += 7) {
            BufferedSource bufferedSource = this.f43465a;
            bufferedSource.D0(1L);
            this.f43466b++;
            byte b2 = bufferedSource.readByte();
            j2 |= ((long) (b2 & 127)) << i3;
            if ((b2 & 128) == 0) {
                b(0);
                return j2;
            }
        }
        StringBuilder sb2 = new StringBuilder("Malformed VARINT. Reader position: ");
        sb2.append(this.f43466b);
        sb2.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb2, this.f43469f, JwtParser.SEPARATOR_CHAR));
    }

    public void p() throws IOException {
        int i2 = this.f43468e;
        if (i2 == 0) {
            o();
            return;
        }
        if (i2 == 1) {
            k();
            return;
        }
        if (i2 == 2) {
            this.f43465a.skip(c());
        } else if (i2 == 5) {
            j();
        } else {
            md.k("Unexpected call to skip()");
        }
    }

    public final void q(int i2) throws IOException {
        while (this.f43466b < this.f43467c) {
            BufferedSource bufferedSource = this.f43465a;
            if (bufferedSource.Z0()) {
                break;
            }
            int iF = f();
            if (iF == 0) {
                StringBuilder sb = new StringBuilder("Unexpected tag 0. Reader position: ");
                sb.append(this.f43466b);
                sb.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sb, this.f43469f, JwtParser.SEPARATOR_CHAR));
            }
            int i3 = iF >>> 3;
            int i4 = iF & 7;
            if (i4 == 0) {
                this.f43468e = 0;
                o();
            } else if (i4 == 1) {
                this.f43468e = 1;
                k();
            } else if (i4 == 2) {
                int iF2 = f();
                if (iF2 < 0) {
                    StringBuilder sbQ = fc.q(iF2, "Negative length: ", ". Reader position: ");
                    sbQ.append(this.f43466b);
                    sbQ.append(". Last read tag: ");
                    sbQ.append(i3);
                    sbQ.append(JwtParser.SEPARATOR_CHAR);
                    throw new ProtocolException(sbQ.toString());
                }
                long j2 = iF2;
                this.f43466b += j2;
                bufferedSource.skip(j2);
            } else {
                if (i4 == 3) {
                    int i5 = this.d + 1;
                    this.d = i5;
                    if (i5 > 100) {
                        throw new IOException("Wire recursion limit exceeded");
                    }
                    try {
                        q(i3);
                        this.d--;
                    } catch (Throwable th) {
                        this.d--;
                        throw th;
                    }
                    this.d--;
                    throw th;
                }
                if (i4 == 4) {
                    if (i3 == i2) {
                        return;
                    }
                    throw new ProtocolException("Unexpected end group. Reader position: " + this.f43466b + ". Last read tag: " + i3 + JwtParser.SEPARATOR_CHAR);
                }
                if (i4 != 5) {
                    StringBuilder sbQ2 = fc.q(i4, "Unexpected field encoding: ", ". Reader position: ");
                    sbQ2.append(this.f43466b);
                    sbQ2.append(". Last read tag: ");
                    sbQ2.append(i3);
                    sbQ2.append(JwtParser.SEPARATOR_CHAR);
                    throw new ProtocolException(sbQ2.toString());
                }
                this.f43468e = 5;
                j();
            }
        }
        md.e();
    }
}
