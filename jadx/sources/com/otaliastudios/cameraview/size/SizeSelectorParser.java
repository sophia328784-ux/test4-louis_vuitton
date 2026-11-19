package com.otaliastudios.cameraview.size;

import android.content.res.TypedArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class SizeSelectorParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SizeSelector f39088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SizeSelector f39089b;

    public SizeSelectorParser(TypedArray typedArray) {
        ArrayList arrayList = new ArrayList(3);
        if (typedArray.hasValue(34)) {
            arrayList.add(SizeSelectors.g(typedArray.getInteger(34, 0)));
        }
        if (typedArray.hasValue(31)) {
            arrayList.add(SizeSelectors.e(typedArray.getInteger(31, 0)));
        }
        if (typedArray.hasValue(33)) {
            arrayList.add(SizeSelectors.f(typedArray.getInteger(33, 0)));
        }
        if (typedArray.hasValue(30)) {
            arrayList.add(SizeSelectors.d(typedArray.getInteger(30, 0)));
        }
        if (typedArray.hasValue(32)) {
            arrayList.add(SizeSelectors.j(new SizeSelectors.Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.9

                /* JADX INFO: renamed from: a */
                public final /* synthetic */ int f39096a;

                public AnonymousClass9() {
                    i = i;
                }

                @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
                public final boolean a(Size size) {
                    return size.f39087c * size.f39086b >= i;
                }
            }));
        }
        if (typedArray.hasValue(29)) {
            arrayList.add(SizeSelectors.j(new SizeSelectors.Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.8

                /* JADX INFO: renamed from: a */
                public final /* synthetic */ int f39095a;

                public AnonymousClass8() {
                    i = i;
                }

                @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
                public final boolean a(Size size) {
                    return size.f39087c * size.f39086b <= i;
                }
            }));
        }
        if (typedArray.hasValue(27)) {
            arrayList.add(SizeSelectors.b(AspectRatio.b(typedArray.getString(27))));
        }
        if (typedArray.getBoolean(35, false)) {
            arrayList.add(new SizeSelectors.AnonymousClass7());
        }
        if (typedArray.getBoolean(28, false)) {
            arrayList.add(new SizeSelectors.AnonymousClass6());
        }
        this.f39088a = !arrayList.isEmpty() ? SizeSelectors.a((SizeSelector[]) arrayList.toArray(new SizeSelector[0])) : new SizeSelectors.AnonymousClass6();
        ArrayList arrayList2 = new ArrayList(3);
        if (typedArray.hasValue(56)) {
            arrayList2.add(SizeSelectors.g(typedArray.getInteger(56, 0)));
        }
        if (typedArray.hasValue(53)) {
            arrayList2.add(SizeSelectors.e(typedArray.getInteger(53, 0)));
        }
        if (typedArray.hasValue(55)) {
            arrayList2.add(SizeSelectors.f(typedArray.getInteger(55, 0)));
        }
        if (typedArray.hasValue(52)) {
            arrayList2.add(SizeSelectors.d(typedArray.getInteger(52, 0)));
        }
        if (typedArray.hasValue(54)) {
            arrayList2.add(SizeSelectors.j(new SizeSelectors.Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.9

                /* JADX INFO: renamed from: a */
                public final /* synthetic */ int f39096a;

                public AnonymousClass9() {
                    i = i;
                }

                @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
                public final boolean a(Size size) {
                    return size.f39087c * size.f39086b >= i;
                }
            }));
        }
        if (typedArray.hasValue(51)) {
            arrayList2.add(SizeSelectors.j(new SizeSelectors.Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.8

                /* JADX INFO: renamed from: a */
                public final /* synthetic */ int f39095a;

                public AnonymousClass8() {
                    i = i;
                }

                @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
                public final boolean a(Size size) {
                    return size.f39087c * size.f39086b <= i;
                }
            }));
        }
        if (typedArray.hasValue(49)) {
            arrayList2.add(SizeSelectors.b(AspectRatio.b(typedArray.getString(49))));
        }
        if (typedArray.getBoolean(57, false)) {
            arrayList2.add(new SizeSelectors.AnonymousClass7());
        }
        if (typedArray.getBoolean(50, false)) {
            arrayList2.add(new SizeSelectors.AnonymousClass6());
        }
        this.f39089b = !arrayList2.isEmpty() ? SizeSelectors.a((SizeSelector[]) arrayList2.toArray(new SizeSelector[0])) : new SizeSelectors.AnonymousClass6();
    }
}
