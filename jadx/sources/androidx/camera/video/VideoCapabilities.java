package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface VideoCapabilities {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoCapabilities f2829a = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.camera.video.VideoCapabilities$1, reason: invalid class name */
    public class AnonymousClass1 implements VideoCapabilities {
        @Override // androidx.camera.video.VideoCapabilities
        public final Set a() {
            return new HashSet();
        }

        @Override // androidx.camera.video.VideoCapabilities
        public final ArrayList c(DynamicRange dynamicRange) {
            return new ArrayList();
        }
    }

    Set a();

    default VideoValidatedEncoderProfilesProxy b(Size size, DynamicRange dynamicRange) {
        return null;
    }

    ArrayList c(DynamicRange dynamicRange);

    default VideoValidatedEncoderProfilesProxy d(Quality quality, DynamicRange dynamicRange) {
        return null;
    }
}
