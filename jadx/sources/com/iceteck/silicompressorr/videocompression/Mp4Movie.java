package com.iceteck.silicompressorr.videocompression;

import com.googlecode.mp4parser.util.Matrix;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Mp4Movie {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Matrix f35764a = Matrix.f35737j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f35765b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public File f35766c;

    public final void a(int i2) {
        if (i2 == 0) {
            this.f35764a = Matrix.f35737j;
            return;
        }
        if (i2 == 90) {
            this.f35764a = Matrix.f35738k;
        } else if (i2 == 180) {
            this.f35764a = Matrix.l;
        } else if (i2 == 270) {
            this.f35764a = Matrix.m;
        }
    }
}
