package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import defpackage.a;
import defpackage.d21;
import defpackage.md;
import defpackage.mt;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Parcel f29314c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zan f29315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29316f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29317h;

    public SafeParcelResponse(zan zanVar, String str) {
        this.f29313b = 1;
        this.f29314c = Parcel.obtain();
        this.d = 0;
        Preconditions.h(zanVar);
        this.f29315e = zanVar;
        Preconditions.h(str);
        this.f29316f = str;
        this.g = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v48, types: [java.lang.Object, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r6v50, types: [java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void i(StringBuilder sb, Map map, Parcel parcel) {
        BigInteger bigInteger;
        Parcel parcelObtain;
        BigInteger[] bigIntegerArr;
        long[] jArrCreateLongArray;
        float[] fArrCreateFloatArray;
        double[] dArrCreateDoubleArray;
        BigDecimal[] bigDecimalArr;
        boolean[] zArrCreateBooleanArray;
        Parcel[] parcelArr;
        Object bigInteger2;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).f29309h, entry);
        }
        sb.append('{');
        int iZ = SafeParcelReader.z(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get((char) i2);
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                a.B(sb, "\"", str, "\":");
                FastJsonResponse.FieldConverter fieldConverter = field.l;
                String str2 = field.f29311j;
                FastJsonResponse.FieldConverter fieldConverter2 = field.l;
                int i3 = field.f29307e;
                if (fieldConverter != null) {
                    switch (i3) {
                        case 0:
                            Object objValueOf = Integer.valueOf(SafeParcelReader.t(i2, parcel));
                            if (fieldConverter2 != 0) {
                                objValueOf = fieldConverter2.b1(objValueOf);
                            }
                            k(sb, field, objValueOf);
                            break;
                        case 1:
                            int iX = SafeParcelReader.x(i2, parcel);
                            int iDataPosition = parcel.dataPosition();
                            if (iX == 0) {
                                bigInteger2 = null;
                            } else {
                                byte[] bArrCreateByteArray = parcel.createByteArray();
                                parcel.setDataPosition(iDataPosition + iX);
                                bigInteger2 = new BigInteger(bArrCreateByteArray);
                            }
                            if (fieldConverter2 != 0) {
                                bigInteger2 = fieldConverter2.b1(bigInteger2);
                            }
                            k(sb, field, bigInteger2);
                            break;
                        case 2:
                            Object objValueOf2 = Long.valueOf(SafeParcelReader.v(i2, parcel));
                            if (fieldConverter2 != 0) {
                                objValueOf2 = fieldConverter2.b1(objValueOf2);
                            }
                            k(sb, field, objValueOf2);
                            break;
                        case 3:
                            Object objValueOf3 = Float.valueOf(SafeParcelReader.q(i2, parcel));
                            if (fieldConverter2 != 0) {
                                objValueOf3 = fieldConverter2.b1(objValueOf3);
                            }
                            k(sb, field, objValueOf3);
                            break;
                        case 4:
                            Object objValueOf4 = Double.valueOf(SafeParcelReader.o(i2, parcel));
                            if (fieldConverter2 != 0) {
                                objValueOf4 = fieldConverter2.b1(objValueOf4);
                            }
                            k(sb, field, objValueOf4);
                            break;
                        case 5:
                            Object objA = SafeParcelReader.a(i2, parcel);
                            if (fieldConverter2 != 0) {
                                objA = fieldConverter2.b1(objA);
                            }
                            k(sb, field, objA);
                            break;
                        case 6:
                            Object objValueOf5 = Boolean.valueOf(SafeParcelReader.m(i2, parcel));
                            if (fieldConverter2 != 0) {
                                objValueOf5 = fieldConverter2.b1(objValueOf5);
                            }
                            k(sb, field, objValueOf5);
                            break;
                        case 7:
                            String strG = SafeParcelReader.g(i2, parcel);
                            if (fieldConverter2 != 0) {
                                strG = fieldConverter2.b1(strG);
                            }
                            k(sb, field, strG);
                            break;
                        case 8:
                        case 9:
                            Object objC = SafeParcelReader.c(i2, parcel);
                            if (fieldConverter2 != 0) {
                                objC = fieldConverter2.b1(objC);
                            }
                            k(sb, field, objC);
                            break;
                        case 10:
                            Bundle bundleB = SafeParcelReader.b(i2, parcel);
                            Object map2 = new HashMap();
                            for (String str3 : bundleB.keySet()) {
                                String string = bundleB.getString(str3);
                                Preconditions.h(string);
                                map2.put(str3, string);
                            }
                            if (fieldConverter2 != 0) {
                                map2 = fieldConverter2.b1(map2);
                            }
                            k(sb, field, map2);
                            break;
                        case 11:
                            md.n("Method does not accept concrete type.");
                            return;
                        default:
                            md.n(d21.f(i3, "Unknown field out type = ", new StringBuilder(String.valueOf(i3).length() + 25)));
                            return;
                    }
                } else if (field.f29308f) {
                    sb.append("[");
                    switch (i3) {
                        case 0:
                            int[] iArrE = SafeParcelReader.e(i2, parcel);
                            int length = iArrE.length;
                            for (int i4 = 0; i4 < length; i4++) {
                                if (i4 != 0) {
                                    sb.append(",");
                                }
                                sb.append(iArrE[i4]);
                            }
                            break;
                        case 1:
                            int iX2 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition2 = parcel.dataPosition();
                            if (iX2 == 0) {
                                bigIntegerArr = null;
                            } else {
                                int i5 = parcel.readInt();
                                bigIntegerArr = new BigInteger[i5];
                                for (int i6 = 0; i6 < i5; i6++) {
                                    bigIntegerArr[i6] = new BigInteger(parcel.createByteArray());
                                }
                                parcel.setDataPosition(iDataPosition2 + iX2);
                            }
                            int length2 = bigIntegerArr.length;
                            for (int i7 = 0; i7 < length2; i7++) {
                                if (i7 != 0) {
                                    sb.append(",");
                                }
                                sb.append(bigIntegerArr[i7]);
                            }
                            break;
                        case 2:
                            int iX3 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition3 = parcel.dataPosition();
                            if (iX3 == 0) {
                                jArrCreateLongArray = null;
                            } else {
                                jArrCreateLongArray = parcel.createLongArray();
                                parcel.setDataPosition(iDataPosition3 + iX3);
                            }
                            int length3 = jArrCreateLongArray.length;
                            for (int i8 = 0; i8 < length3; i8++) {
                                if (i8 != 0) {
                                    sb.append(",");
                                }
                                sb.append(jArrCreateLongArray[i8]);
                            }
                            break;
                        case 3:
                            int iX4 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition4 = parcel.dataPosition();
                            if (iX4 == 0) {
                                fArrCreateFloatArray = null;
                            } else {
                                fArrCreateFloatArray = parcel.createFloatArray();
                                parcel.setDataPosition(iDataPosition4 + iX4);
                            }
                            int length4 = fArrCreateFloatArray.length;
                            for (int i9 = 0; i9 < length4; i9++) {
                                if (i9 != 0) {
                                    sb.append(",");
                                }
                                sb.append(fArrCreateFloatArray[i9]);
                            }
                            break;
                        case 4:
                            int iX5 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition5 = parcel.dataPosition();
                            if (iX5 == 0) {
                                dArrCreateDoubleArray = null;
                            } else {
                                dArrCreateDoubleArray = parcel.createDoubleArray();
                                parcel.setDataPosition(iDataPosition5 + iX5);
                            }
                            int length5 = dArrCreateDoubleArray.length;
                            for (int i10 = 0; i10 < length5; i10++) {
                                if (i10 != 0) {
                                    sb.append(",");
                                }
                                sb.append(dArrCreateDoubleArray[i10]);
                            }
                            break;
                        case 5:
                            int iX6 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition6 = parcel.dataPosition();
                            if (iX6 == 0) {
                                bigDecimalArr = null;
                            } else {
                                int i11 = parcel.readInt();
                                bigDecimalArr = new BigDecimal[i11];
                                for (int i12 = 0; i12 < i11; i12++) {
                                    bigDecimalArr[i12] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                                }
                                parcel.setDataPosition(iDataPosition6 + iX6);
                            }
                            int length6 = bigDecimalArr.length;
                            for (int i13 = 0; i13 < length6; i13++) {
                                if (i13 != 0) {
                                    sb.append(",");
                                }
                                sb.append(bigDecimalArr[i13]);
                            }
                            break;
                        case 6:
                            int iX7 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition7 = parcel.dataPosition();
                            if (iX7 == 0) {
                                zArrCreateBooleanArray = null;
                            } else {
                                zArrCreateBooleanArray = parcel.createBooleanArray();
                                parcel.setDataPosition(iDataPosition7 + iX7);
                            }
                            int length7 = zArrCreateBooleanArray.length;
                            for (int i14 = 0; i14 < length7; i14++) {
                                if (i14 != 0) {
                                    sb.append(",");
                                }
                                sb.append(zArrCreateBooleanArray[i14]);
                            }
                            break;
                        case 7:
                            String[] strArrH = SafeParcelReader.h(i2, parcel);
                            int length8 = strArrH.length;
                            for (int i15 = 0; i15 < length8; i15++) {
                                if (i15 != 0) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(strArrH[i15]);
                                sb.append("\"");
                            }
                            break;
                        case 8:
                        case 9:
                        case 10:
                            mt.i("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                            return;
                        case 11:
                            int iX8 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition8 = parcel.dataPosition();
                            if (iX8 == 0) {
                                parcelArr = null;
                            } else {
                                int i16 = parcel.readInt();
                                Parcel[] parcelArr2 = new Parcel[i16];
                                for (int i17 = 0; i17 < i16; i17++) {
                                    int i18 = parcel.readInt();
                                    if (i18 != 0) {
                                        int iDataPosition9 = parcel.dataPosition();
                                        Parcel parcelObtain2 = Parcel.obtain();
                                        parcelObtain2.appendFrom(parcel, iDataPosition9, i18);
                                        parcelArr2[i17] = parcelObtain2;
                                        parcel.setDataPosition(iDataPosition9 + i18);
                                    } else {
                                        parcelArr2[i17] = null;
                                    }
                                }
                                parcel.setDataPosition(iDataPosition8 + iX8);
                                parcelArr = parcelArr2;
                            }
                            int length9 = parcelArr.length;
                            for (int i19 = 0; i19 < length9; i19++) {
                                if (i19 > 0) {
                                    sb.append(",");
                                }
                                parcelArr[i19].setDataPosition(0);
                                Preconditions.h(str2);
                                Preconditions.h(field.f29312k);
                                Map map3 = (Map) field.f29312k.f29323c.get(str2);
                                Preconditions.h(map3);
                                i(sb, map3, parcelArr[i19]);
                            }
                            break;
                        default:
                            md.k("Unknown field type out.");
                            return;
                    }
                    sb.append("]");
                } else {
                    switch (i3) {
                        case 0:
                            sb.append(SafeParcelReader.t(i2, parcel));
                            break;
                        case 1:
                            int iX9 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition10 = parcel.dataPosition();
                            if (iX9 == 0) {
                                bigInteger = null;
                            } else {
                                byte[] bArrCreateByteArray2 = parcel.createByteArray();
                                parcel.setDataPosition(iDataPosition10 + iX9);
                                bigInteger = new BigInteger(bArrCreateByteArray2);
                            }
                            sb.append(bigInteger);
                            break;
                        case 2:
                            sb.append(SafeParcelReader.v(i2, parcel));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.q(i2, parcel));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.o(i2, parcel));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.a(i2, parcel));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m(i2, parcel));
                            break;
                        case 7:
                            String strG2 = SafeParcelReader.g(i2, parcel);
                            sb.append("\"");
                            sb.append(JsonUtils.a(strG2));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] bArrC = SafeParcelReader.c(i2, parcel);
                            sb.append("\"");
                            sb.append(bArrC == null ? null : Base64.encodeToString(bArrC, 0));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] bArrC2 = SafeParcelReader.c(i2, parcel);
                            sb.append("\"");
                            sb.append(bArrC2 == null ? null : Base64.encodeToString(bArrC2, 10));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle bundleB2 = SafeParcelReader.b(i2, parcel);
                            Set<String> setKeySet = bundleB2.keySet();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str4 : setKeySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                a.B(sb, "\"", str4, "\":\"");
                                sb.append(JsonUtils.a(bundleB2.getString(str4)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            int iX10 = SafeParcelReader.x(i2, parcel);
                            int iDataPosition11 = parcel.dataPosition();
                            if (iX10 == 0) {
                                parcelObtain = null;
                            } else {
                                parcelObtain = Parcel.obtain();
                                parcelObtain.appendFrom(parcel, iDataPosition11, iX10);
                                parcel.setDataPosition(iDataPosition11 + iX10);
                            }
                            parcelObtain.setDataPosition(0);
                            Preconditions.h(str2);
                            Preconditions.h(field.f29312k);
                            Map map4 = (Map) field.f29312k.f29323c.get(str2);
                            Preconditions.h(map4);
                            i(sb, map4, parcelObtain);
                            break;
                        default:
                            md.k("Unknown field type out");
                            return;
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() != iZ) {
            throw new SafeParcelReader.ParseException(d21.f(iZ, "Overread allowed size end=", new StringBuilder(String.valueOf(iZ).length() + 26)), parcel);
        }
        sb.append('}');
    }

    public static final void j(StringBuilder sb, int i2, Object obj) {
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                break;
            case 7:
                sb.append("\"");
                Preconditions.h(obj);
                sb.append(JsonUtils.a(obj.toString()));
                sb.append("\"");
                break;
            case 8:
                sb.append("\"");
                byte[] bArr = (byte[]) obj;
                sb.append(bArr != null ? Base64.encodeToString(bArr, 0) : null);
                sb.append("\"");
                break;
            case 9:
                sb.append("\"");
                byte[] bArr2 = (byte[]) obj;
                sb.append(bArr2 != null ? Base64.encodeToString(bArr2, 10) : null);
                sb.append("\"");
                break;
            case 10:
                Preconditions.h(obj);
                MapUtils.a(sb, (HashMap) obj);
                break;
            case 11:
                md.n("Method does not accept concrete type.");
                break;
            default:
                md.n(d21.f(i2, "Unknown type = ", new StringBuilder(String.valueOf(i2).length() + 15)));
                break;
        }
    }

    public static final void k(StringBuilder sb, FastJsonResponse.Field field, Object obj) {
        boolean z = field.d;
        int i2 = field.f29306c;
        if (!z) {
            j(sb, i2, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 != 0) {
                sb.append(",");
            }
            j(sb, i2, arrayList.get(i3));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map a() {
        zan zanVar = this.f29315e;
        if (zanVar == null) {
            return null;
        }
        String str = this.f29316f;
        Preconditions.h(str);
        return (Map) zanVar.f29323c.get(str);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object c() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean e() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final Parcel g() {
        int i2 = this.g;
        Parcel parcel = this.f29314c;
        if (i2 != 0) {
            if (i2 != 1) {
                return parcel;
            }
            SafeParcelWriter.r(this.f29317h, parcel);
            this.g = 2;
            return parcel;
        }
        int iQ = SafeParcelWriter.q(20293, parcel);
        this.f29317h = iQ;
        SafeParcelWriter.r(iQ, parcel);
        this.g = 2;
        return parcel;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        zan zanVar = this.f29315e;
        Preconditions.i(zanVar, "Cannot convert to JSON on client side.");
        Parcel parcelG = g();
        parcelG.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        String str = this.f29316f;
        Preconditions.h(str);
        Map map = (Map) zanVar.f29323c.get(str);
        Preconditions.h(map);
        i(sb, map, parcelG);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29313b);
        Parcel parcelG = g();
        if (parcelG != null) {
            int iQ2 = SafeParcelWriter.q(2, parcel);
            parcel.appendFrom(parcelG, 0, parcelG.dataSize());
            SafeParcelWriter.r(iQ2, parcel);
        }
        SafeParcelWriter.j(parcel, 3, this.d != 0 ? this.f29315e : null, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public SafeParcelResponse(int i2, Parcel parcel, zan zanVar) {
        this.f29313b = i2;
        Preconditions.h(parcel);
        this.f29314c = parcel;
        this.d = 2;
        this.f29315e = zanVar;
        this.f29316f = zanVar == null ? null : zanVar.d;
        this.g = 2;
    }
}
