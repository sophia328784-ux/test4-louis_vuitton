package com.squareup.wire;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.squareup.wire.Message;
import java.io.ObjectStreamException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u00020\u0004:\u0001\u0007J\u000f\u0010\u0005\u001a\u00020\u0002H\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/squareup/wire/Message;", "M", "", NBSSpanMetricUnit.Byte, "Ljava/io/Serializable;", "writeReplace", "()Ljava/lang/Object;", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class Message<M extends Message<M, B>, B> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient ProtoAdapter f43449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final transient ByteString f43450c;
    public transient int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/squareup/wire/Message$Companion;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public Message(ProtoAdapter protoAdapter, ByteString byteString) {
        protoAdapter.getClass();
        byteString.getClass();
        this.f43449b = protoAdapter;
        this.f43450c = byteString;
    }

    public final byte[] a() {
        ProtoAdapter protoAdapter = this.f43449b;
        protoAdapter.getClass();
        Buffer buffer = new Buffer();
        ReverseProtoWriter reverseProtoWriter = new ReverseProtoWriter();
        protoAdapter.e(reverseProtoWriter, this);
        reverseProtoWriter.a();
        buffer.u0(reverseProtoWriter.f43476a);
        return buffer.E(buffer.f77390c);
    }

    public final ByteString b() {
        ByteString byteString = this.f43450c;
        return byteString == null ? ByteString.f77399f : byteString;
    }

    public String toString() {
        this.f43449b.getClass();
        return String.valueOf(this);
    }

    public final Object writeReplace() throws ObjectStreamException {
        return new MessageSerializedForm(a(), getClass());
    }
}
