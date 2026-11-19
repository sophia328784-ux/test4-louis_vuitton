package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder implements ObjectEncoder<GlobalMetrics> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder f27920a = new AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f27921b;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("storageMetrics");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f27921b = a.g(atProtobuf, builder);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ((ObjectEncoderContext) obj2).e(f27921b, ((GlobalMetrics) obj).f28023a);
    }
}
