package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
class ProtobufValueEncoderContext implements ValueEncoderContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f35124a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35125b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FieldDescriptor f35126c;
    public final ProtobufDataEncoderContext d;

    public ProtobufValueEncoderContext(ProtobufDataEncoderContext protobufDataEncoderContext) {
        this.d = protobufDataEncoderContext;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext add(String str) {
        if (this.f35124a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f35124a = true;
        this.d.i(this.f35126c, str, this.f35125b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext f(boolean z) {
        if (this.f35124a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f35124a = true;
        this.d.g(this.f35126c, z ? 1 : 0, this.f35125b);
        return this;
    }
}
