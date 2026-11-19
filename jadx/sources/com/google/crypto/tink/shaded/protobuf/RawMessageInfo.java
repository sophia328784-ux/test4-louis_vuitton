package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class RawMessageInfo implements MessageInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MessageLite f34232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f34234c;
    public final int d;

    public RawMessageInfo(MessageLite messageLite, String str, Object[] objArr) {
        this.f34232a = messageLite;
        this.f34233b = str;
        this.f34234c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 < 55296) {
                this.d = i2 | (cCharAt2 << i3);
                return;
            } else {
                i2 |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public final boolean a() {
        return (this.d & 2) == 2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public final MessageLite b() {
        return this.f34232a;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public final ProtoSyntax c() {
        return (this.d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }
}
