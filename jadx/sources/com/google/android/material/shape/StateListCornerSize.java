package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import com.google.android.material.R$styleable;
import com.vuitton.android.R;
import java.io.IOException;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class StateListCornerSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f33007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CornerSize f33008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f33009c = new int[10][];
    public CornerSize[] d = new CornerSize[10];

    public static StateListCornerSize b(CornerSize cornerSize) {
        StateListCornerSize stateListCornerSize = new StateListCornerSize();
        stateListCornerSize.a(StateSet.WILD_CARD, cornerSize);
        return stateListCornerSize;
    }

    public final void a(int[] iArr, CornerSize cornerSize) {
        int i2 = this.f33007a;
        if (i2 == 0 || iArr.length == 0) {
            this.f33008b = cornerSize;
        }
        int[][] iArr2 = this.f33009c;
        if (i2 >= iArr2.length) {
            int i3 = i2 + 10;
            int[][] iArr3 = new int[i3][];
            System.arraycopy(iArr2, 0, iArr3, 0, i2);
            this.f33009c = iArr3;
            CornerSize[] cornerSizeArr = new CornerSize[i3];
            System.arraycopy(this.d, 0, cornerSizeArr, 0, i2);
            this.d = cornerSizeArr;
        }
        int[][] iArr4 = this.f33009c;
        int i4 = this.f33007a;
        iArr4[i4] = iArr;
        this.d[i4] = cornerSize;
        this.f33007a = i4 + 1;
    }

    public final CornerSize c(int[] iArr) {
        int i2;
        int[][] iArr2 = this.f33009c;
        int i3 = 0;
        while (true) {
            i2 = -1;
            if (i3 >= this.f33007a) {
                i3 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.f33009c;
            for (int i4 = 0; i4 < this.f33007a; i4++) {
                if (StateSet.stateSetMatches(iArr4[i4], iArr3)) {
                    i2 = i4;
                    break;
                }
            }
            i3 = i2;
        }
        return i3 < 0 ? this.f33008b : this.d[i3];
    }

    public final void d(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr = R$styleable.P;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                CornerSize cornerSizeE = ShapeAppearanceModel.e(typedArrayObtainAttributes, 5, new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i2 = 0;
                for (int i3 = 0; i3 < attributeCount; i3++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    if (attributeNameResource != R.attr.cornerSize) {
                        int i4 = i2 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i2] = attributeNameResource;
                        i2 = i4;
                    }
                }
                a(StateSet.trimStateSet(iArr2, i2), cornerSizeE);
            }
        }
    }
}
