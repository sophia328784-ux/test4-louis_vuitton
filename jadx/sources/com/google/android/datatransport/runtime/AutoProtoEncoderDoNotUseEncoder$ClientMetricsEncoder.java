package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder implements ObjectEncoder<ClientMetrics> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder f27916a = new AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f27917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f27918c;
    public static final FieldDescriptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f27919e;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("window");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f27917b = a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("logSourceMetrics");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f27918c = a.g(atProtobuf2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("globalMetrics");
        AtProtobuf atProtobuf3 = new AtProtobuf();
        atProtobuf3.f35106a = 3;
        d = a.g(atProtobuf3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("appNamespace");
        AtProtobuf atProtobuf4 = new AtProtobuf();
        atProtobuf4.f35106a = 4;
        f27919e = a.g(atProtobuf4, builder4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ClientMetrics clientMetrics = (ClientMetrics) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f27917b, clientMetrics.f28017a);
        objectEncoderContext.e(f27918c, clientMetrics.f28018b);
        objectEncoderContext.e(d, clientMetrics.f28019c);
        objectEncoderContext.e(f27919e, clientMetrics.d);
    }
}
