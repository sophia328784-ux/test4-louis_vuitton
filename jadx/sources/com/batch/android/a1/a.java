package com.batch.android.a1;

import com.batch.android.z0.m;
import com.batch.android.z0.n;
import com.batch.android.z0.o;
import com.batch.android.z0.p;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends b implements o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f22904e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final byte[] f22905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile String f22906c;
    private volatile CharacterCodingException d;

    public a(String str) {
        this.f22906c = str;
        this.f22905b = str.getBytes(com.batch.android.x0.h.f24170a);
    }

    public static void a(StringBuilder sb, String str) {
        sb.append("\"");
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < ' ') {
                switch (cCharAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    case 11:
                    default:
                        a(sb, cCharAt);
                        break;
                    case '\f':
                        sb.append("\\f");
                        break;
                    case '\r':
                        sb.append("\\r");
                        break;
                }
            } else if (cCharAt <= 127) {
                if (cCharAt == '\"') {
                    sb.append("\\\"");
                } else if (cCharAt != '\\') {
                    sb.append(cCharAt);
                } else {
                    sb.append("\\\\");
                }
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                sb.append(cCharAt);
            } else {
                a(sb, cCharAt);
            }
        }
        sb.append("\"");
    }

    private void b0() {
        synchronized (this.f22905b) {
            if (this.f22906c != null) {
                return;
            }
            try {
                CharsetDecoder charsetDecoderNewDecoder = com.batch.android.x0.h.f24170a.newDecoder();
                CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
                this.f22906c = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(q()).toString();
            } catch (CharacterCodingException e2) {
                try {
                    CharsetDecoder charsetDecoderNewDecoder2 = com.batch.android.x0.h.f24170a.newDecoder();
                    CodingErrorAction codingErrorAction2 = CodingErrorAction.REPLACE;
                    this.f22906c = charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2).decode(q()).toString();
                    this.d = e2;
                } catch (CharacterCodingException e3) {
                    throw new com.batch.android.x0.l(e3);
                }
            }
        }
    }

    @Override // com.batch.android.z0.v
    public String G() {
        if (this.f22906c == null) {
            b0();
        }
        if (this.d == null) {
            return this.f22906c;
        }
        throw new com.batch.android.x0.l(this.d);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean L() {
        return super.L();
    }

    @Override // com.batch.android.z0.v
    public byte[] M() {
        byte[] bArr = this.f22905b;
        return Arrays.copyOf(bArr, bArr.length);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean N() {
        return super.N();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean P() {
        return super.P();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean R() {
        return super.R();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean W() {
        return super.W();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean Y() {
        return super.Y();
    }

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: Z */
    public /* bridge */ /* synthetic */ com.batch.android.z0.i D() {
        return super.D();
    }

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: a0 */
    public /* bridge */ /* synthetic */ n X() {
        return super.X();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.j b() {
        return super.b();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.f c() {
        return super.c();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.l d() {
        return super.d();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.g e() {
        return super.e();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ m f() {
        return super.f();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ p h() {
        return super.h();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.h j() {
        return super.j();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean o() {
        return super.o();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean p() {
        return super.p();
    }

    @Override // com.batch.android.z0.v
    public ByteBuffer q() {
        return ByteBuffer.wrap(this.f22905b).asReadOnlyBuffer();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean r() {
        return super.r();
    }

    @Override // com.batch.android.z0.x
    public String s() {
        StringBuilder sb = new StringBuilder();
        a(sb, toString());
        return sb.toString();
    }

    @Override // com.batch.android.z0.v
    public String toString() {
        if (this.f22906c == null) {
            b0();
        }
        return this.f22906c;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean y() {
        return super.y();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public o i() {
        return this;
    }

    public a(byte[] bArr) {
        this.f22905b = bArr;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.k a() {
        return super.a();
    }

    private static void a(StringBuilder sb, int i2) {
        sb.append("\\u");
        char[] cArr = f22904e;
        sb.append(cArr[(i2 >> 12) & 15]);
        sb.append(cArr[(i2 >> 8) & 15]);
        sb.append(cArr[(i2 >> 4) & 15]);
        sb.append(cArr[i2 & 15]);
    }
}
