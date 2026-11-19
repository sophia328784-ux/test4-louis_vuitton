package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder implements ObjectEncoder<LogSourceMetrics> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder f27925a = new AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f27926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f27927c;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("logSource");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f27926b = a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("logEventDropped");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f27927c = a.g(atProtobuf2, builder2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        LogSourceMetrics logSourceMetrics = (LogSourceMetrics) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f27926b, logSourceMetrics.f28030a);
        objectEncoderContext.e(f27927c, logSourceMetrics.f28031b);
    }
}
