package androidx.camera.core.internal.compat.quirk;

import android.util.Range;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.StreamSpec;

/* JADX INFO: loaded from: classes.dex */
public interface AeFpsRangeQuirk extends Quirk {
    default Range a() {
        return StreamSpec.f2348a;
    }
}
