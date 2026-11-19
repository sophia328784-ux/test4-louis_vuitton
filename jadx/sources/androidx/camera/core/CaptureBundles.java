package androidx.camera.core;

import androidx.camera.core.impl.CaptureBundle;
import androidx.camera.core.impl.CaptureStage;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CaptureBundles {

    public static final class CaptureBundleImpl implements CaptureBundle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f1908a;

        public CaptureBundleImpl(List list) {
            if (list == null || list.isEmpty()) {
                md.n("Cannot set an empty CaptureStage list.");
                throw null;
            }
            this.f1908a = Collections.unmodifiableList(new ArrayList(list));
        }

        @Override // androidx.camera.core.impl.CaptureBundle
        public final List a() {
            return this.f1908a;
        }
    }

    public static CaptureBundle a() {
        return new CaptureBundleImpl(Arrays.asList(new CaptureStage.DefaultCaptureStage()));
    }
}
