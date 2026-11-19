package com.google.firebase.encoders.proto;

/* JADX INFO: loaded from: classes2.dex */
public final class AtProtobuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f35106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Protobuf.IntEncoding f35107b = Protobuf.IntEncoding.DEFAULT;

    public static final class ProtobufImpl implements Protobuf {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f35108f;
        public final Protobuf.IntEncoding g;

        public ProtobufImpl(int i2, Protobuf.IntEncoding intEncoding) {
            this.f35108f = i2;
            this.g = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public final Class annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            return this.f35108f == protobuf.tag() && this.g.equals(protobuf.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return (14552422 ^ this.f35108f) + (this.g.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final Protobuf.IntEncoding intEncoding() {
            return this.g;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final int tag() {
            return this.f35108f;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f35108f + "intEncoding=" + this.g + ')';
        }
    }

    public final Protobuf a() {
        return new ProtobufImpl(this.f35106a, this.f35107b);
    }
}
