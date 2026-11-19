package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import com.google.android.material.R$styleable;
import com.vuitton.android.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class StateListSizeChange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f33022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SizeChange f33023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f33024c = new int[10][];
    public SizeChange[] d = new SizeChange[10];

    public static class SizeChange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SizeChangeAmount f33025a;
    }

    public static class SizeChangeAmount {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SizeChangeType f33026a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f33027b;

        public SizeChangeAmount(SizeChangeType sizeChangeType, float f2) {
            this.f33026a = sizeChangeType;
            this.f33027b = f2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SizeChangeType {
        private static final /* synthetic */ SizeChangeType[] $VALUES;
        public static final SizeChangeType PERCENT;
        public static final SizeChangeType PIXELS;

        static {
            SizeChangeType sizeChangeType = new SizeChangeType("PERCENT", 0);
            PERCENT = sizeChangeType;
            SizeChangeType sizeChangeType2 = new SizeChangeType("PIXELS", 1);
            PIXELS = sizeChangeType2;
            $VALUES = new SizeChangeType[]{sizeChangeType, sizeChangeType2};
        }

        public static SizeChangeType valueOf(String str) {
            return (SizeChangeType) Enum.valueOf(SizeChangeType.class, str);
        }

        public static SizeChangeType[] values() {
            return (SizeChangeType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    public final void a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        SizeChangeAmount sizeChangeAmount;
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
                int[] iArr = R$styleable.T;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    int i2 = typedValuePeekValue.type;
                    if (i2 == 5) {
                        sizeChangeAmount = new SizeChangeAmount(SizeChangeType.PIXELS, TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainAttributes.getResources().getDisplayMetrics()));
                    } else if (i2 == 6) {
                        sizeChangeAmount = new SizeChangeAmount(SizeChangeType.PERCENT, typedValuePeekValue.getFraction(1.0f, 1.0f));
                    } else {
                        sizeChangeAmount = null;
                    }
                } else {
                    sizeChangeAmount = null;
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i3 = 0;
                for (int i4 = 0; i4 < attributeCount; i4++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i4);
                    if (attributeNameResource != R.attr.widthChange) {
                        int i5 = i3 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i3] = attributeNameResource;
                        i3 = i5;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i3);
                SizeChange sizeChange = new SizeChange();
                sizeChange.f33025a = sizeChangeAmount;
                int i6 = this.f33022a;
                if (i6 == 0 || iArrTrimStateSet.length == 0) {
                    this.f33023b = sizeChange;
                }
                int[][] iArr3 = this.f33024c;
                if (i6 >= iArr3.length) {
                    int i7 = i6 + 10;
                    int[][] iArr4 = new int[i7][];
                    System.arraycopy(iArr3, 0, iArr4, 0, i6);
                    this.f33024c = iArr4;
                    SizeChange[] sizeChangeArr = new SizeChange[i7];
                    System.arraycopy(this.d, 0, sizeChangeArr, 0, i6);
                    this.d = sizeChangeArr;
                }
                int[][] iArr5 = this.f33024c;
                int i8 = this.f33022a;
                iArr5[i8] = iArrTrimStateSet;
                this.d[i8] = sizeChange;
                this.f33022a = i8 + 1;
            }
        }
    }
}
