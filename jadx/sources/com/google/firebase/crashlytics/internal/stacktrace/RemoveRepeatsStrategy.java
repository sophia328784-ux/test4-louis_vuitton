package com.google.firebase.crashlytics.internal.stacktrace;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class RemoveRepeatsStrategy implements StackTraceTrimmingStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f35068a;

    public RemoveRepeatsStrategy(int i2) {
        this.f35068a = i2;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    @Override // com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy
    public final StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        int i2;
        HashMap map = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            Integer num = (Integer) map.get(stackTraceElement);
            if (num == null) {
                stackTraceElementArr2[i4] = stackTraceElementArr[i3];
                i4++;
                i5 = 1;
                i2 = i3;
                break;
                break;
            }
            int iIntValue = num.intValue();
            int i6 = i3 - iIntValue;
            if (i3 + i6 <= stackTraceElementArr.length) {
                int i7 = 0;
                while (true) {
                    if (i7 >= i6) {
                        int iIntValue2 = i3 - num.intValue();
                        if (i5 < this.f35068a) {
                            System.arraycopy(stackTraceElementArr, i3, stackTraceElementArr2, i4, iIntValue2);
                            i4 += iIntValue2;
                            i5++;
                        }
                        i2 = (iIntValue2 - 1) + i3;
                        break;
                    }
                    if (!stackTraceElementArr[iIntValue + i7].equals(stackTraceElementArr[i3 + i7])) {
                        stackTraceElementArr2[i4] = stackTraceElementArr[i3];
                        i4++;
                        i5 = 1;
                        i2 = i3;
                        break;
                        break;
                    }
                    i7++;
                }
            } else {
                stackTraceElementArr2[i4] = stackTraceElementArr[i3];
                i4++;
                i5 = 1;
                i2 = i3;
                break;
            }
            map.put(stackTraceElement, Integer.valueOf(i3));
            i3 = i2 + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i4];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i4);
        return i4 < stackTraceElementArr.length ? stackTraceElementArr3 : stackTraceElementArr;
    }

    public RemoveRepeatsStrategy() {
        this(1);
    }
}
