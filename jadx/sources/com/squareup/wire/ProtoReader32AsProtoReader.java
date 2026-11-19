package com.squareup.wire;

import kotlin.Metadata;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/squareup/wire/ProtoReader32AsProtoReader;", "Lcom/squareup/wire/ProtoReader;", "Lcom/squareup/wire/ProtoReader32;", "delegate", "<init>", "(Lcom/squareup/wire/ProtoReader32;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoReader32AsProtoReader extends ProtoReader {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ProtoReader32 f43472j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProtoReader32AsProtoReader(ProtoReader32 protoReader32) {
        super(new Buffer());
        protoReader32.getClass();
        this.f43472j = protoReader32;
    }

    @Override // com.squareup.wire.ProtoReader
    public final void a(int i2, FieldEncoding fieldEncoding, Object obj) {
        fieldEncoding.getClass();
        this.f43472j.k(i2, fieldEncoding, obj);
    }

    @Override // com.squareup.wire.ProtoReader
    public final long d() {
        return this.f43472j.h();
    }

    @Override // com.squareup.wire.ProtoReader
    public final ByteString e(long j2) {
        return this.f43472j.l((int) j2);
    }

    @Override // com.squareup.wire.ProtoReader
    public final int g() {
        return this.f43472j.nextTag();
    }

    @Override // com.squareup.wire.ProtoReader
    /* JADX INFO: renamed from: h */
    public final FieldEncoding getF43470h() {
        return this.f43472j.g();
    }

    @Override // com.squareup.wire.ProtoReader
    public final ByteString i() {
        return this.f43472j.b();
    }

    @Override // com.squareup.wire.ProtoReader
    public final int j() {
        return this.f43472j.c();
    }

    @Override // com.squareup.wire.ProtoReader
    public final long k() {
        return this.f43472j.a();
    }

    @Override // com.squareup.wire.ProtoReader
    public final String l() {
        return this.f43472j.d();
    }

    @Override // com.squareup.wire.ProtoReader
    public final void m(int i2) {
        this.f43472j.f(i2);
    }

    @Override // com.squareup.wire.ProtoReader
    public final int n() {
        return this.f43472j.j();
    }

    @Override // com.squareup.wire.ProtoReader
    public final long o() {
        return this.f43472j.m();
    }

    @Override // com.squareup.wire.ProtoReader
    public final void p() {
        this.f43472j.e();
    }
}
