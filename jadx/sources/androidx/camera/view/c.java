package androidx.camera.view;

import androidx.camera.core.SurfaceRequest;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest f3188c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(Object obj, SurfaceRequest surfaceRequest, int i2) {
        this.f3187b = i2;
        this.d = obj;
        this.f3188c = surfaceRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f3187b;
        SurfaceRequest surfaceRequest = this.f3188c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                ((PreviewView.AnonymousClass1) PreviewView.this.m).a(surfaceRequest);
                break;
            default:
                TextureViewImplementation textureViewImplementation = (TextureViewImplementation) obj;
                SurfaceRequest surfaceRequest2 = textureViewImplementation.f3177h;
                if (surfaceRequest2 != null && surfaceRequest2 == surfaceRequest) {
                    textureViewImplementation.f3177h = null;
                    textureViewImplementation.g = null;
                }
                d dVar = textureViewImplementation.l;
                if (dVar != null) {
                    dVar.a();
                    textureViewImplementation.l = null;
                }
                break;
        }
    }
}
