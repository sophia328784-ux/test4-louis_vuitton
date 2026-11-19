package defpackage;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.video.VideoCapture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f20 implements SessionConfig.ErrorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69017b;

    public /* synthetic */ f20(Object obj, int i2) {
        this.f69016a = i2;
        this.f69017b = obj;
    }

    @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
    public final void a(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        int i2 = this.f69016a;
        Object obj = this.f69017b;
        switch (i2) {
            case 0:
                ImageCapture imageCapture = (ImageCapture) obj;
                ImageCapture.Defaults defaults = ImageCapture.B;
                if (imageCapture.c() != null) {
                    imageCapture.y.pause();
                    imageCapture.E(true);
                    String strE = imageCapture.e();
                    ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) imageCapture.f1995h;
                    StreamSpec streamSpec = imageCapture.f1996i;
                    streamSpec.getClass();
                    SessionConfig.Builder builderF = imageCapture.F(strE, imageCaptureConfig, streamSpec);
                    imageCapture.w = builderF;
                    Object[] objArr = {builderF.k()};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList.add(obj2);
                    imageCapture.D(Collections.unmodifiableList(arrayList));
                    imageCapture.q();
                    imageCapture.y.resume();
                    break;
                }
                break;
            case 1:
                Preview preview = (Preview) obj;
                Preview.Defaults defaults2 = Preview.x;
                if (preview.c() != null) {
                    preview.G((PreviewConfig) preview.f1995h, preview.f1996i);
                    preview.q();
                    break;
                }
                break;
            case 2:
                Iterator it = ((SessionConfig.ValidatingBuilder) obj).n.iterator();
                while (it.hasNext()) {
                    ((SessionConfig.ErrorListener) it.next()).a(sessionConfig, sessionError);
                }
                break;
            default:
                VideoCapture.Defaults defaults3 = VideoCapture.F;
                ((VideoCapture) obj).M();
                break;
        }
    }
}
