package com.google.crypto.tink.internal;

import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.internal.Serialization;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersSerializer<ParametersT extends Parameters, SerializationT extends Serialization> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f34006a;

    public interface ParametersSerializationFunction<ParametersT extends Parameters, SerializationT extends Serialization> {
    }

    public ParametersSerializer(Class cls) {
        this.f34006a = cls;
    }

    public static ParametersSerializer a(final ParametersSerializationFunction parametersSerializationFunction, Class cls) {
        return new ParametersSerializer<Parameters, Serialization>(cls) { // from class: com.google.crypto.tink.internal.ParametersSerializer.1
        };
    }
}
