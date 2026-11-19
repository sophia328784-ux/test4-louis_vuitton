package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder implements ObjectEncoder<StorageMetrics> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder f27929a = new AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f27930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f27931c;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("currentCacheSizeBytes");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f27930b = a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("maxCacheSizeBytes");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f27931c = a.g(atProtobuf2, builder2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        StorageMetrics storageMetrics = (StorageMetrics) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.b(f27930b, storageMetrics.f28034a);
        objectEncoderContext.b(f27931c, storageMetrics.f28035b);
    }
}
