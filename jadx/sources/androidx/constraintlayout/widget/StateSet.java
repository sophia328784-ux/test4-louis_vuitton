package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class StateSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f11829b = new SparseArray();

    public static class State {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f11831b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11832c;

        public State(Context context, XmlPullParser xmlPullParser) {
            this.f11832c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.t);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    this.f11830a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11830a);
                } else if (index == 1) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11832c);
                    this.f11832c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Variant {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f11833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f11834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f11835c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11836e;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.f11833a = Float.NaN;
            this.f11834b = Float.NaN;
            this.f11835c = Float.NaN;
            this.d = Float.NaN;
            this.f11836e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.x);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11836e);
                    this.f11836e = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                } else if (index == 1) {
                    this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
                } else if (index == 2) {
                    this.f11834b = typedArrayObtainStyledAttributes.getDimension(index, this.f11834b);
                } else if (index == 3) {
                    this.f11835c = typedArrayObtainStyledAttributes.getDimension(index, this.f11835c);
                } else if (index == 4) {
                    this.f11833a = typedArrayObtainStyledAttributes.getDimension(index, this.f11833a);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final boolean a(float f2, float f3) {
            float f4 = this.f11833a;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.f11834b;
            if (!Float.isNaN(f5) && f3 < f5) {
                return false;
            }
            float f6 = this.f11835c;
            if (!Float.isNaN(f6) && f2 > f6) {
                return false;
            }
            float f7 = this.d;
            return Float.isNaN(f7) || f3 <= f7;
        }
    }

    public StateSet(Context context, XmlPullParser xmlPullParser) {
        this.f11828a = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.u);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                this.f11828a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11828a);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        try {
            int eventType = xmlPullParser.getEventType();
            State state = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                state = new State(context, xmlPullParser);
                                this.f11829b.put(state.f11830a, state);
                            }
                            break;
                        case 1301459538:
                            name.equals("LayoutDescription");
                            break;
                        case 1382829617:
                            name.equals("StateSet");
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                Variant variant = new Variant(context, xmlPullParser);
                                if (state != null) {
                                    state.f11831b.add(variant);
                                }
                            }
                            break;
                    }
                } else if (eventType == 3 && "StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    public final int a(int i2, int i3, float f2, float f3) {
        State state = (State) this.f11829b.get(i3);
        if (state == null) {
            return i3;
        }
        ArrayList<Variant> arrayList = state.f11831b;
        int i4 = state.f11832c;
        if (f2 != -1.0f && f3 != -1.0f) {
            Variant variant = null;
            for (Variant variant2 : arrayList) {
                if (variant2.a(f2, f3)) {
                    if (i2 != variant2.f11836e) {
                        variant = variant2;
                    }
                }
            }
            return variant != null ? variant.f11836e : i4;
        }
        if (i4 != i2) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (i2 == ((Variant) it.next()).f11836e) {
                }
            }
            return i4;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x006b  */
    public final int b(int i2) {
        int i3 = 0;
        SparseArray sparseArray = this.f11829b;
        if (-1 == i2) {
            State state = i2 == -1 ? (State) sparseArray.valueAt(0) : (State) sparseArray.get(-1);
            if (state != null) {
                ArrayList arrayList = state.f11831b;
                while (true) {
                    if (i3 >= arrayList.size()) {
                        i3 = -1;
                        break;
                    }
                    if (((Variant) arrayList.get(i3)).a(-1.0f, -1.0f)) {
                        break;
                    }
                    i3++;
                }
                if (-1 != i3) {
                    return i3 == -1 ? state.f11832c : ((Variant) arrayList.get(i3)).f11836e;
                }
            }
        } else {
            State state2 = (State) sparseArray.get(i2);
            if (state2 != null) {
                ArrayList arrayList2 = state2.f11831b;
                while (i3 < arrayList2.size()) {
                    if (((Variant) arrayList2.get(i3)).a(-1.0f, -1.0f)) {
                        return i3 == -1 ? state2.f11832c : ((Variant) arrayList2.get(i3)).f11836e;
                    }
                    i3++;
                }
                i3 = -1;
                if (i3 == -1) {
                }
            }
        }
        return -1;
    }
}
