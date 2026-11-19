package com.jakewharton.retrofit2.converter.kotlinx.serialization;

import kotlin.Metadata;
import kotlinx.serialization.SerializationStrategy;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002B%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "Lokhttp3/MediaType;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lkotlinx/serialization/SerializationStrategy;", "saver", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "serializer", "<init>", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SerializationStrategyConverter<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaType f35799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SerializationStrategy f35800c;
    public final Serializer d;

    public SerializationStrategyConverter(MediaType mediaType, SerializationStrategy<? super T> serializationStrategy, Serializer serializer) {
        mediaType.getClass();
        serializationStrategy.getClass();
        serializer.getClass();
        this.f35799b = mediaType;
        this.f35800c = serializationStrategy;
        this.d = serializer;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return this.d.c(this.f35799b, this.f35800c, obj);
    }
}
