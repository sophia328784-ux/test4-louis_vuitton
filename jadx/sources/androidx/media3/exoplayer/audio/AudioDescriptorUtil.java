package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.aa;
import defpackage.v7;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
abstract class AudioDescriptorUtil {
    public static ImmutableList a(List list) {
        if (Build.VERSION.SDK_INT < 31 || list == null) {
            return ImmutableList.x();
        }
        TreeSet treeSet = new TreeSet(Comparator.comparing(new aa(0)).reversed());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AudioDescriptor audioDescriptorB = v7.b(it.next());
            if (audioDescriptorB.getStandard() == 1) {
                byte[] descriptor = audioDescriptorB.getDescriptor();
                if (descriptor.length != 3) {
                    Log.g("Invalid SAD length: " + descriptor.length);
                } else {
                    byte b2 = descriptor[0];
                    int i2 = (b2 & 7) + 1;
                    if (((b2 >> 3) & 15) == 1) {
                        treeSet.add(Integer.valueOf(Util.t(i2)));
                    }
                }
            }
        }
        return ImmutableList.t(treeSet);
    }
}
