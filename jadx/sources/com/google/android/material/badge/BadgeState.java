package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.vuitton.android.R;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public final class BadgeState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final State f32291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final State f32292b = new State();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f32293c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f32294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f32295f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32296h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f32297i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f32298j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f32299k;
    public final int l;

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new AnonymousClass1();
        public Integer A;
        public Integer B;
        public Integer C;
        public Integer D;
        public Boolean E;
        public Integer F;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f32300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f32301c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f32302e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Integer f32303f;
        public Integer g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Integer f32304h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Integer f32305i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f32307k;
        public Locale o;
        public CharSequence p;
        public CharSequence q;
        public int r;
        public int s;
        public Integer t;
        public Integer v;
        public Integer w;
        public Integer x;
        public Integer y;
        public Integer z;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f32306j = 255;
        public int l = -2;
        public int m = -2;
        public int n = -2;
        public Boolean u = Boolean.TRUE;

        /* JADX INFO: renamed from: com.google.android.material.badge.BadgeState$State$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<State> {
            @Override // android.os.Parcelable.Creator
            public final State createFromParcel(Parcel parcel) {
                State state = new State();
                state.f32306j = 255;
                state.l = -2;
                state.m = -2;
                state.n = -2;
                state.u = Boolean.TRUE;
                state.f32300b = parcel.readInt();
                state.f32301c = (Integer) parcel.readSerializable();
                state.d = (Integer) parcel.readSerializable();
                state.f32302e = (Integer) parcel.readSerializable();
                state.f32303f = (Integer) parcel.readSerializable();
                state.g = (Integer) parcel.readSerializable();
                state.f32304h = (Integer) parcel.readSerializable();
                state.f32305i = (Integer) parcel.readSerializable();
                state.f32306j = parcel.readInt();
                state.f32307k = parcel.readString();
                state.l = parcel.readInt();
                state.m = parcel.readInt();
                state.n = parcel.readInt();
                state.p = parcel.readString();
                state.q = parcel.readString();
                state.r = parcel.readInt();
                state.t = (Integer) parcel.readSerializable();
                state.v = (Integer) parcel.readSerializable();
                state.w = (Integer) parcel.readSerializable();
                state.x = (Integer) parcel.readSerializable();
                state.y = (Integer) parcel.readSerializable();
                state.z = (Integer) parcel.readSerializable();
                state.A = (Integer) parcel.readSerializable();
                state.D = (Integer) parcel.readSerializable();
                state.B = (Integer) parcel.readSerializable();
                state.C = (Integer) parcel.readSerializable();
                state.u = (Boolean) parcel.readSerializable();
                state.o = (Locale) parcel.readSerializable();
                state.E = (Boolean) parcel.readSerializable();
                state.F = (Integer) parcel.readSerializable();
                return state;
            }

            @Override // android.os.Parcelable.Creator
            public final State[] newArray(int i2) {
                return new State[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f32300b);
            parcel.writeSerializable(this.f32301c);
            parcel.writeSerializable(this.d);
            parcel.writeSerializable(this.f32302e);
            parcel.writeSerializable(this.f32303f);
            parcel.writeSerializable(this.g);
            parcel.writeSerializable(this.f32304h);
            parcel.writeSerializable(this.f32305i);
            parcel.writeInt(this.f32306j);
            parcel.writeString(this.f32307k);
            parcel.writeInt(this.l);
            parcel.writeInt(this.m);
            parcel.writeInt(this.n);
            CharSequence charSequence = this.p;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.q;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.r);
            parcel.writeSerializable(this.t);
            parcel.writeSerializable(this.v);
            parcel.writeSerializable(this.w);
            parcel.writeSerializable(this.x);
            parcel.writeSerializable(this.y);
            parcel.writeSerializable(this.z);
            parcel.writeSerializable(this.A);
            parcel.writeSerializable(this.D);
            parcel.writeSerializable(this.B);
            parcel.writeSerializable(this.C);
            parcel.writeSerializable(this.u);
            parcel.writeSerializable(this.o);
            parcel.writeSerializable(this.E);
            parcel.writeSerializable(this.F);
        }
    }

    public BadgeState(Context context) {
        AttributeSet attributeSetAsAttributeSet;
        int styleAttribute;
        int next;
        State state = new State();
        int i2 = state.f32300b;
        if (i2 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i2);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            }
        } else {
            attributeSetAsAttributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayD = ThemeEnforcement.d(context, attributeSetAsAttributeSet, R$styleable.f32220c, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f32293c = typedArrayD.getDimensionPixelSize(5, -1);
        this.f32297i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f32298j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.d = typedArrayD.getDimensionPixelSize(15, -1);
        this.f32294e = typedArrayD.getDimension(13, resources.getDimension(R.dimen.m3_badge_size));
        this.g = typedArrayD.getDimension(18, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f32295f = typedArrayD.getDimension(4, resources.getDimension(R.dimen.m3_badge_size));
        this.f32296h = typedArrayD.getDimension(14, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f32299k = typedArrayD.getInt(25, 1);
        this.l = typedArrayD.getInt(2, 0);
        State state2 = this.f32292b;
        int i3 = state.f32306j;
        state2.f32306j = i3 == -2 ? 255 : i3;
        int i4 = state.l;
        if (i4 != -2) {
            state2.l = i4;
        } else {
            boolean zHasValue = typedArrayD.hasValue(24);
            State state3 = this.f32292b;
            if (zHasValue) {
                state3.l = typedArrayD.getInt(24, 0);
            } else {
                state3.l = -1;
            }
        }
        String str = state.f32307k;
        if (str != null) {
            this.f32292b.f32307k = str;
        } else if (typedArrayD.hasValue(8)) {
            this.f32292b.f32307k = typedArrayD.getString(8);
        }
        State state4 = this.f32292b;
        state4.p = state.p;
        CharSequence charSequence = state.q;
        state4.q = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        State state5 = this.f32292b;
        int i5 = state.r;
        state5.r = i5 == 0 ? R.plurals.mtrl_badge_content_description : i5;
        int i6 = state.s;
        state5.s = i6 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i6;
        Boolean bool = state.u;
        state5.u = Boolean.valueOf(bool == null || bool.booleanValue());
        State state6 = this.f32292b;
        int i7 = state.m;
        state6.m = i7 == -2 ? typedArrayD.getInt(22, -2) : i7;
        State state7 = this.f32292b;
        int i8 = state.n;
        state7.n = i8 == -2 ? typedArrayD.getInt(23, -2) : i8;
        State state8 = this.f32292b;
        Integer num = state.f32303f;
        state8.f32303f = Integer.valueOf(num == null ? typedArrayD.getResourceId(6, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        State state9 = this.f32292b;
        Integer num2 = state.g;
        state9.g = Integer.valueOf(num2 == null ? typedArrayD.getResourceId(7, 0) : num2.intValue());
        State state10 = this.f32292b;
        Integer num3 = state.f32304h;
        state10.f32304h = Integer.valueOf(num3 == null ? typedArrayD.getResourceId(16, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        State state11 = this.f32292b;
        Integer num4 = state.f32305i;
        state11.f32305i = Integer.valueOf(num4 == null ? typedArrayD.getResourceId(17, 0) : num4.intValue());
        State state12 = this.f32292b;
        Integer num5 = state.f32301c;
        state12.f32301c = Integer.valueOf(num5 == null ? MaterialResources.a(context, typedArrayD, 1).getDefaultColor() : num5.intValue());
        State state13 = this.f32292b;
        Integer num6 = state.f32302e;
        state13.f32302e = Integer.valueOf(num6 == null ? typedArrayD.getResourceId(9, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = state.d;
        if (num7 != null) {
            this.f32292b.d = num7;
        } else {
            boolean zHasValue2 = typedArrayD.hasValue(10);
            State state14 = this.f32292b;
            if (zHasValue2) {
                state14.d = Integer.valueOf(MaterialResources.a(context, typedArrayD, 10).getDefaultColor());
            } else {
                this.f32292b.d = Integer.valueOf(new TextAppearance(context, state14.f32302e.intValue()).f32876k.getDefaultColor());
            }
        }
        State state15 = this.f32292b;
        Integer num8 = state.t;
        state15.t = Integer.valueOf(num8 == null ? typedArrayD.getInt(3, 8388661) : num8.intValue());
        State state16 = this.f32292b;
        Integer num9 = state.v;
        state16.v = Integer.valueOf(num9 == null ? typedArrayD.getDimensionPixelSize(12, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        State state17 = this.f32292b;
        Integer num10 = state.w;
        state17.w = Integer.valueOf(num10 == null ? typedArrayD.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        State state18 = this.f32292b;
        Integer num11 = state.x;
        state18.x = Integer.valueOf(num11 == null ? typedArrayD.getDimensionPixelOffset(19, 0) : num11.intValue());
        State state19 = this.f32292b;
        Integer num12 = state.y;
        state19.y = Integer.valueOf(num12 == null ? typedArrayD.getDimensionPixelOffset(26, 0) : num12.intValue());
        State state20 = this.f32292b;
        Integer num13 = state.z;
        state20.z = Integer.valueOf(num13 == null ? typedArrayD.getDimensionPixelOffset(20, state20.x.intValue()) : num13.intValue());
        State state21 = this.f32292b;
        Integer num14 = state.A;
        state21.A = Integer.valueOf(num14 == null ? typedArrayD.getDimensionPixelOffset(27, state21.y.intValue()) : num14.intValue());
        State state22 = this.f32292b;
        Integer num15 = state.D;
        state22.D = Integer.valueOf(num15 == null ? typedArrayD.getDimensionPixelOffset(21, 0) : num15.intValue());
        State state23 = this.f32292b;
        Integer num16 = state.B;
        state23.B = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        State state24 = this.f32292b;
        Integer num17 = state.C;
        state24.C = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        State state25 = this.f32292b;
        Boolean bool2 = state.E;
        state25.E = Boolean.valueOf(bool2 == null ? typedArrayD.getBoolean(0, false) : bool2.booleanValue());
        typedArrayD.recycle();
        Locale locale = state.o;
        State state26 = this.f32292b;
        if (locale == null) {
            state26.o = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            state26.o = locale;
        }
        this.f32291a = state;
    }
}
