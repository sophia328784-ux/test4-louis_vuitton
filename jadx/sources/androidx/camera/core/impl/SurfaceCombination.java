package androidx.camera.core.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceCombination {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2349a;

    public SurfaceCombination(SurfaceConfig... surfaceConfigArr) {
        ArrayList arrayList = new ArrayList();
        this.f2349a = arrayList;
        Collections.addAll(arrayList, surfaceConfigArr);
    }

    public static void b(ArrayList arrayList, int i2, int[] iArr, int i3) {
        if (i3 >= iArr.length) {
            arrayList.add((int[]) iArr.clone());
            return;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 0;
            while (true) {
                if (i5 >= i3) {
                    iArr[i3] = i4;
                    b(arrayList, i2, iArr, i3 + 1);
                    break;
                } else if (i4 == iArr[i5]) {
                    break;
                } else {
                    i5++;
                }
            }
        }
    }

    public final void a(SurfaceConfig surfaceConfig) {
        this.f2349a.add(surfaceConfig);
    }

    public final List c(List list) {
        StreamUseCase streamUseCase;
        StreamUseCase streamUseCase2;
        StreamUseCase streamUseCase3;
        if (list.isEmpty()) {
            return new ArrayList();
        }
        int size = list.size();
        ArrayList arrayList = this.f2349a;
        if (size != arrayList.size()) {
            return null;
        }
        int size2 = arrayList.size();
        ArrayList<int[]> arrayList2 = new ArrayList();
        b(arrayList2, size2, new int[size2], 0);
        SurfaceConfig[] surfaceConfigArr = new SurfaceConfig[list.size()];
        for (int[] iArr : arrayList2) {
            boolean z = true;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (iArr[i2] < list.size()) {
                    SurfaceConfig surfaceConfig = (SurfaceConfig) arrayList.get(i2);
                    SurfaceConfig surfaceConfig2 = (SurfaceConfig) list.get(iArr[i2]);
                    surfaceConfig.getClass();
                    surfaceConfig2.getClass();
                    z &= surfaceConfig2.f2355b.getId() <= surfaceConfig.f2355b.getId() && surfaceConfig2.f2354a == surfaceConfig.f2354a && ((streamUseCase = surfaceConfig.f2356c) == (streamUseCase2 = StreamUseCase.DEFAULT) || (streamUseCase3 = surfaceConfig2.f2356c) == streamUseCase2 || streamUseCase3 == streamUseCase);
                    if (!z) {
                        break;
                    }
                    surfaceConfigArr[iArr[i2]] = (SurfaceConfig) arrayList.get(i2);
                }
            }
            if (z) {
                return Arrays.asList(surfaceConfigArr);
            }
        }
        return null;
    }

    public SurfaceCombination() {
        this.f2349a = new ArrayList();
    }
}
