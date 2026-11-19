package com.squareup.moshi;

import defpackage.d20;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JsonReader implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f43359c;
    public String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f43360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f43361f;
    public boolean g;

    /* JADX INFO: renamed from: com.squareup.moshi.JsonReader$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f43362a;

        static {
            int[] iArr = new int[Token.values().length];
            f43362a = iArr;
            try {
                iArr[Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43362a[Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43362a[Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43362a[Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f43362a[Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f43362a[Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class Options {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f43363a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final okio.Options f43364b;

        public Options(String[] strArr, okio.Options options) {
            this.f43363a = strArr;
            this.f43364b = options;
        }

        public static Options a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    JsonUtf8Writer.j0(buffer, strArr[i2]);
                    buffer.readByte();
                    byteStringArr[i2] = buffer.N0(buffer.f77390c);
                }
                String[] strArr2 = (String[]) strArr.clone();
                okio.Options.f77428e.getClass();
                return new Options(strArr2, okio.Options.Companion.b(byteStringArr));
            } catch (IOException e2) {
                md.h(e2);
                return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
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

    public JsonReader(JsonReader jsonReader) {
        this.f43358b = jsonReader.f43358b;
        this.f43359c = (int[]) jsonReader.f43359c.clone();
        this.d = (String[]) jsonReader.d.clone();
        this.f43360e = (int[]) jsonReader.f43360e.clone();
        this.f43361f = jsonReader.f43361f;
        this.g = jsonReader.g;
    }

    public static JsonReader y(BufferedSource bufferedSource) {
        return new JsonUtf8Reader(bufferedSource);
    }

    public abstract JsonReader B();

    public abstract void C();

    public final void E(int i2) {
        int i3 = this.f43358b;
        int[] iArr = this.f43359c;
        if (i3 == iArr.length) {
            if (i3 == 256) {
                throw new JsonDataException("Nesting too deep at ".concat(n()));
            }
            this.f43359c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f43360e;
            this.f43360e = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f43359c;
        int i4 = this.f43358b;
        this.f43358b = i4 + 1;
        iArr3[i4] = i2;
    }

    public final Object F() {
        switch (AnonymousClass1.f43362a[z().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                h();
                while (o()) {
                    arrayList.add(F());
                }
                k();
                return arrayList;
            case 2:
                LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
                j();
                while (o()) {
                    String strT = t();
                    Object objF = F();
                    Object objPut = linkedHashTreeMap.put(strT, objF);
                    if (objPut != null) {
                        d20.l(pq0.r("Map key '", strT, "' has multiple values at path "), n(), ": ", objPut, " and ", objF);
                        return null;
                    }
                }
                m();
                return linkedHashTreeMap;
            case 3:
                return w();
            case 4:
                return Double.valueOf(q());
            case 5:
                return Boolean.valueOf(p());
            case 6:
                u();
                return null;
            default:
                StringBuilder sb = new StringBuilder("Expected a value but was ");
                sb.append(z());
                d20.k(sb, " at path ", n());
                return null;
        }
    }

    public abstract int G(Options options);

    public abstract int H(Options options);

    public abstract void h();

    public abstract void i0();

    public abstract void j();

    public abstract void j0();

    public abstract void k();

    public final void k0(String str) throws JsonEncodingException {
        StringBuilder sbU = n00.u(str, " at path ");
        sbU.append(n());
        throw new JsonEncodingException(sbU.toString());
    }

    public final JsonDataException l0(Object obj, Object obj2) {
        if (obj == null) {
            return new JsonDataException("Expected " + obj2 + " but was null at path " + n());
        }
        return new JsonDataException("Expected " + obj2 + " but was " + obj + ", a " + obj.getClass().getName() + ", at path " + n());
    }

    public abstract void m();

    public final String n() {
        return JsonScope.a(this.f43358b, this.f43359c, this.d, this.f43360e);
    }

    public abstract boolean o();

    public abstract boolean p();

    public abstract double q();

    public abstract int r();

    public abstract long s();

    public abstract String t();

    public abstract void u();

    public abstract String w();

    public abstract Token z();

    public JsonReader() {
        this.f43359c = new int[32];
        this.d = new String[32];
        this.f43360e = new int[32];
    }
}
