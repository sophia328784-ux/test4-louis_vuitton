package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/squareup/wire/FloatProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "<init>", "()V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FloatProtoAdapter extends ProtoAdapter<Float> {
    public FloatProtoAdapter() {
        super(FieldEncoding.FIXED32, Reflection.f71922a.b(Float.TYPE), null, Syntax.PROTO_2, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), null, 32, null);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Float.valueOf(Float.intBitsToFloat(protoReader32.c()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Float.valueOf(Float.intBitsToFloat(protoReader.j()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        float fFloatValue = ((Number) obj).floatValue();
        protoWriter.getClass();
        protoWriter.f43474a.Y0(Float.floatToIntBits(fFloatValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        float fFloatValue = ((Number) obj).floatValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.e(Float.floatToIntBits(fFloatValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Number) obj).floatValue();
        return 4;
    }
}
