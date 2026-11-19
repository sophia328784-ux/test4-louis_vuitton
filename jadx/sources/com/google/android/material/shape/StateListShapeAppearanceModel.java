package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import com.google.android.material.R$styleable;
import com.vuitton.android.R;
import java.io.IOException;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class StateListShapeAppearanceModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeAppearanceModel f33011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[][] f33012c;
    public final ShapeAppearanceModel[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateListCornerSize f33013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateListCornerSize f33014f;
    public final StateListCornerSize g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateListCornerSize f33015h;

    public StateListShapeAppearanceModel(Builder builder) {
        this.f33010a = builder.f33016a;
        this.f33011b = builder.f33017b;
        this.f33012c = builder.f33018c;
        this.d = builder.d;
        this.f33013e = builder.f33019e;
        this.f33014f = builder.f33020f;
        this.g = builder.g;
        this.f33015h = builder.f33021h;
    }

    public static void a(Builder builder, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                int[] iArr = R$styleable.E;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                ShapeAppearanceModel shapeAppearanceModelA = ShapeAppearanceModel.a(context, typedArrayObtainAttributes.getResourceId(0, 0), typedArrayObtainAttributes.getResourceId(1, 0)).a();
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i2 = 0;
                for (int i3 = 0; i3 < attributeCount; i3++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                        int i4 = i2 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i2] = attributeNameResource;
                        i2 = i4;
                    }
                }
                builder.a(StateSet.trimStateSet(iArr2, i2), shapeAppearanceModelA);
            }
        }
    }

    public static StateListShapeAppearanceModel b(Context context, TypedArray typedArray, int i2) {
        int next;
        int resourceId = typedArray.getResourceId(i2, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        Builder builder = new Builder();
        builder.b();
        try {
            XmlResourceParser xml = context.getResources().getXml(resourceId);
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    a(builder, context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                xml.close();
                if (builder.f33016a == 0) {
                    return null;
                }
                return new StateListShapeAppearanceModel(builder);
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            builder.b();
        }
    }

    public final ShapeAppearanceModel c() {
        ShapeAppearanceModel shapeAppearanceModel = this.f33011b;
        StateListCornerSize stateListCornerSize = this.f33015h;
        StateListCornerSize stateListCornerSize2 = this.g;
        StateListCornerSize stateListCornerSize3 = this.f33014f;
        StateListCornerSize stateListCornerSize4 = this.f33013e;
        if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
            return shapeAppearanceModel;
        }
        shapeAppearanceModel.getClass();
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
        if (stateListCornerSize4 != null) {
            builder.f32971e = stateListCornerSize4.f33008b;
        }
        if (stateListCornerSize3 != null) {
            builder.f32972f = stateListCornerSize3.f33008b;
        }
        if (stateListCornerSize2 != null) {
            builder.f32973h = stateListCornerSize2.f33008b;
        }
        if (stateListCornerSize != null) {
            builder.g = stateListCornerSize.f33008b;
        }
        return builder.a();
    }

    public final boolean d() {
        StateListCornerSize stateListCornerSize;
        StateListCornerSize stateListCornerSize2;
        StateListCornerSize stateListCornerSize3;
        StateListCornerSize stateListCornerSize4;
        return this.f33010a > 1 || ((stateListCornerSize = this.f33013e) != null && stateListCornerSize.f33007a > 1) || (((stateListCornerSize2 = this.f33014f) != null && stateListCornerSize2.f33007a > 1) || (((stateListCornerSize3 = this.g) != null && stateListCornerSize3.f33007a > 1) || ((stateListCornerSize4 = this.f33015h) != null && stateListCornerSize4.f33007a > 1)));
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f33016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ShapeAppearanceModel f33017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[][] f33018c;
        public ShapeAppearanceModel[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public StateListCornerSize f33019e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public StateListCornerSize f33020f;
        public StateListCornerSize g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public StateListCornerSize f33021h;

        public Builder(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
            int i2 = stateListShapeAppearanceModel.f33010a;
            this.f33016a = i2;
            this.f33017b = stateListShapeAppearanceModel.f33011b;
            int[][] iArr = stateListShapeAppearanceModel.f33012c;
            int[][] iArr2 = new int[iArr.length][];
            this.f33018c = iArr2;
            ShapeAppearanceModel[] shapeAppearanceModelArr = stateListShapeAppearanceModel.d;
            this.d = new ShapeAppearanceModel[shapeAppearanceModelArr.length];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(shapeAppearanceModelArr, 0, this.d, 0, this.f33016a);
            this.f33019e = stateListShapeAppearanceModel.f33013e;
            this.f33020f = stateListShapeAppearanceModel.f33014f;
            this.g = stateListShapeAppearanceModel.g;
            this.f33021h = stateListShapeAppearanceModel.f33015h;
        }

        public final void a(int[] iArr, ShapeAppearanceModel shapeAppearanceModel) {
            int i2 = this.f33016a;
            if (i2 == 0 || iArr.length == 0) {
                this.f33017b = shapeAppearanceModel;
            }
            int[][] iArr2 = this.f33018c;
            if (i2 >= iArr2.length) {
                int i3 = i2 + 10;
                int[][] iArr3 = new int[i3][];
                System.arraycopy(iArr2, 0, iArr3, 0, i2);
                this.f33018c = iArr3;
                ShapeAppearanceModel[] shapeAppearanceModelArr = new ShapeAppearanceModel[i3];
                System.arraycopy(this.d, 0, shapeAppearanceModelArr, 0, i2);
                this.d = shapeAppearanceModelArr;
            }
            int[][] iArr4 = this.f33018c;
            int i4 = this.f33016a;
            iArr4[i4] = iArr;
            this.d[i4] = shapeAppearanceModel;
            this.f33016a = i4 + 1;
        }

        public final void b() {
            this.f33017b = new ShapeAppearanceModel();
            this.f33018c = new int[10][];
            this.d = new ShapeAppearanceModel[10];
        }

        public Builder(ShapeAppearanceModel shapeAppearanceModel) {
            b();
            a(StateSet.WILD_CARD, shapeAppearanceModel);
        }
    }
}
