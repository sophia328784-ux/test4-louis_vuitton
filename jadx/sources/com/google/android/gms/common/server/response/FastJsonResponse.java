package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import defpackage.a;
import defpackage.md;
import defpackage.mt;
import defpackage.tr;
import defpackage.x1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FastJsonResponse {

    public interface FieldConverter<I, O> {
        String b1(Object obj);
    }

    public static final void f(StringBuilder sb, Field field, Object obj) {
        int i2 = field.f29306c;
        if (i2 == 11) {
            Class cls = field.f29310i;
            Preconditions.h(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i2 != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(JsonUtils.a((String) obj));
            sb.append("\"");
        }
    }

    public abstract Map a();

    public Object b(Field field) {
        String str = field.g;
        if (field.f29310i == null) {
            return c();
        }
        if (c() != null) {
            md.k(tr.g("Concrete field shouldn't be value object: ", str));
            return null;
        }
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String strSubstring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(upperCase).length() + 3 + strSubstring.length());
            sb.append("get");
            sb.append(upperCase);
            sb.append(strSubstring);
            return getClass().getMethod(sb.toString(), null).invoke(this, null);
        } catch (Exception e2) {
            x1.m(e2);
            return null;
        }
    }

    public abstract Object c();

    public boolean d(Field field) {
        if (field.f29307e != 11) {
            return e();
        }
        if (field.f29308f) {
            mt.i("Concrete type arrays not supported");
            return false;
        }
        mt.i("Concrete types not supported");
        return false;
    }

    public abstract boolean e();

    public String toString() {
        Map mapA = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapA.keySet()) {
            Field field = (Field) mapA.get(str);
            if (d(field)) {
                Object objB = b(field);
                FieldConverter fieldConverter = field.l;
                if (fieldConverter != null) {
                    objB = fieldConverter.b1(objB);
                }
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                a.B(sb, "\"", str, "\":");
                if (objB != null) {
                    switch (field.f29307e) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64.encodeToString((byte[]) objB, 0));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64.encodeToString((byte[]) objB, 10));
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.a(sb, (HashMap) objB);
                            break;
                        default:
                            if (field.d) {
                                ArrayList arrayList = (ArrayList) objB;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i2);
                                    if (obj != null) {
                                        f(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                            } else {
                                f(sb, field, objB);
                            }
                            break;
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f29305b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f29306c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f29307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f29308f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f29309h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Class f29310i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f29311j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public zan f29312k;
        public final FieldConverter l;

        public Field(int i2, int i3, boolean z, int i4, boolean z2, String str, int i5, String str2, zaa zaaVar) {
            this.f29305b = i2;
            this.f29306c = i3;
            this.d = z;
            this.f29307e = i4;
            this.f29308f = z2;
            this.g = str;
            this.f29309h = i5;
            if (str2 == null) {
                this.f29310i = null;
                this.f29311j = null;
            } else {
                this.f29310i = SafeParcelResponse.class;
                this.f29311j = str2;
            }
            if (zaaVar == null) {
                this.l = null;
                return;
            }
            StringToIntConverter stringToIntConverter = zaaVar.f29302c;
            if (stringToIntConverter != null) {
                this.l = stringToIntConverter;
            } else {
                md.k("There was no converter wrapped in this ConverterWrapper.");
                throw null;
            }
        }

        public static Field W1(int i2, String str) {
            return new Field(7, true, 7, true, str, i2, null);
        }

        public final String toString() {
            Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
            toStringHelper.a(Integer.valueOf(this.f29305b), "versionCode");
            toStringHelper.a(Integer.valueOf(this.f29306c), "typeIn");
            toStringHelper.a(Boolean.valueOf(this.d), "typeInArray");
            toStringHelper.a(Integer.valueOf(this.f29307e), "typeOut");
            toStringHelper.a(Boolean.valueOf(this.f29308f), "typeOutArray");
            toStringHelper.a(this.g, "outputFieldName");
            toStringHelper.a(Integer.valueOf(this.f29309h), "safeParcelFieldId");
            String str = this.f29311j;
            if (str == null) {
                str = null;
            }
            toStringHelper.a(str, "concreteTypeName");
            Class cls = this.f29310i;
            if (cls != null) {
                toStringHelper.a(cls.getCanonicalName(), "concreteType.class");
            }
            FieldConverter fieldConverter = this.l;
            if (fieldConverter != null) {
                toStringHelper.a(fieldConverter.getClass().getCanonicalName(), "converterName");
            }
            return toStringHelper.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f29305b);
            SafeParcelWriter.p(parcel, 2, 4);
            parcel.writeInt(this.f29306c);
            SafeParcelWriter.p(parcel, 3, 4);
            parcel.writeInt(this.d ? 1 : 0);
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(this.f29307e);
            SafeParcelWriter.p(parcel, 5, 4);
            parcel.writeInt(this.f29308f ? 1 : 0);
            SafeParcelWriter.k(parcel, 6, this.g, false);
            SafeParcelWriter.p(parcel, 7, 4);
            parcel.writeInt(this.f29309h);
            zaa zaaVar = null;
            String str = this.f29311j;
            if (str == null) {
                str = null;
            }
            SafeParcelWriter.k(parcel, 8, str, false);
            FieldConverter fieldConverter = this.l;
            if (fieldConverter != null) {
                if (!(fieldConverter instanceof StringToIntConverter)) {
                    Parcelable.Creator<zaa> creator = zaa.CREATOR;
                    md.n("Unsupported safe parcelable field converter class.");
                    return;
                }
                zaaVar = new zaa((StringToIntConverter) fieldConverter);
            }
            SafeParcelWriter.j(parcel, 9, zaaVar, i2, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Field(int i2, boolean z, int i3, boolean z2, String str, int i4, Class cls) {
            this.f29305b = 1;
            this.f29306c = i2;
            this.d = z;
            this.f29307e = i3;
            this.f29308f = z2;
            this.g = str;
            this.f29309h = i4;
            this.f29310i = cls;
            if (cls == null) {
                this.f29311j = null;
            } else {
                this.f29311j = cls.getCanonicalName();
            }
            this.l = null;
        }
    }
}
