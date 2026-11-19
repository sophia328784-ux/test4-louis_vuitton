package com.kakao.sdk.common.util;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.kakao.sdk.common.json.Exclude;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/kakao/sdk/common/util/KakaoJson$kakaoExclusionStrategy$1", "Lcom/google/gson/ExclusionStrategy;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class KakaoJson$kakaoExclusionStrategy$1 implements ExclusionStrategy {
    @Override // com.google.gson.ExclusionStrategy
    public final boolean shouldSkipClass(Class cls) {
        return false;
    }

    @Override // com.google.gson.ExclusionStrategy
    public final boolean shouldSkipField(FieldAttributes fieldAttributes) {
        fieldAttributes.getClass();
        return ((Exclude) fieldAttributes.getAnnotation(Exclude.class)) != null;
    }
}
