package com.google.firebase.encoders;

/* JADX INFO: loaded from: classes2.dex */
public interface ObjectEncoderContext {
    ObjectEncoderContext a(FieldDescriptor fieldDescriptor, boolean z);

    ObjectEncoderContext b(FieldDescriptor fieldDescriptor, long j2);

    ObjectEncoderContext c(FieldDescriptor fieldDescriptor, int i2);

    ObjectEncoderContext d(FieldDescriptor fieldDescriptor, double d);

    ObjectEncoderContext e(FieldDescriptor fieldDescriptor, Object obj);
}
