package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.batch.android.s.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.ArrayList;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class LottieCompositionMoshiParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22251a = JsonReader.Options.a("w", NBSSpanMetricUnit.Hour, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f22252b = JsonReader.Options.a(b.a.f24015b, "layers", "w", NBSSpanMetricUnit.Hour, "p", "u");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JsonReader.Options f22253c = JsonReader.Options.a("list");
    public static final JsonReader.Options d = JsonReader.Options.a("cm", "tm", "dr");

    public static LottieComposition a(JsonReader jsonReader) {
        float f2;
        float f3;
        SparseArrayCompat sparseArrayCompat;
        float f4;
        float f5;
        float fC = Utils.c();
        LongSparseArray longSparseArray = new LongSparseArray();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat sparseArrayCompat2 = new SparseArrayCompat();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.j();
        float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int iQ = 0;
        int iQ2 = 0;
        float fQ2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        while (jsonReader.o()) {
            fC = fC;
            switch (jsonReader.z(f22251a)) {
                case 0:
                    iQ = (int) jsonReader.q();
                    sparseArrayCompat2 = sparseArrayCompat2;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 1:
                    iQ2 = (int) jsonReader.q();
                    sparseArrayCompat2 = sparseArrayCompat2;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 2:
                    fQ2 = (float) jsonReader.q();
                    sparseArrayCompat2 = sparseArrayCompat2;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 3:
                    fQ3 = ((float) jsonReader.q()) - 0.01f;
                    sparseArrayCompat2 = sparseArrayCompat2;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 4:
                    sparseArrayCompat2 = sparseArrayCompat2;
                    arrayList2 = arrayList2;
                    fQ = (float) jsonReader.q();
                    fC = fC;
                    break;
                case 5:
                    arrayList2 = arrayList2;
                    fQ = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    sparseArrayCompat = sparseArrayCompat2;
                    String[] strArrSplit = jsonReader.t().split("\\.");
                    int i2 = Integer.parseInt(strArrSplit[0]);
                    int i3 = Integer.parseInt(strArrSplit[1]);
                    int i4 = Integer.parseInt(strArrSplit[2]);
                    if (i2 < 4 || (i2 <= 4 && (i3 < 4 || (i3 <= 4 && i4 < 0)))) {
                        lottieComposition.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 6:
                    arrayList2 = arrayList2;
                    fQ = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    sparseArrayCompat = sparseArrayCompat2;
                    jsonReader.h();
                    int i5 = 0;
                    while (jsonReader.o()) {
                        Layer layerA = LayerParser.a(jsonReader, lottieComposition);
                        if (layerA.f22199e == Layer.LayerType.IMAGE) {
                            i5++;
                        }
                        arrayList.add(layerA);
                        longSparseArray.e(layerA.d, layerA);
                        if (i5 > 4) {
                            Logger.a("You have " + i5 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                    }
                    jsonReader.k();
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 7:
                    arrayList2 = arrayList2;
                    fQ = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    sparseArrayCompat = sparseArrayCompat2;
                    jsonReader.h();
                    while (jsonReader.o()) {
                        ArrayList arrayList3 = new ArrayList();
                        LongSparseArray longSparseArray2 = new LongSparseArray();
                        jsonReader.j();
                        String strT = null;
                        String strT2 = null;
                        String strT3 = null;
                        int iR = 0;
                        int iR2 = 0;
                        while (jsonReader.o()) {
                            int iZ = jsonReader.z(f22252b);
                            if (iZ == 0) {
                                strT = jsonReader.t();
                            } else if (iZ == 1) {
                                jsonReader.h();
                                while (jsonReader.o()) {
                                    Layer layerA2 = LayerParser.a(jsonReader, lottieComposition);
                                    longSparseArray2.e(layerA2.d, layerA2);
                                    arrayList3.add(layerA2);
                                }
                                jsonReader.k();
                            } else if (iZ == 2) {
                                iR = jsonReader.r();
                            } else if (iZ == 3) {
                                iR2 = jsonReader.r();
                            } else if (iZ == 4) {
                                strT2 = jsonReader.t();
                            } else if (iZ != 5) {
                                jsonReader.B();
                                jsonReader.C();
                            } else {
                                strT3 = jsonReader.t();
                            }
                        }
                        jsonReader.m();
                        if (strT2 != null) {
                            LottieImageAsset lottieImageAsset = new LottieImageAsset(iR, iR2, strT, strT2, strT3);
                            map2.put(lottieImageAsset.f21769c, lottieImageAsset);
                        } else {
                            map.put(strT, arrayList3);
                        }
                    }
                    jsonReader.k();
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 8:
                    fQ = fQ;
                    f2 = fQ2;
                    float f6 = fQ3;
                    jsonReader.j();
                    while (jsonReader.o()) {
                        if (jsonReader.z(f22253c) != 0) {
                            jsonReader.B();
                            jsonReader.C();
                        } else {
                            jsonReader.h();
                            while (jsonReader.o()) {
                                JsonReader.Options options = FontParser.f22233a;
                                jsonReader.j();
                                String strT4 = null;
                                String strT5 = null;
                                String strT6 = null;
                                float fQ4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                while (jsonReader.o()) {
                                    f6 = f6;
                                    int iZ2 = jsonReader.z(FontParser.f22233a);
                                    if (iZ2 != 0) {
                                        ArrayList arrayList4 = arrayList2;
                                        if (iZ2 == 1) {
                                            strT5 = jsonReader.t();
                                        } else if (iZ2 == 2) {
                                            strT6 = jsonReader.t();
                                        } else if (iZ2 != 3) {
                                            jsonReader.B();
                                            jsonReader.C();
                                        } else {
                                            fQ4 = (float) jsonReader.q();
                                            sparseArrayCompat2 = sparseArrayCompat2;
                                        }
                                        arrayList2 = arrayList4;
                                    } else {
                                        strT4 = jsonReader.t();
                                    }
                                }
                                ArrayList arrayList5 = arrayList2;
                                jsonReader.m();
                                Font font = new Font(strT4, strT5, strT6, fQ4);
                                map3.put(font.f22073b, font);
                                f6 = f6;
                                arrayList2 = arrayList5;
                            }
                            jsonReader.k();
                            f6 = f6;
                        }
                    }
                    arrayList2 = arrayList2;
                    f3 = f6;
                    sparseArrayCompat = sparseArrayCompat2;
                    jsonReader.m();
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 9:
                    fQ = fQ;
                    f2 = fQ2;
                    f4 = fQ3;
                    jsonReader.h();
                    while (jsonReader.o()) {
                        JsonReader.Options options2 = FontCharacterParser.f22231a;
                        ArrayList arrayList6 = new ArrayList();
                        jsonReader.j();
                        double dQ = 0.0d;
                        double dQ2 = 0.0d;
                        String strT7 = null;
                        String strT8 = null;
                        char cCharAt = 0;
                        while (jsonReader.o()) {
                            int iZ3 = jsonReader.z(FontCharacterParser.f22231a);
                            if (iZ3 == 0) {
                                cCharAt = jsonReader.t().charAt(0);
                            } else if (iZ3 == 1) {
                                dQ = jsonReader.q();
                            } else if (iZ3 == 2) {
                                dQ2 = jsonReader.q();
                            } else if (iZ3 == 3) {
                                strT7 = jsonReader.t();
                            } else if (iZ3 == 4) {
                                strT8 = jsonReader.t();
                            } else if (iZ3 != 5) {
                                jsonReader.B();
                                jsonReader.C();
                            } else {
                                jsonReader.j();
                                while (jsonReader.o()) {
                                    if (jsonReader.z(FontCharacterParser.f22232b) != 0) {
                                        jsonReader.B();
                                        jsonReader.C();
                                    } else {
                                        jsonReader.h();
                                        while (jsonReader.o()) {
                                            arrayList6.add((ShapeGroup) ContentModelParser.a(jsonReader, lottieComposition));
                                        }
                                        jsonReader.k();
                                    }
                                }
                                jsonReader.m();
                            }
                        }
                        jsonReader.m();
                        FontCharacter fontCharacter = new FontCharacter(arrayList6, cCharAt, dQ, dQ2, strT7, strT8);
                        sparseArrayCompat2.d(fontCharacter.hashCode(), fontCharacter);
                    }
                    jsonReader.k();
                    f3 = f4;
                    sparseArrayCompat = sparseArrayCompat2;
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                case 10:
                    jsonReader.h();
                    while (jsonReader.o()) {
                        jsonReader.j();
                        String strT9 = null;
                        float fQ5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        while (jsonReader.o()) {
                            int iZ4 = jsonReader.z(d);
                            if (iZ4 != 0) {
                                f5 = fQ;
                                if (iZ4 == 1) {
                                    fQ3 = fQ3;
                                    fQ5 = (float) jsonReader.q();
                                } else if (iZ4 != 2) {
                                    jsonReader.B();
                                    jsonReader.C();
                                } else {
                                    fQ3 = fQ3;
                                    fQ6 = (float) jsonReader.q();
                                }
                                fQ = f5;
                                fQ2 = fQ2;
                            } else {
                                f5 = fQ;
                                strT9 = jsonReader.t();
                            }
                            fQ = f5;
                        }
                        jsonReader.m();
                        arrayList2.add(new Marker(strT9, fQ5, fQ6));
                        fQ3 = fQ3;
                        fQ2 = fQ2;
                        fQ = fQ;
                    }
                    fQ = fQ;
                    f2 = fQ2;
                    f4 = fQ3;
                    jsonReader.k();
                    f3 = f4;
                    sparseArrayCompat = sparseArrayCompat2;
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
                default:
                    jsonReader.B();
                    jsonReader.C();
                    fQ = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    sparseArrayCompat = sparseArrayCompat2;
                    sparseArrayCompat2 = sparseArrayCompat;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = fQ;
                    arrayList2 = arrayList2;
                    break;
            }
        }
        float f7 = fC;
        ArrayList arrayList7 = arrayList2;
        Rect rect = new Rect(0, 0, (int) (iQ * f7), (int) (iQ2 * f7));
        float fC2 = Utils.c();
        lottieComposition.f21754k = rect;
        lottieComposition.l = fQ2;
        lottieComposition.m = fQ3;
        lottieComposition.n = fQ;
        lottieComposition.f21753j = arrayList;
        lottieComposition.f21752i = longSparseArray;
        lottieComposition.f21748c = map;
        lottieComposition.d = map2;
        lottieComposition.f21749e = fC2;
        lottieComposition.f21751h = sparseArrayCompat2;
        lottieComposition.f21750f = map3;
        lottieComposition.g = arrayList7;
        return lottieComposition;
    }
}
