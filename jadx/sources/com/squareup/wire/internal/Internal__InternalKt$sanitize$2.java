package com.squareup.wire.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final /* synthetic */ class Internal__InternalKt$sanitize$2 extends FunctionReferenceImpl implements Function1<String, String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Internal__InternalKt$sanitize$2 f43482b = new Internal__InternalKt$sanitize$2(1, Internal__InternalKt.class, "sanitize", "sanitize(Ljava/lang/String;)Ljava/lang/String;", 1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        return Internal.d(str);
    }
}
