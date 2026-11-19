package com.vuitton.android.data.net.serialization.retrofit;

import com.jakewharton.retrofit2.converter.kotlinx.serialization.Factory;
import com.jakewharton.retrofit2.converter.kotlinx.serialization.Serializer;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;", "", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KotlinxSerializationConverterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Json f47100a;

    @Inject
    public KotlinxSerializationConverterFactory(Json json) {
        json.getClass();
        this.f47100a = json;
    }

    public final Factory a() {
        MediaType.f76933e.getClass();
        MediaType mediaTypeA = MediaType.Companion.a(InitUrlConnection.CONTENT_TYPE_VALUE);
        Json json = this.f47100a;
        json.getClass();
        return new Factory(mediaTypeA, new Serializer.FromString(json));
    }
}
