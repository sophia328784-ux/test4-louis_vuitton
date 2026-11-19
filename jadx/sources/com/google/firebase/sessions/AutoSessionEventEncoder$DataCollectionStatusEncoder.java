package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$DataCollectionStatusEncoder implements ObjectEncoder<DataCollectionStatus> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$DataCollectionStatusEncoder f35390a = new AutoSessionEventEncoder$DataCollectionStatusEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35391b = FieldDescriptor.a("performance");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35392c = FieldDescriptor.a("crashlytics");
    public static final FieldDescriptor d = FieldDescriptor.a("sessionSamplingRate");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        DataCollectionStatus dataCollectionStatus = (DataCollectionStatus) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35391b, dataCollectionStatus.f35420a);
        objectEncoderContext.e(f35392c, dataCollectionStatus.f35421b);
        objectEncoderContext.d(d, dataCollectionStatus.f35422c);
    }
}
