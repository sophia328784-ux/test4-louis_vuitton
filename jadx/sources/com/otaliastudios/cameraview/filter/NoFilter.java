package com.otaliastudios.cameraview.filter;

/* JADX INFO: loaded from: classes3.dex */
public final class NoFilter extends BaseFilter {
    @Override // com.otaliastudios.cameraview.filter.Filter
    public final String d() {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    }
}
