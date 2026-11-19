package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PluginExceptionsKt {
    public static final void a(int[] iArr, int[] iArr2, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        ArrayList arrayList = new ArrayList();
        int length = iArr2.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr2[i2] & (~iArr[i2]);
            if (i3 != 0) {
                for (int i4 = 0; i4 < 32; i4++) {
                    if ((i3 & 1) != 0) {
                        arrayList.add(serialDescriptor.f((i2 * 32) + i4));
                    }
                    i3 >>>= 1;
                }
            }
        }
        throw new MissingFieldException(arrayList, serialDescriptor.i());
    }

    public static final void b(int i2, int i3, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        ArrayList arrayList = new ArrayList();
        int i4 = (~i2) & i3;
        for (int i5 = 0; i5 < 32; i5++) {
            if ((i4 & 1) != 0) {
                arrayList.add(serialDescriptor.f(i5));
            }
            i4 >>>= 1;
        }
        throw new MissingFieldException(arrayList, serialDescriptor.i());
    }
}
