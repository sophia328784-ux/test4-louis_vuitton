package com.jakewharton.retrofit2.converter.kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlinx.serialization.SerializersKt;
import okhttp3.MediaType;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;", "Lretrofit2/Converter$Factory;", "Lokhttp3/MediaType;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "serializer", "<init>", "(Lokhttp3/MediaType;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Factory extends Converter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaType f35797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializer f35798b;

    public Factory(MediaType mediaType, Serializer serializer) {
        mediaType.getClass();
        serializer.getClass();
        this.f35797a = mediaType;
        this.f35798b = serializer;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        type.getClass();
        annotationArr2.getClass();
        Serializer serializer = this.f35798b;
        serializer.getClass();
        return new SerializationStrategyConverter(this.f35797a, SerializersKt.c(serializer.getF35801a().getF75717b(), type), serializer);
    }

    @Override // retrofit2.Converter.Factory
    public final Converter b(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        annotationArr.getClass();
        Serializer serializer = this.f35798b;
        serializer.getClass();
        return new DeserializationStrategyConverter(SerializersKt.c(serializer.getF35801a().getF75717b(), type), serializer);
    }
}
