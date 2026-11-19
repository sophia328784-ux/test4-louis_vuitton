package com.airbnb.lottie.parser.moshi;

import defpackage.md;
import defpackage.n00;
import io.jsonwebtoken.JwtParser;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.ByteString;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonReader implements Closeable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f22270f = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f22271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f22272c;
    public String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f22273e;

    /* JADX INFO: loaded from: classes3.dex */
    public static final class Options {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f22274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final okio.Options f22275b;

        public Options(String[] strArr, okio.Options options) {
            this.f22274a = strArr;
            this.f22275b = options;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003a A[Catch: IOException -> 0x0070, TryCatch #0 {IOException -> 0x0070, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x005b), top: B:30:0x0000 }] */
        public static Options a(String... strArr) {
            String str;
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    String str2 = strArr[i2];
                    String[] strArr2 = JsonReader.f22270f;
                    buffer.m0(34);
                    int length = str2.length();
                    int i3 = 0;
                    for (int i4 = 0; i4 < length; i4++) {
                        char cCharAt = str2.charAt(i4);
                        if (cCharAt < 128) {
                            str = strArr2[cCharAt];
                            if (str != null) {
                                if (i3 < i4) {
                                    buffer.I0(i3, i4, str2);
                                }
                                buffer.M0(str);
                                i3 = i4 + 1;
                            }
                        } else {
                            if (cCharAt == 8232) {
                                str = "\\u2028";
                            } else if (cCharAt == 8233) {
                                str = "\\u2029";
                            }
                            if (i3 < i4) {
                                buffer.I0(i3, i4, str2);
                            }
                            buffer.M0(str);
                            i3 = i4 + 1;
                        }
                    }
                    if (i3 < length) {
                        buffer.I0(i3, length, str2);
                    }
                    buffer.m0(34);
                    buffer.readByte();
                    byteStringArr[i2] = buffer.N0(buffer.f77390c);
                }
                String[] strArr3 = (String[]) strArr.clone();
                okio.Options.f77428e.getClass();
                return new Options(strArr3, okio.Options.Companion.b(byteStringArr));
            } catch (IOException e2) {
                md.h(e2);
                return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes3.dex */
    public static final class Token {
        private static final /* synthetic */ Token[] $VALUES;
        public static final Token BEGIN_ARRAY;
        public static final Token BEGIN_OBJECT;
        public static final Token BOOLEAN;
        public static final Token END_ARRAY;
        public static final Token END_DOCUMENT;
        public static final Token END_OBJECT;
        public static final Token NAME;
        public static final Token NULL;
        public static final Token NUMBER;
        public static final Token STRING;

        static {
            Token token = new Token("BEGIN_ARRAY", 0);
            BEGIN_ARRAY = token;
            Token token2 = new Token("END_ARRAY", 1);
            END_ARRAY = token2;
            Token token3 = new Token("BEGIN_OBJECT", 2);
            BEGIN_OBJECT = token3;
            Token token4 = new Token("END_OBJECT", 3);
            END_OBJECT = token4;
            Token token5 = new Token("NAME", 4);
            NAME = token5;
            Token token6 = new Token("STRING", 5);
            STRING = token6;
            Token token7 = new Token("NUMBER", 6);
            NUMBER = token7;
            Token token8 = new Token("BOOLEAN", 7);
            BOOLEAN = token8;
            Token token9 = new Token("NULL", 8);
            NULL = token9;
            Token token10 = new Token("END_DOCUMENT", 9);
            END_DOCUMENT = token10;
            $VALUES = new Token[]{token, token2, token3, token4, token5, token6, token7, token8, token9, token10};
        }

        public static Token valueOf(String str) {
            return (Token) Enum.valueOf(Token.class, str);
        }

        public static Token[] values() {
            return (Token[]) $VALUES.clone();
        }
    }

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f22270f[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f22270f;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static JsonReader u(RealBufferedSource realBufferedSource) {
        return new JsonUtf8Reader(realBufferedSource);
    }

    public abstract void B();

    public abstract void C();

    public final void E(String str) throws JsonEncodingException {
        StringBuilder sbU = n00.u(str, " at path ");
        sbU.append(n());
        throw new JsonEncodingException(sbU.toString());
    }

    public abstract void h();

    public abstract void j();

    public abstract void k();

    public abstract void m();

    public final String n() {
        int i2 = this.f22271b;
        int[] iArr = this.f22272c;
        String[] strArr = this.d;
        int[] iArr2 = this.f22273e;
        StringBuilder sb = new StringBuilder("$");
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(iArr2[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append(JwtParser.SEPARATOR_CHAR);
                String str = strArr[i3];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public abstract boolean o();

    public abstract boolean p();

    public abstract double q();

    public abstract int r();

    public abstract String s();

    public abstract String t();

    public abstract Token w();

    public final void y(int i2) {
        int i3 = this.f22271b;
        int[] iArr = this.f22272c;
        if (i3 == iArr.length) {
            if (i3 == 256) {
                throw new JsonDataException("Nesting too deep at ".concat(n()));
            }
            this.f22272c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f22273e;
            this.f22273e = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f22272c;
        int i4 = this.f22271b;
        this.f22271b = i4 + 1;
        iArr3[i4] = i2;
    }

    public abstract int z(Options options);
}
