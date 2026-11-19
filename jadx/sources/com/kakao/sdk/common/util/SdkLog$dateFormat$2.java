package com.kakao.sdk.common.util;

import java.text.SimpleDateFormat;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/text/SimpleDateFormat;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
public final class SdkLog$dateFormat$2 extends Lambda implements Function0<SimpleDateFormat> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SdkLog$dateFormat$2 f35891c = new SdkLog$dateFormat$2(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    }
}
