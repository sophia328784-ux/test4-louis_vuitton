package androidx.camera.core.internal.compat.quirk;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureFailedForSpecificCombinationQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f2500a = new HashSet(Arrays.asList("pixel 4a", "pixel 4a (5g)", "pixel 5", "pixel 5a"));

    public static boolean f(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.size() == 3) {
            Iterator it = linkedHashSet.iterator();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (it.hasNext()) {
                UseCase useCase = (UseCase) it.next();
                if (useCase instanceof Preview) {
                    z = true;
                } else if (useCase instanceof ImageCapture) {
                    z3 = true;
                } else if (useCase.f1995h.b(UseCaseConfig.E)) {
                    z2 = useCase.f1995h.S() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
                }
            }
            if (z && z2 && z3) {
                return true;
            }
        }
        return false;
    }
}
