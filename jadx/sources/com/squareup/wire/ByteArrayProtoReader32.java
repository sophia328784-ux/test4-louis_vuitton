package com.squareup.wire;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.r81;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.SegmentedByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/squareup/wire/ByteArrayProtoReader32;", "Lcom/squareup/wire/ProtoReader32;", "", Payload.SOURCE, "", "pos", ConfigurationName.CELLINFO_LIMIT, "<init>", "([BII)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ByteArrayProtoReader32 implements ProtoReader32 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f43440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43442c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43444f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FieldEncoding f43445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f43446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ProtoReader32AsProtoReader f43447j;

    public ByteArrayProtoReader32(byte[] bArr, int i2, int i3) {
        bArr.getClass();
        this.f43440a = bArr;
        this.f43441b = i2;
        this.f43442c = i3;
        this.f43443e = 2;
        this.f43444f = -1;
        this.g = -1;
        this.f43446i = new ArrayList();
    }

    @Override // com.squareup.wire.ProtoReader32
    public final long a() throws IOException {
        int i2 = this.f43443e;
        if (i2 != 1 && i2 != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED64 or LENGTH_DELIMITED but was ");
            sb.append(this.f43443e);
            sb.append(". Reader position: ");
            sb.append(this.f43441b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
        }
        int i3 = this.f43441b;
        int i4 = i3 + 8;
        if (i4 > this.f43442c) {
            md.e();
            return 0L;
        }
        int i5 = i3 + 1;
        this.f43441b = i5;
        byte[] bArr = this.f43440a;
        long j2 = ((long) bArr[i3]) & 255;
        int i6 = i3 + 2;
        this.f43441b = i6;
        long j3 = j2 | ((((long) bArr[i5]) & 255) << 8);
        int i7 = i3 + 3;
        this.f43441b = i7;
        long j4 = j3 | ((((long) bArr[i6]) & 255) << 16);
        int i8 = i3 + 4;
        this.f43441b = i8;
        long j5 = j4 | ((((long) bArr[i7]) & 255) << 24);
        int i9 = i3 + 5;
        this.f43441b = i9;
        long j6 = j5 | ((((long) bArr[i8]) & 255) << 32);
        int i10 = i3 + 6;
        this.f43441b = i10;
        long j7 = j6 | ((((long) bArr[i9]) & 255) << 40);
        int i11 = i3 + 7;
        this.f43441b = i11;
        long j8 = j7 | ((((long) bArr[i10]) & 255) << 48);
        this.f43441b = i4;
        long j9 = ((((long) bArr[i11]) & 255) << 56) | j8;
        n(1);
        return j9;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final ByteString b() throws ProtocolException, EOFException {
        int iO = o();
        int i2 = this.f43441b;
        int i3 = i2 + iO;
        if (i3 > this.f43442c) {
            md.e();
            return null;
        }
        ByteString.f77398e.getClass();
        byte[] bArr = this.f43440a;
        bArr.getClass();
        SegmentedByteString.b(bArr.length, i2, iO);
        ByteString byteString = new ByteString(ArraysKt.o(bArr, i2, i3));
        this.f43441b = i3;
        return byteString;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final int c() throws IOException {
        int i2 = this.f43443e;
        if (i2 != 5 && i2 != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED32 or LENGTH_DELIMITED but was ");
            sb.append(this.f43443e);
            sb.append(". Reader position: ");
            sb.append(this.f43441b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
        }
        int i3 = this.f43441b;
        int i4 = i3 + 4;
        if (i4 > this.f43442c) {
            md.e();
            return 0;
        }
        int i5 = i3 + 1;
        this.f43441b = i5;
        byte[] bArr = this.f43440a;
        int i6 = bArr[i3] & 255;
        int i7 = i3 + 2;
        this.f43441b = i7;
        int i8 = ((bArr[i5] & 255) << 8) | i6;
        int i9 = i3 + 3;
        this.f43441b = i9;
        int i10 = i8 | ((bArr[i7] & 255) << 16);
        this.f43441b = i4;
        int i11 = ((bArr[i9] & 255) << 24) | i10;
        n(5);
        return i11;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final String d() throws ProtocolException, EOFException {
        int iO = o();
        int i2 = this.f43441b;
        int i3 = iO + i2;
        if (i3 > this.f43442c) {
            md.e();
            return null;
        }
        String strM = StringsKt.m(i2, i3, this.f43440a, 4);
        this.f43441b = i3;
        return strM;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final void e() throws IOException {
        int i2 = this.f43443e;
        if (i2 == 0) {
            m();
            return;
        }
        if (i2 == 1) {
            a();
            return;
        }
        if (i2 != 2) {
            if (i2 == 5) {
                c();
                return;
            } else {
                md.k("Unexpected call to skip()");
                return;
            }
        }
        int iO = this.f43441b + o();
        if (iO <= this.f43442c) {
            this.f43441b = iO;
        } else {
            md.e();
        }
    }

    @Override // com.squareup.wire.ProtoReader32
    public final void f(int i2) {
        FieldEncoding fieldEncoding = this.f43445h;
        fieldEncoding.getClass();
        k(i2, fieldEncoding, fieldEncoding.b().b(this));
    }

    @Override // com.squareup.wire.ProtoReader32
    /* JADX INFO: renamed from: g, reason: from getter */
    public final FieldEncoding getF43445h() {
        return this.f43445h;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final int h() throws IOException {
        if (this.f43443e != 2) {
            md.k("Unexpected call to beginMessage()");
            return 0;
        }
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 > 100) {
            az.o("Wire recursion limit exceeded");
            return 0;
        }
        ArrayList arrayList = this.f43446i;
        if (i2 > arrayList.size()) {
            arrayList.add(new Buffer());
        }
        int i3 = this.g;
        this.g = -1;
        this.f43443e = 6;
        return i3;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final ProtoReader32AsProtoReader i() {
        ProtoReader32AsProtoReader protoReader32AsProtoReader = this.f43447j;
        if (protoReader32AsProtoReader != null) {
            return protoReader32AsProtoReader;
        }
        ProtoReader32AsProtoReader protoReader32AsProtoReader2 = new ProtoReader32AsProtoReader(this);
        this.f43447j = protoReader32AsProtoReader2;
        return protoReader32AsProtoReader2;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final int j() throws IOException {
        int i2 = this.f43443e;
        if (i2 == 0 || i2 == 2) {
            int iP = p();
            n(0);
            return iP;
        }
        StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
        sb.append(this.f43443e);
        sb.append(". Reader position: ");
        sb.append(this.f43441b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
    }

    @Override // com.squareup.wire.ProtoReader32
    public final void k(int i2, FieldEncoding fieldEncoding, Object obj) {
        fieldEncoding.getClass();
        ProtoWriter protoWriter = new ProtoWriter((BufferedSink) this.f43446i.get(this.d - 1));
        ProtoAdapter protoAdapterB = fieldEncoding.b();
        protoAdapterB.getClass();
        protoAdapterB.f(protoWriter, i2, obj);
    }

    @Override // com.squareup.wire.ProtoReader32
    public final ByteString l(int i2) throws IOException {
        if (this.f43443e != 6) {
            md.k("Unexpected call to endMessage()");
            return null;
        }
        int i3 = this.d - 1;
        this.d = i3;
        if (i3 < 0 || this.g != -1) {
            md.k("No corresponding call to beginMessage()");
            return null;
        }
        if (this.f43441b != this.f43442c && i3 != 0) {
            md.i(" but was ", this.f43442c, this.f43441b, "Expected to end at ");
            return null;
        }
        this.f43442c = i2;
        Buffer buffer = (Buffer) this.f43446i.get(i3);
        long j2 = buffer.f77390c;
        return j2 > 0 ? buffer.N0(j2) : ByteString.f77399f;
    }

    @Override // com.squareup.wire.ProtoReader32
    public final long m() throws IOException {
        int i2 = this.f43443e;
        if (i2 != 0 && i2 != 2) {
            StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
            sb.append(this.f43443e);
            sb.append(". Reader position: ");
            sb.append(this.f43441b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
        }
        long j2 = 0;
        for (int i3 = 0; i3 < 64; i3 += 7) {
            byte bQ = q();
            j2 |= ((long) (bQ & 127)) << i3;
            if ((bQ & 128) == 0) {
                n(0);
                return j2;
            }
        }
        StringBuilder sb2 = new StringBuilder("WireInput encountered a malformed varint. Reader position: ");
        sb2.append(this.f43441b);
        sb2.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb2, this.f43444f, JwtParser.SEPARATOR_CHAR));
    }

    public final void n(int i2) throws IOException {
        if (this.f43443e == i2) {
            this.f43443e = 6;
            return;
        }
        int i3 = this.f43441b;
        int i4 = this.f43442c;
        if (i3 > i4) {
            md.i(" but was ", this.f43442c, this.f43441b, "Expected to end at ");
        } else {
            if (i3 != i4) {
                this.f43443e = 7;
                return;
            }
            this.f43442c = this.g;
            this.g = -1;
            this.f43443e = 6;
        }
    }

    @Override // com.squareup.wire.ProtoReader32
    public final int nextTag() throws IOException {
        int i2 = this.f43443e;
        if (i2 == 7) {
            this.f43443e = 2;
            return this.f43444f;
        }
        if (i2 != 6) {
            md.k("Unexpected call to nextTag()");
            return 0;
        }
        while (this.f43441b < this.f43442c) {
            int iP = p();
            if (iP == 0) {
                StringBuilder sb = new StringBuilder("Unexpected tag 0. Reader position: ");
                sb.append(this.f43441b);
                sb.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
            }
            int i3 = iP >>> 3;
            this.f43444f = i3;
            int i4 = iP & 7;
            if (i4 == 0) {
                this.f43445h = FieldEncoding.VARINT;
                this.f43443e = 0;
                return i3;
            }
            if (i4 == 1) {
                this.f43445h = FieldEncoding.FIXED64;
                this.f43443e = 1;
                return i3;
            }
            if (i4 == 2) {
                this.f43445h = FieldEncoding.LENGTH_DELIMITED;
                this.f43443e = 2;
                int iP2 = p();
                if (iP2 < 0) {
                    StringBuilder sbQ = fc.q(iP2, "Negative length: ", ". Reader position: ");
                    sbQ.append(this.f43441b);
                    sbQ.append(". Last read tag: ");
                    throw new ProtocolException(tr.k(sbQ, this.f43444f, JwtParser.SEPARATOR_CHAR));
                }
                if (this.g != -1) {
                    r81.b();
                    return 0;
                }
                int i5 = this.f43442c;
                this.g = i5;
                int i6 = this.f43441b + iP2;
                this.f43442c = i6;
                if (i6 <= i5) {
                    return this.f43444f;
                }
                md.e();
                return 0;
            }
            if (i4 != 3) {
                if (i4 == 4) {
                    StringBuilder sb2 = new StringBuilder("Unexpected end group. Reader position: ");
                    sb2.append(this.f43441b);
                    sb2.append(". Last read tag: ");
                    throw new ProtocolException(tr.k(sb2, this.f43444f, JwtParser.SEPARATOR_CHAR));
                }
                if (i4 == 5) {
                    this.f43445h = FieldEncoding.FIXED32;
                    this.f43443e = 5;
                    return i3;
                }
                StringBuilder sbQ2 = fc.q(i4, "Unexpected field encoding: ", ". Reader position: ");
                sbQ2.append(this.f43441b);
                sbQ2.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sbQ2, this.f43444f, JwtParser.SEPARATOR_CHAR));
            }
            r(i3);
        }
        return -1;
    }

    public final int o() throws ProtocolException {
        if (this.f43443e == 2) {
            int i2 = this.f43442c - this.f43441b;
            this.f43443e = 6;
            this.f43442c = this.g;
            this.g = -1;
            return i2;
        }
        StringBuilder sb = new StringBuilder("Expected LENGTH_DELIMITED but was ");
        sb.append(this.f43443e);
        sb.append(". Reader position: ");
        sb.append(this.f43441b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
    }

    public final int p() throws ProtocolException, EOFException {
        int i2;
        byte bQ = q();
        if (bQ >= 0) {
            return bQ;
        }
        int i3 = bQ & 127;
        byte bQ2 = q();
        if (bQ2 >= 0) {
            i2 = bQ2 << 7;
        } else {
            i3 |= (bQ2 & 127) << 7;
            byte bQ3 = q();
            if (bQ3 >= 0) {
                i2 = bQ3 << 14;
            } else {
                i3 |= (bQ3 & 127) << 14;
                byte bQ4 = q();
                if (bQ4 < 0) {
                    int i4 = i3 | ((bQ4 & 127) << 21);
                    byte bQ5 = q();
                    int i5 = i4 | (bQ5 << 28);
                    if (bQ5 < 0) {
                        for (int i6 = 0; i6 < 5; i6++) {
                            if (q() < 0) {
                            }
                        }
                        StringBuilder sb = new StringBuilder("Malformed VARINT. Reader position: ");
                        sb.append(this.f43441b);
                        sb.append(". Last read tag: ");
                        throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
                    }
                    return i5;
                }
                i2 = bQ4 << 21;
            }
        }
        return i2 | i3;
    }

    public final byte q() throws EOFException {
        int i2 = this.f43441b;
        if (i2 != this.f43442c) {
            this.f43441b = i2 + 1;
            return this.f43440a[i2];
        }
        md.e();
        return (byte) 0;
    }

    public final void r(int i2) throws IOException {
        while (this.f43441b < this.f43442c) {
            int iP = p();
            if (iP == 0) {
                StringBuilder sb = new StringBuilder("Unexpected tag 0. Reader position: ");
                sb.append(this.f43441b);
                sb.append(". Last read tag: ");
                throw new ProtocolException(tr.k(sb, this.f43444f, JwtParser.SEPARATOR_CHAR));
            }
            int i3 = iP >>> 3;
            int i4 = iP & 7;
            if (i4 == 0) {
                this.f43443e = 0;
                m();
            } else if (i4 == 1) {
                this.f43443e = 1;
                a();
            } else if (i4 == 2) {
                int iP2 = p();
                if (iP2 < 0) {
                    StringBuilder sbQ = fc.q(iP2, "Negative length: ", ". Reader position: ");
                    sbQ.append(this.f43441b);
                    sbQ.append(". Last read tag: ");
                    sbQ.append(i3);
                    sbQ.append(JwtParser.SEPARATOR_CHAR);
                    throw new ProtocolException(sbQ.toString());
                }
                int i5 = this.f43441b + iP2;
                if (i5 > this.f43442c) {
                    md.e();
                    return;
                }
                this.f43441b = i5;
            } else {
                if (i4 == 3) {
                    int i6 = this.d + 1;
                    this.d = i6;
                    if (i6 > 100) {
                        throw new IOException("Wire recursion limit exceeded");
                    }
                    try {
                        r(i3);
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
                    throw new ProtocolException("Unexpected end group. Reader position: " + this.f43441b + ". Last read tag: " + i3 + JwtParser.SEPARATOR_CHAR);
                }
                if (i4 != 5) {
                    StringBuilder sbQ2 = fc.q(i4, "Unexpected field encoding: ", ". Reader position: ");
                    sbQ2.append(this.f43441b);
                    sbQ2.append(". Last read tag: ");
                    sbQ2.append(i3);
                    sbQ2.append(JwtParser.SEPARATOR_CHAR);
                    throw new ProtocolException(sbQ2.toString());
                }
                this.f43443e = 5;
                c();
            }
        }
        md.e();
    }

    public /* synthetic */ ByteArrayProtoReader32(byte[] bArr, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? bArr.length : i3);
    }
}
