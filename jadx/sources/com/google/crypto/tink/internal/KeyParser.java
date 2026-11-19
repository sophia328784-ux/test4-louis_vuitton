package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.Serialization;
import com.google.crypto.tink.util.Bytes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class KeyParser<SerializationT extends Serialization> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bytes f33983a;

    /* JADX INFO: renamed from: com.google.crypto.tink.internal.KeyParser$1, reason: invalid class name */
    class AnonymousClass1 extends KeyParser<Serialization> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ KeyParsingFunction f33984b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(KeyParsingFunction keyParsingFunction, Bytes bytes) {
            super(bytes);
            this.f33984b = keyParsingFunction;
        }
    }

    public interface KeyParsingFunction<SerializationT extends Serialization> {
        Key a(ProtoKeySerialization protoKeySerialization);
    }

    public KeyParser(Bytes bytes) {
        this.f33983a = bytes;
    }

    public static KeyParser a(KeyParsingFunction keyParsingFunction, Bytes bytes) {
        return new AnonymousClass1(keyParsingFunction, bytes);
    }
}
