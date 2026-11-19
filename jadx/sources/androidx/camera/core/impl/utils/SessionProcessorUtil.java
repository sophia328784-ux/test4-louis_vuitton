package androidx.camera.core.impl.utils;

import androidx.camera.core.impl.SessionProcessor;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public abstract class SessionProcessorUtil {
    public static boolean a(SessionProcessor sessionProcessor, int... iArr) {
        if (sessionProcessor == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        return Collections.EMPTY_SET.containsAll(arrayList);
    }
}
