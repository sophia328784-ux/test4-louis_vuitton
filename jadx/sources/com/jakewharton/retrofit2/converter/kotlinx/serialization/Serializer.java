package com.jakewharton.retrofit2.converter.kotlinx.serialization;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "", "FromString", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Serializer {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "Lkotlinx/serialization/StringFormat;", "format", "<init>", "(Lkotlinx/serialization/StringFormat;)V", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FromString extends Serializer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringFormat f35801a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FromString(StringFormat stringFormat) {
            super(null);
            stringFormat.getClass();
            this.f35801a = stringFormat;
        }

        @Override // com.jakewharton.retrofit2.converter.kotlinx.serialization.Serializer
        public final Object a(DeserializationStrategy deserializationStrategy, ResponseBody responseBody) throws IOException {
            deserializationStrategy.getClass();
            responseBody.getClass();
            String strString = responseBody.string();
            strString.getClass();
            return this.f35801a.b(deserializationStrategy, strString);
        }

        @Override // com.jakewharton.retrofit2.converter.kotlinx.serialization.Serializer
        /* JADX INFO: renamed from: b, reason: from getter */
        public final StringFormat getF35801a() {
            return this.f35801a;
        }

        @Override // com.jakewharton.retrofit2.converter.kotlinx.serialization.Serializer
        public final RequestBody$Companion$toRequestBody$3 c(MediaType mediaType, SerializationStrategy serializationStrategy, Object obj) {
            mediaType.getClass();
            serializationStrategy.getClass();
            return RequestBody.c(this.f35801a.c(serializationStrategy, obj), mediaType);
        }
    }

    public Serializer(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract Object a(DeserializationStrategy deserializationStrategy, ResponseBody responseBody);

    /* JADX INFO: renamed from: b */
    public abstract StringFormat getF35801a();

    public abstract RequestBody$Companion$toRequestBody$3 c(MediaType mediaType, SerializationStrategy serializationStrategy, Object obj);
}
