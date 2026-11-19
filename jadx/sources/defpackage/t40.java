package defpackage;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t40 implements ObjectEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79962a;

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        switch (this.f79962a) {
            case 0:
                t40 t40Var = JsonDataEncoderBuilder.f35093e;
                throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            default:
                throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
