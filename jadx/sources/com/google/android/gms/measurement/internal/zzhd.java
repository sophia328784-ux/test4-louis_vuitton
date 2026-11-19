package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.batch.android.b.b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaif;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f31795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f31796c;
    public final /* synthetic */ zzhh d;

    public zzhd(zzhh zzhhVar, String str, Bundle bundle) {
        Objects.requireNonNull(zzhhVar);
        this.d = zzhhVar;
        Preconditions.e(str);
        this.f31794a = str;
        this.f31795b = new Bundle();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00f6 A[Catch: NumberFormatException | JSONException -> 0x0103, NumberFormatException | JSONException -> 0x0103, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0103, blocks: (B:10:0x0029, B:24:0x005d, B:24:0x005d, B:26:0x006a, B:26:0x006a, B:28:0x007c, B:28:0x007c, B:29:0x0085, B:29:0x0085, B:51:0x00f6, B:51:0x00f6, B:33:0x0092, B:33:0x0092, B:35:0x009f, B:35:0x009f, B:37:0x00b1, B:37:0x00b1, B:38:0x00ba, B:38:0x00ba, B:42:0x00c6, B:42:0x00c6, B:46:0x00d6, B:46:0x00d6, B:50:0x00ea, B:50:0x00ea), top: B:63:0x0029, outer: #1 }] */
    public final Bundle a() {
        if (this.f31796c == null) {
            zzhh zzhhVar = this.d;
            SharedPreferences sharedPreferencesK = zzhhVar.k();
            zzic zzicVar = zzhhVar.f31850a;
            String string = sharedPreferencesK.getString(this.f31794a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i2);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int iHashCode = string3.hashCode();
                            if (iHashCode != 100) {
                                if (iHashCode != 108) {
                                    if (iHashCode != 115) {
                                        if (iHashCode != 3352) {
                                            if (iHashCode == 3445 && string3.equals("la")) {
                                                zzaif.a();
                                                if (zzicVar.d.r(null, zzfy.P0)) {
                                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                                    int length = jSONArray2.length();
                                                    long[] jArr = new long[length];
                                                    for (int i3 = 0; i3 < length; i3++) {
                                                        jArr[i3] = jSONArray2.optLong(i3);
                                                    }
                                                    bundle.putLongArray(string2, jArr);
                                                }
                                            } else {
                                                zzgu zzguVar = zzicVar.f31842f;
                                                zzic.m(zzguVar);
                                                zzguVar.f31769f.b(string3, "Unrecognized persisted bundle type. Type");
                                            }
                                        } else if (string3.equals("ia")) {
                                            zzaif.a();
                                            if (zzicVar.d.r(null, zzfy.P0)) {
                                                JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                                int length2 = jSONArray3.length();
                                                int[] iArr = new int[length2];
                                                for (int i4 = 0; i4 < length2; i4++) {
                                                    iArr[i4] = jSONArray3.optInt(i4);
                                                }
                                                bundle.putIntArray(string2, iArr);
                                            }
                                        } else {
                                            zzgu zzguVar2 = zzicVar.f31842f;
                                            zzic.m(zzguVar2);
                                            zzguVar2.f31769f.b(string3, "Unrecognized persisted bundle type. Type");
                                        }
                                    } else if (string3.equals(NBSSpanMetricUnit.Second)) {
                                        bundle.putString(string2, jSONObject.getString("v"));
                                    } else {
                                        zzgu zzguVar3 = zzicVar.f31842f;
                                        zzic.m(zzguVar3);
                                        zzguVar3.f31769f.b(string3, "Unrecognized persisted bundle type. Type");
                                    }
                                } else if (string3.equals(b.d)) {
                                    bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                                } else {
                                    zzgu zzguVar4 = zzicVar.f31842f;
                                    zzic.m(zzguVar4);
                                    zzguVar4.f31769f.b(string3, "Unrecognized persisted bundle type. Type");
                                }
                            } else if (string3.equals(NBSSpanMetricUnit.Day)) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else {
                                zzgu zzguVar5 = zzicVar.f31842f;
                                zzic.m(zzguVar5);
                                zzguVar5.f31769f.b(string3, "Unrecognized persisted bundle type. Type");
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            zzgu zzguVar6 = zzicVar.f31842f;
                            zzic.m(zzguVar6);
                            zzguVar6.f31769f.a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f31796c = bundle;
                } catch (JSONException unused2) {
                    zzgu zzguVar7 = zzicVar.f31842f;
                    zzic.m(zzguVar7);
                    zzguVar7.f31769f.a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f31796c == null) {
                this.f31796c = this.f31795b;
            }
        }
        Bundle bundle2 = this.f31796c;
        Preconditions.h(bundle2);
        return new Bundle(bundle2);
    }

    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        zzhh zzhhVar = this.d;
        SharedPreferences sharedPreferencesK = zzhhVar.k();
        zzic zzicVar = zzhhVar.f31850a;
        SharedPreferences.Editor editorEdit = sharedPreferencesK.edit();
        int size = bundle2.size();
        String str = this.f31794a;
        if (size == 0) {
            editorEdit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        zzaif.a();
                        if (zzicVar.d.r(null, zzfy.P0)) {
                            if (obj instanceof String) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", NBSSpanMetricUnit.Second);
                            } else if (obj instanceof Long) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", b.d);
                            } else if (obj instanceof int[]) {
                                jSONObject.put("v", Arrays.toString((int[]) obj));
                                jSONObject.put("t", "ia");
                            } else if (obj instanceof long[]) {
                                jSONObject.put("v", Arrays.toString((long[]) obj));
                                jSONObject.put("t", "la");
                            } else if (obj instanceof Double) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", NBSSpanMetricUnit.Day);
                            } else {
                                zzgu zzguVar = zzicVar.f31842f;
                                zzic.m(zzguVar);
                                zzguVar.f31769f.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                            }
                            jSONArray.put(jSONObject);
                        } else {
                            jSONObject.put("v", obj.toString());
                            if (obj instanceof String) {
                                jSONObject.put("t", NBSSpanMetricUnit.Second);
                            } else if (obj instanceof Long) {
                                jSONObject.put("t", b.d);
                            } else if (obj instanceof Double) {
                                jSONObject.put("t", NBSSpanMetricUnit.Day);
                            } else {
                                zzgu zzguVar2 = zzicVar.f31842f;
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                            }
                            jSONArray.put(jSONObject);
                        }
                    } catch (JSONException e2) {
                        zzgu zzguVar3 = zzicVar.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.f31769f.b(e2, "Cannot serialize bundle value to SharedPreferences");
                    }
                }
            }
            editorEdit.putString(str, jSONArray.toString());
        }
        editorEdit.apply();
        this.f31796c = bundle2;
    }
}
