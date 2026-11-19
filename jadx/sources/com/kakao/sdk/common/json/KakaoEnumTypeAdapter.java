package com.kakao.sdk.common.json;

import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.az;
import java.io.IOException;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/kakao/sdk/common/json/KakaoEnumTypeAdapter;", "T", "Lcom/google/gson/TypeAdapter;", "Ljava/lang/Class;", "enumClass", "<init>", "(Ljava/lang/Class;)V", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class KakaoEnumTypeAdapter<T> extends TypeAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f35871a;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35872a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f35872a = iArr;
        }
    }

    public KakaoEnumTypeAdapter(Class<T> cls) {
        cls.getClass();
        this.f35871a = cls;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    /* JADX WARN: Code duplicated, block: B:32:0x006d A[Catch: NoSuchFieldException -> 0x00b4, TRY_ENTER, TryCatch #0 {NoSuchFieldException -> 0x00b4, blocks: (B:29:0x0059, B:32:0x006d, B:34:0x0075, B:37:0x0082, B:51:0x00a9, B:43:0x008f, B:46:0x0096, B:48:0x009e), top: B:61:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0075 A[Catch: NoSuchFieldException -> 0x00b4, TryCatch #0 {NoSuchFieldException -> 0x00b4, blocks: (B:29:0x0059, B:32:0x006d, B:34:0x0075, B:37:0x0082, B:51:0x00a9, B:43:0x008f, B:46:0x0096, B:48:0x009e), top: B:61:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008b  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f A[Catch: NoSuchFieldException -> 0x00b4, TRY_ENTER, TryCatch #0 {NoSuchFieldException -> 0x00b4, blocks: (B:29:0x0059, B:32:0x006d, B:34:0x0075, B:37:0x0082, B:51:0x00a9, B:43:0x008f, B:46:0x0096, B:48:0x009e), top: B:61:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0096 A[Catch: NoSuchFieldException -> 0x00b4, TryCatch #0 {NoSuchFieldException -> 0x00b4, blocks: (B:29:0x0059, B:32:0x006d, B:34:0x0075, B:37:0x0082, B:51:0x00a9, B:43:0x008f, B:46:0x0096, B:48:0x009e), top: B:61:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00be A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:64:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x0052, please report this as an issue */
    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public final Object read2(JsonReader jsonReader) throws IOException {
        Pair pair;
        Pair pair2;
        Class cls;
        Object[] enumConstants;
        int i2;
        String strName;
        Field field;
        Object obj;
        Object obj2;
        SerializedName serializedName;
        SerializedName serializedName2;
        Long l;
        if ((jsonReader != null ? jsonReader.peek() : null) == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        JsonToken jsonTokenPeek = jsonReader != null ? jsonReader.peek() : null;
        int i3 = jsonTokenPeek == null ? -1 : WhenMappings.f35872a[jsonTokenPeek.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                pair2 = new Pair(null, null);
            } else {
                pair = new Pair(null, jsonReader.nextString());
            }
            cls = this.f35871a;
            enumConstants = cls.getEnumConstants();
            if (enumConstants != null) {
                obj = null;
                for (Object obj3 : enumConstants) {
                    try {
                        obj3.getClass();
                        strName = ((Enum) obj3).name();
                        field = cls.getField(strName);
                        obj = pair2.f71705b;
                        if (obj != null) {
                            serializedName2 = (SerializedName) field.getAnnotation(SerializedName.class);
                            if (serializedName2 != null) {
                                l = (Long) obj;
                                long j2 = Long.parseLong(serializedName2.value());
                                if (l != null && l.longValue() == j2) {
                                    return obj3;
                                }
                            }
                        } else {
                            obj2 = pair2.f71706c;
                            if (obj2 != null) {
                                if (!Intrinsics.c(obj2, strName)) {
                                    serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                                    if (serializedName != null && Intrinsics.c(obj2, serializedName.value())) {
                                    }
                                }
                                return obj3;
                            }
                        }
                    } catch (NoSuchFieldException e2) {
                        throw new IOException(e2);
                    }
                }
            } else {
                obj3 = null;
            }
            if (obj3 != null) {
                return obj3;
            }
            az.o("No matching enum field");
            return null;
        }
        pair = new Pair(Long.valueOf(jsonReader.nextLong()), null);
        pair2 = pair;
        cls = this.f35871a;
        enumConstants = cls.getEnumConstants();
        if (enumConstants != null) {
            obj3 = null;
            while (i2 < r2) {
                obj3.getClass();
                strName = ((Enum) obj3).name();
                field = cls.getField(strName);
                obj = pair2.f71705b;
                if (obj != null) {
                    serializedName2 = (SerializedName) field.getAnnotation(SerializedName.class);
                    if (serializedName2 != null) {
                        l = (Long) obj;
                        long j3 = Long.parseLong(serializedName2.value());
                        if (l != null) {
                            return obj3;
                        }
                    }
                } else {
                    obj2 = pair2.f71706c;
                    if (obj2 != null) {
                        if (!Intrinsics.c(obj2, strName)) {
                            serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                            if (serializedName != null) {
                            }
                        }
                        return obj3;
                    }
                }
            }
        } else {
            obj3 = null;
        }
        if (obj3 != null) {
            return obj3;
        }
        az.o("No matching enum field");
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            if (jsonWriter != null) {
                jsonWriter.nullValue();
                return;
            }
            return;
        }
        Class cls = this.f35871a;
        boolean zIsAnnotationPresent = cls.isAnnotationPresent(IntEnum.class);
        Object[] enumConstants = cls.getEnumConstants();
        if (enumConstants != null) {
            for (Object obj2 : enumConstants) {
                try {
                    obj2.getClass();
                    SerializedName serializedName = (SerializedName) cls.getField(((Enum) obj2).name()).getAnnotation(SerializedName.class);
                    if (serializedName != null && obj2.equals(obj)) {
                        if (zIsAnnotationPresent) {
                            if (jsonWriter != null) {
                                jsonWriter.value(Integer.valueOf(Integer.parseInt(serializedName.value())));
                                return;
                            }
                            return;
                        } else {
                            if (jsonWriter != null) {
                                jsonWriter.value(serializedName.value());
                                return;
                            }
                            return;
                        }
                    }
                } catch (NoSuchFieldException e2) {
                    throw new IOException(e2);
                }
            }
        }
        if (jsonWriter != null) {
            jsonWriter.value(obj.toString());
        }
    }
}
