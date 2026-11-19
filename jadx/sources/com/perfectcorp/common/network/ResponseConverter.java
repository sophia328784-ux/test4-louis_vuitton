package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public interface ResponseConverter<Result> {

    public static final class GsonConverter<Result> implements ResponseConverter<Result> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Gson f39359a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f39360b;

        public GsonConverter(Gson gson, TypeToken<Result> typeToken) {
            Objects.requireNonNull(gson);
            this.f39359a = gson;
            Objects.requireNonNull(typeToken);
            this.f39360b = typeToken.f42556b;
        }

        @Override // com.perfectcorp.common.network.ResponseConverter
        public final Object a(String str) {
            return this.f39359a.j(str, this.f39360b);
        }
    }

    public static final class StringConverter implements ResponseConverter<String> {
        @Override // com.perfectcorp.common.network.ResponseConverter
        public final Object a(String str) {
            return str;
        }
    }

    Object a(String str);
}
