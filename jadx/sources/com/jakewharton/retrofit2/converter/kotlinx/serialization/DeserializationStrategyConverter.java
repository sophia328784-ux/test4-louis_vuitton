package com.jakewharton.retrofit2.converter.kotlinx.serialization;

import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/ResponseBody;", "Lkotlinx/serialization/DeserializationStrategy;", "loader", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "serializer", "<init>", "(Lkotlinx/serialization/DeserializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DeserializationStrategyConverter<T> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeserializationStrategy f35795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Serializer f35796c;

    public DeserializationStrategyConverter(DeserializationStrategy<? extends T> deserializationStrategy, Serializer serializer) {
        deserializationStrategy.getClass();
        serializer.getClass();
        this.f35795b = deserializationStrategy;
        this.f35796c = serializer;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        ResponseBody responseBody = (ResponseBody) obj;
        responseBody.getClass();
        return this.f35796c.a(this.f35795b, responseBody);
    }
}
