package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonIOException;
import com.networkbench.com.google.gson.JsonNull;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.JsonSyntaxException;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.TypeAdapterFactory;
import com.networkbench.com.google.gson.annotations.SerializedName;
import com.networkbench.com.google.gson.internal.LazilyParsedNumber;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonToken;
import com.networkbench.com.google.gson.stream.JsonWriter;
import defpackage.a61;
import defpackage.az;
import defpackage.ct0;
import defpackage.mt;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class m {
    public static final TypeAdapter<StringBuffer> A;
    public static final TypeAdapterFactory B;
    public static final TypeAdapter<URL> C;
    public static final TypeAdapterFactory D;
    public static final TypeAdapter<URI> E;
    public static final TypeAdapterFactory F;
    public static final TypeAdapter<InetAddress> G;
    public static final TypeAdapterFactory H;
    public static final TypeAdapter<UUID> I;
    public static final TypeAdapterFactory J;
    public static final TypeAdapterFactory K;
    public static final TypeAdapter<Calendar> L;
    public static final TypeAdapterFactory M;
    public static final TypeAdapter<Locale> N;
    public static final TypeAdapterFactory O;
    public static final TypeAdapter<JsonElement> P;
    public static final TypeAdapterFactory Q;
    public static final TypeAdapterFactory R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypeAdapter<Class> f38679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeAdapterFactory f38680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TypeAdapter<BitSet> f38681c;
    public static final TypeAdapterFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TypeAdapter<Boolean> f38682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final TypeAdapter<Boolean> f38683f;
    public static final TypeAdapterFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final TypeAdapter<Number> f38684h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final TypeAdapterFactory f38685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final TypeAdapter<Number> f38686j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final TypeAdapterFactory f38687k;
    public static final TypeAdapter<Number> l;
    public static final TypeAdapterFactory m;
    public static final TypeAdapter<Number> n;
    public static final TypeAdapter<Number> o;
    public static final TypeAdapter<Number> p;
    public static final TypeAdapter<Number> q;
    public static final TypeAdapterFactory r;
    public static final TypeAdapter<Character> s;
    public static final TypeAdapterFactory t;
    public static final TypeAdapter<String> u;
    public static final TypeAdapter<BigDecimal> v;
    public static final TypeAdapter<BigInteger> w;
    public static final TypeAdapterFactory x;
    public static final TypeAdapter<StringBuilder> y;
    public static final TypeAdapterFactory z;

    /* JADX INFO: renamed from: com.networkbench.com.google.gson.internal.a.m$26, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass26 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38707a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f38707a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38707a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38707a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38707a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38707a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38707a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38707a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38707a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38707a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38707a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static {
        TypeAdapter<Class> typeAdapter = new TypeAdapter<Class>() { // from class: com.networkbench.com.google.gson.internal.a.m.1
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Class cls) throws IOException {
                if (cls == null) {
                    jsonWriter.nullValue();
                } else {
                    mt.i(n00.p(cls, new StringBuilder("Attempted to serialize java.lang.Class: "), ". Forgot to register a type adapter?"));
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Class read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                mt.i("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                return null;
            }
        };
        f38679a = typeAdapter;
        f38680b = a(Class.class, typeAdapter);
        TypeAdapter<BitSet> typeAdapter2 = new TypeAdapter<BitSet>() { // from class: com.networkbench.com.google.gson.internal.a.m.12
            /* JADX WARN: Code duplicated, block: B:19:0x003b  */
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BitSet read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                BitSet bitSet = new BitSet();
                jsonReader.beginArray();
                JsonToken jsonTokenPeek = jsonReader.peek();
                int i2 = 0;
                while (jsonTokenPeek != JsonToken.END_ARRAY) {
                    int i3 = AnonymousClass26.f38707a[jsonTokenPeek.ordinal()];
                    boolean zNextBoolean = true;
                    if (i3 != 1) {
                        if (i3 == 2) {
                            zNextBoolean = jsonReader.nextBoolean();
                        } else {
                            if (i3 != 3) {
                                throw new JsonSyntaxException("Invalid bitset value type: " + jsonTokenPeek);
                            }
                            String strNextString = jsonReader.nextString();
                            try {
                                if (Integer.parseInt(strNextString) == 0) {
                                    zNextBoolean = false;
                                }
                            } catch (NumberFormatException unused) {
                                throw new JsonSyntaxException(tr.g("Error: Expecting: bitset number value (1, 0), Found: ", strNextString));
                            }
                        }
                    } else if (jsonReader.nextInt() == 0) {
                        zNextBoolean = false;
                    }
                    if (zNextBoolean) {
                        bitSet.set(i2);
                    }
                    i2++;
                    jsonTokenPeek = jsonReader.peek();
                }
                jsonReader.endArray();
                return bitSet;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                if (bitSet == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginArray();
                for (int i2 = 0; i2 < bitSet.length(); i2++) {
                    jsonWriter.value(bitSet.get(i2) ? 1L : 0L);
                }
                jsonWriter.endArray();
            }
        };
        f38681c = typeAdapter2;
        d = a(BitSet.class, typeAdapter2);
        TypeAdapter<Boolean> typeAdapter3 = new TypeAdapter<Boolean>() { // from class: com.networkbench.com.google.gson.internal.a.m.23
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return jsonReader.peek() == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                if (bool == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(bool.booleanValue());
                }
            }
        };
        f38682e = typeAdapter3;
        f38683f = new TypeAdapter<Boolean>() { // from class: com.networkbench.com.google.gson.internal.a.m.27
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Boolean.valueOf(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool == null ? "null" : bool.toString());
            }
        };
        g = a(Boolean.TYPE, Boolean.class, typeAdapter3);
        TypeAdapter<Number> typeAdapter4 = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.28
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f38684h = typeAdapter4;
        f38685i = a(Byte.TYPE, Byte.class, typeAdapter4);
        TypeAdapter<Number> typeAdapter5 = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.29
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Short.valueOf((short) jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f38686j = typeAdapter5;
        f38687k = a(Short.TYPE, Short.class, typeAdapter5);
        TypeAdapter<Number> typeAdapter6 = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.30
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        l = typeAdapter6;
        m = a(Integer.TYPE, Integer.class, typeAdapter6);
        n = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.31
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Long.valueOf(jsonReader.nextLong());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        o = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.32
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Float.valueOf((float) jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        p = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.2
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        TypeAdapter<Number> typeAdapter7 = new TypeAdapter<Number>() { // from class: com.networkbench.com.google.gson.internal.a.m.3
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                int i2 = AnonymousClass26.f38707a[jsonTokenPeek.ordinal()];
                if (i2 == 1) {
                    return new LazilyParsedNumber(jsonReader.nextString());
                }
                if (i2 == 4) {
                    jsonReader.nextNull();
                    return null;
                }
                throw new JsonSyntaxException("Expecting number, got: " + jsonTokenPeek);
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        q = typeAdapter7;
        r = a(Number.class, typeAdapter7);
        TypeAdapter<Character> typeAdapter8 = new TypeAdapter<Character>() { // from class: com.networkbench.com.google.gson.internal.a.m.4
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Character read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if (strNextString.length() == 1) {
                    return Character.valueOf(strNextString.charAt(0));
                }
                throw new JsonSyntaxException("Expecting character, got: ".concat(strNextString));
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Character ch) throws IOException {
                jsonWriter.value(ch == null ? null : String.valueOf(ch));
            }
        };
        s = typeAdapter8;
        t = a(Character.TYPE, Character.class, typeAdapter8);
        TypeAdapter<String> typeAdapter9 = new TypeAdapter<String>() { // from class: com.networkbench.com.google.gson.internal.a.m.5
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String read(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                if (jsonTokenPeek != JsonToken.NULL) {
                    return jsonTokenPeek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        u = typeAdapter9;
        v = new TypeAdapter<BigDecimal>() { // from class: com.networkbench.com.google.gson.internal.a.m.6
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BigDecimal read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigDecimal(jsonReader.nextString());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
                jsonWriter.value(bigDecimal);
            }
        };
        w = new TypeAdapter<BigInteger>() { // from class: com.networkbench.com.google.gson.internal.a.m.7
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BigInteger read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigInteger(jsonReader.nextString());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
                jsonWriter.value(bigInteger);
            }
        };
        x = a(String.class, typeAdapter9);
        TypeAdapter<StringBuilder> typeAdapter10 = new TypeAdapter<StringBuilder>() { // from class: com.networkbench.com.google.gson.internal.a.m.8
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public StringBuilder read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                jsonWriter.value(sb == null ? null : sb.toString());
            }
        };
        y = typeAdapter10;
        z = a(StringBuilder.class, typeAdapter10);
        TypeAdapter<StringBuffer> typeAdapter11 = new TypeAdapter<StringBuffer>() { // from class: com.networkbench.com.google.gson.internal.a.m.9
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public StringBuffer read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        A = typeAdapter11;
        B = a(StringBuffer.class, typeAdapter11);
        TypeAdapter<URL> typeAdapter12 = new TypeAdapter<URL>() { // from class: com.networkbench.com.google.gson.internal.a.m.10
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public URL read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if ("null".equals(strNextString)) {
                    return null;
                }
                return new URL(strNextString);
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, URL url) throws IOException {
                jsonWriter.value(url == null ? null : url.toExternalForm());
            }
        };
        C = typeAdapter12;
        D = a(URL.class, typeAdapter12);
        TypeAdapter<URI> typeAdapter13 = new TypeAdapter<URI>() { // from class: com.networkbench.com.google.gson.internal.a.m.11
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public URI read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String strNextString = jsonReader.nextString();
                    if ("null".equals(strNextString)) {
                        return null;
                    }
                    return new URI(strNextString);
                } catch (URISyntaxException e2) {
                    throw new JsonIOException(e2);
                }
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, URI uri) throws IOException {
                jsonWriter.value(uri == null ? null : uri.toASCIIString());
            }
        };
        E = typeAdapter13;
        F = a(URI.class, typeAdapter13);
        TypeAdapter<InetAddress> typeAdapter14 = new TypeAdapter<InetAddress>() { // from class: com.networkbench.com.google.gson.internal.a.m.13
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public InetAddress read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        G = typeAdapter14;
        H = b(InetAddress.class, typeAdapter14);
        TypeAdapter<UUID> typeAdapter15 = new TypeAdapter<UUID>() { // from class: com.networkbench.com.google.gson.internal.a.m.14
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UUID read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return UUID.fromString(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
                jsonWriter.value(uuid == null ? null : uuid.toString());
            }
        };
        I = typeAdapter15;
        J = a(UUID.class, typeAdapter15);
        K = new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.15
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() != Timestamp.class) {
                    return null;
                }
                final TypeAdapter<T> adapter = gson.getAdapter(Date.class);
                return (TypeAdapter<T>) new TypeAdapter<Timestamp>() { // from class: com.networkbench.com.google.gson.internal.a.m.15.1
                    @Override // com.networkbench.com.google.gson.TypeAdapter
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Timestamp read(JsonReader jsonReader) throws IOException {
                        Date date = (Date) adapter.read(jsonReader);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.networkbench.com.google.gson.TypeAdapter
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                        adapter.write(jsonWriter, timestamp);
                    }
                };
            }
        };
        TypeAdapter<Calendar> typeAdapter16 = new TypeAdapter<Calendar>() { // from class: com.networkbench.com.google.gson.internal.a.m.16

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final String f38690a = "year";

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static final String f38691b = "month";

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static final String f38692c = "dayOfMonth";
            private static final String d = "hourOfDay";

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static final String f38693e = "minute";

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static final String f38694f = "second";

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Calendar read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                jsonReader.beginObject();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String strNextName = jsonReader.nextName();
                    int iNextInt = jsonReader.nextInt();
                    if (f38690a.equals(strNextName)) {
                        i2 = iNextInt;
                    } else if (f38691b.equals(strNextName)) {
                        i3 = iNextInt;
                    } else if (f38692c.equals(strNextName)) {
                        i4 = iNextInt;
                    } else if (d.equals(strNextName)) {
                        i5 = iNextInt;
                    } else if (f38693e.equals(strNextName)) {
                        i6 = iNextInt;
                    } else if (f38694f.equals(strNextName)) {
                        i7 = iNextInt;
                    }
                }
                jsonReader.endObject();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
                if (calendar == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginObject();
                jsonWriter.name(f38690a);
                jsonWriter.value(calendar.get(1));
                jsonWriter.name(f38691b);
                jsonWriter.value(calendar.get(2));
                jsonWriter.name(f38692c);
                jsonWriter.value(calendar.get(5));
                jsonWriter.name(d);
                jsonWriter.value(calendar.get(11));
                jsonWriter.name(f38693e);
                jsonWriter.value(calendar.get(12));
                jsonWriter.name(f38694f);
                jsonWriter.value(calendar.get(13));
                jsonWriter.endObject();
            }
        };
        L = typeAdapter16;
        M = b(Calendar.class, GregorianCalendar.class, typeAdapter16);
        TypeAdapter<Locale> typeAdapter17 = new TypeAdapter<Locale>() { // from class: com.networkbench.com.google.gson.internal.a.m.17
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Locale read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, Locale locale) throws IOException {
                jsonWriter.value(locale == null ? null : locale.toString());
            }
        };
        N = typeAdapter17;
        O = a(Locale.class, typeAdapter17);
        TypeAdapter<JsonElement> typeAdapter18 = new TypeAdapter<JsonElement>() { // from class: com.networkbench.com.google.gson.internal.a.m.18
            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    jsonWriter.nullValue();
                    return;
                }
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                        return;
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                        return;
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                        return;
                    }
                }
                if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(jsonWriter, it.next());
                    }
                    jsonWriter.endArray();
                    return;
                }
                if (!jsonElement.isJsonObject()) {
                    az.w(jsonElement.getClass(), "Couldn't write ");
                    return;
                }
                jsonWriter.beginObject();
                for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                    jsonWriter.name(entry.getKey());
                    write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            }

            @Override // com.networkbench.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public JsonElement read(JsonReader jsonReader) throws IOException {
                switch (AnonymousClass26.f38707a[jsonReader.peek().ordinal()]) {
                    case 1:
                        return new JsonPrimitive((Number) new LazilyParsedNumber(jsonReader.nextString()));
                    case 2:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                    case 3:
                        return new JsonPrimitive(jsonReader.nextString());
                    case 4:
                        jsonReader.nextNull();
                        return JsonNull.INSTANCE;
                    case 5:
                        JsonArray jsonArray = new JsonArray();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(read(jsonReader));
                        }
                        jsonReader.endArray();
                        return jsonArray;
                    case 6:
                        JsonObject jsonObject = new JsonObject();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            jsonObject.add(jsonReader.nextName(), read(jsonReader));
                        }
                        jsonReader.endObject();
                        return jsonObject;
                    default:
                        ct0.c();
                        return null;
                }
            }
        };
        P = typeAdapter18;
        Q = b(JsonElement.class, typeAdapter18);
        R = a();
    }

    private m() {
    }

    public static TypeAdapterFactory a() {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.19
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new a(rawType);
            }
        };
    }

    public static <TT> TypeAdapterFactory b(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.24
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Factory[type=");
                o60.z(cls, sb, "+");
                o60.z(cls2, sb, ",adapter=");
                sb.append(typeAdapter);
                sb.append("]");
                return sb.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory a(final TypeToken<TT> typeToken, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.20
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken2) {
                if (typeToken2.equals(typeToken)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> TypeAdapterFactory b(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.25
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (cls.isAssignableFrom(typeToken.getRawType())) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Factory[typeHierarchy=");
                o60.z(cls, sb, ",adapter=");
                sb.append(typeAdapter);
                sb.append("]");
                return sb.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory a(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.21
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Factory[type=");
                o60.z(cls, sb, ",adapter=");
                sb.append(typeAdapter);
                sb.append("]");
                return sb.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory a(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.m.22
            @Override // com.networkbench.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Factory[type=");
                o60.z(cls2, sb, "+");
                o60.z(cls, sb, ",adapter=");
                sb.append(typeAdapter);
                sb.append("]");
                return sb.toString();
            }
        };
    }

    public static final class a<T extends Enum<T>> extends TypeAdapter<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f38708a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f38709b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(strName).getAnnotation(SerializedName.class);
                    strName = serializedName != null ? serializedName.value() : strName;
                    this.f38708a.put(strName, t);
                    this.f38709b.put(t, strName);
                }
            } catch (NoSuchFieldException unused) {
                a61.h();
                throw null;
            }
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return this.f38708a.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.value(t == null ? null : this.f38709b.get(t));
        }
    }
}
