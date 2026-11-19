package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Encodable
public abstract class ProtoEncoderDoNotUse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProtobufEncoder f27973a;

    static {
        ProtobufEncoder.Builder builder = new ProtobufEncoder.Builder();
        builder.a(ProtoEncoderDoNotUse.class, AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder.f27928a);
        builder.a(ClientMetrics.class, AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder.f27916a);
        builder.a(TimeWindow.class, AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder.f27932a);
        builder.a(LogSourceMetrics.class, AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder.f27925a);
        builder.a(LogEventDropped.class, AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder.f27922a);
        builder.a(GlobalMetrics.class, AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder.f27920a);
        builder.a(StorageMetrics.class, AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder.f27929a);
        f27973a = new ProtobufEncoder(new HashMap(builder.f35121a), new HashMap(builder.f35122b), builder.f35123c);
    }
}
