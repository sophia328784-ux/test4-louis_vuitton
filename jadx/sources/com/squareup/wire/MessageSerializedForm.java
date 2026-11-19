package com.squareup.wire;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.squareup.wire.Message;
import defpackage.n00;
import defpackage.r81;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00020\u0005:\u0001\u000eB\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/squareup/wire/MessageSerializedForm;", "Lcom/squareup/wire/Message;", "M", "", NBSSpanMetricUnit.Byte, "Ljava/io/Serializable;", "", "bytes", "Ljava/lang/Class;", "messageClass", "<init>", "([BLjava/lang/Class;)V", "readResolve", "()Ljava/lang/Object;", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MessageSerializedForm<M extends Message<M, B>, B> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f43451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f43452c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/squareup/wire/MessageSerializedForm$Companion;", "", "", "serialVersionUID", "J", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public MessageSerializedForm(byte[] bArr, Class<M> cls) {
        bArr.getClass();
        cls.getClass();
        this.f43451b = bArr;
        this.f43452c = cls;
    }

    public final Object readResolve() throws ObjectStreamException {
        ProtoAdapter.f43453f.getClass();
        Class cls = this.f43452c;
        cls.getClass();
        try {
            Object obj = cls.getField("ADAPTER").get(null);
            obj.getClass();
            ProtoAdapter protoAdapter = (ProtoAdapter) obj;
            try {
                byte[] bArr = this.f43451b;
                bArr.getClass();
                return protoAdapter.b(new ByteArrayProtoReader32(bArr, 0, bArr.length));
            } catch (IOException e2) {
                throw new StreamCorruptedException(e2.getMessage());
            }
        } catch (IllegalAccessException e3) {
            r81.j(n00.p(cls, new StringBuilder("failed to access "), "#ADAPTER"), e3);
            return null;
        } catch (NoSuchFieldException e4) {
            r81.j(n00.p(cls, new StringBuilder("failed to access "), "#ADAPTER"), e4);
            return null;
        }
    }
}
