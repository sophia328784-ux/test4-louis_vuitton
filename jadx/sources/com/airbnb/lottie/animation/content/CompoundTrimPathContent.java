package com.airbnb.lottie.animation.content;

import android.graphics.Matrix;
import android.graphics.Path;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CompoundTrimPathContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f21804a = new ArrayList();

    public final void a(Path path) {
        ArrayList arrayList = this.f21804a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            TrimPathContent trimPathContent = (TrimPathContent) arrayList.get(size);
            Matrix matrix = Utils.f22311a;
            if (trimPathContent != null && !trimPathContent.f21878a) {
                Utils.a(path, trimPathContent.d.m() / 100.0f, trimPathContent.f21881e.m() / 100.0f, trimPathContent.f21882f.m() / 360.0f);
            }
        }
    }
}
