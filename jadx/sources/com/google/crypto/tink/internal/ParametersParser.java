package com.google.crypto.tink.internal;

import com.google.crypto.tink.internal.Serialization;
import com.google.crypto.tink.util.Bytes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersParser<SerializationT extends Serialization> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bytes f34004a;

    public interface ParametersParsingFunction<SerializationT extends Serialization> {
    }

    public ParametersParser(Bytes bytes) {
        this.f34004a = bytes;
    }

    public static ParametersParser a(final ParametersParsingFunction parametersParsingFunction, Bytes bytes) {
        return new ParametersParser<Serialization>(bytes) { // from class: com.google.crypto.tink.internal.ParametersParser.1
        };
    }
}
