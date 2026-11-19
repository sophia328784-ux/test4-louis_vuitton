package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.batch.android.s.b;
import defpackage.o60;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayoutStates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f11748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11749b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11750c = -1;
    public final SparseArray d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray f11751e = new SparseArray();

    public static class State {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f11753b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11754c;
        public final ConstraintSet d;

        public State(Context context, XmlResourceParser xmlResourceParser) {
            this.f11754c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.t);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    this.f11752a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11752a);
                } else if (index == 1) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11754c);
                    this.f11754c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.d = constraintSet;
                        constraintSet.f((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Variant {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f11755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f11756b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f11757c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11758e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ConstraintSet f11759f;

        public Variant(Context context, XmlResourceParser xmlResourceParser) {
            this.f11755a = Float.NaN;
            this.f11756b = Float.NaN;
            this.f11757c = Float.NaN;
            this.d = Float.NaN;
            this.f11758e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.x);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11758e);
                    this.f11758e = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f11759f = constraintSet;
                        constraintSet.f((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                } else if (index == 1) {
                    this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
                } else if (index == 2) {
                    this.f11756b = typedArrayObtainStyledAttributes.getDimension(index, this.f11756b);
                } else if (index == 3) {
                    this.f11757c = typedArrayObtainStyledAttributes.getDimension(index, this.f11757c);
                } else if (index == 4) {
                    this.f11755a = typedArrayObtainStyledAttributes.getDimension(index, this.f11755a);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final boolean a(float f2, float f3) {
            float f4 = this.f11755a;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.f11756b;
            if (!Float.isNaN(f5) && f3 < f5) {
                return false;
            }
            float f6 = this.f11757c;
            if (!Float.isNaN(f6) && f2 > f6) {
                return false;
            }
            float f7 = this.d;
            return Float.isNaN(f7) || f3 <= f7;
        }
    }

    public ConstraintLayoutStates(Context context, ConstraintLayout constraintLayout, int i2) {
        String str;
        this.f11748a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            State state = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                a(context, xml);
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                State state2 = new State(context, xml);
                                this.d.put(state2.f11752a, state2);
                                state = state2;
                            }
                            break;
                        case 1382829617:
                            str = "StateSet";
                            name.equals(str);
                            break;
                        case 1657696882:
                            str = "layoutDescription";
                            name.equals(str);
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                Variant variant = new Variant(context, xml);
                                if (state != null) {
                                    state.f11753b.add(variant);
                                }
                            }
                            break;
                    }
                }
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    public final void a(Context context, XmlResourceParser xmlResourceParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlResourceParser.getAttributeName(i2);
            String attributeValue = xmlResourceParser.getAttributeValue(i2);
            if (attributeName != null && attributeValue != null && b.a.f24015b.equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(o60.D(47, 1, attributeValue), b.a.f24015b, context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                constraintSet.m(context, xmlResourceParser);
                this.f11751e.put(identifier, constraintSet);
                return;
            }
        }
    }

    public final void b(float f2, float f3, int i2) {
        int i3 = this.f11749b;
        int i4 = 0;
        ConstraintLayout constraintLayout = this.f11748a;
        SparseArray sparseArray = this.d;
        if (i3 != i2) {
            this.f11749b = i2;
            State state = (State) sparseArray.get(i2);
            ArrayList arrayList = state.f11753b;
            while (true) {
                if (i4 >= arrayList.size()) {
                    i4 = -1;
                    break;
                } else if (((Variant) arrayList.get(i4)).a(f2, f3)) {
                    break;
                } else {
                    i4++;
                }
            }
            ArrayList arrayList2 = state.f11753b;
            ConstraintSet constraintSet = i4 == -1 ? state.d : ((Variant) arrayList2.get(i4)).f11759f;
            if (i4 != -1) {
                int i5 = ((Variant) arrayList2.get(i4)).f11758e;
            }
            if (constraintSet == null) {
                return;
            }
            this.f11750c = i4;
            constraintSet.c(constraintLayout);
            return;
        }
        State state2 = i2 == -1 ? (State) sparseArray.valueAt(0) : (State) sparseArray.get(i3);
        int i6 = this.f11750c;
        if (i6 == -1 || !((Variant) state2.f11753b.get(i6)).a(f2, f3)) {
            ArrayList arrayList3 = state2.f11753b;
            while (true) {
                if (i4 >= arrayList3.size()) {
                    i4 = -1;
                    break;
                } else if (((Variant) arrayList3.get(i4)).a(f2, f3)) {
                    break;
                } else {
                    i4++;
                }
            }
            ArrayList arrayList4 = state2.f11753b;
            if (this.f11750c == i4) {
                return;
            }
            ConstraintSet constraintSet2 = i4 == -1 ? null : ((Variant) arrayList4.get(i4)).f11759f;
            if (i4 != -1) {
                int i7 = ((Variant) arrayList4.get(i4)).f11758e;
            }
            if (constraintSet2 == null) {
                return;
            }
            this.f11750c = i4;
            constraintSet2.c(constraintLayout);
        }
    }
}
