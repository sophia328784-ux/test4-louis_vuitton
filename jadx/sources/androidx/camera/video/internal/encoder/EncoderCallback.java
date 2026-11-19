package androidx.camera.video.internal.encoder;

/* JADX INFO: loaded from: classes.dex */
public interface EncoderCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EncoderCallback f3032a = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.camera.video.internal.encoder.EncoderCallback$1, reason: invalid class name */
    public class AnonymousClass1 implements EncoderCallback {
        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final void a() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final void b(EncodedData encodedData) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final void c(f fVar) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final void d(EncodeException encodeException) {
        }
    }

    void a();

    void b(EncodedData encodedData);

    void c(f fVar);

    void d(EncodeException encodeException);
}
