package com.sightcall.pratik.utils;

import kotlin.Metadata;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"toMultipartBody", "Lokhttp3/MultipartBody$Part;", "fileBase64", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MultipartExtensionKt {
    public static final MultipartBody.Part toMultipartBody(String str) {
        str.getClass();
        MediaType.f76933e.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3C = RequestBody.c(str, MediaType.Companion.a("image/jpeg"));
        MultipartBody.Part.f76948c.getClass();
        return MultipartBody.Part.Companion.b("file", "blob", requestBody$Companion$toRequestBody$3C);
    }
}
