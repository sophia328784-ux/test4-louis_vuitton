package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.networkbench.agent.impl.NBSSpanMetricUnit;

/* JADX INFO: loaded from: classes.dex */
public class DocumentDataParser implements ValueParser<DocumentData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DocumentDataParser f22219a = new DocumentDataParser();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f22220b = JsonReader.Options.a("t", "f", NBSSpanMetricUnit.Second, "j", "tr", "lh", "ls", "fc", "sc", "sw", "of", "ps", "sz");

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object a(JsonReader jsonReader, float f2) {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.j();
        DocumentData.Justification justification2 = justification;
        String strT = null;
        String strT2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        int iR = 0;
        int iA = 0;
        int iA2 = 0;
        boolean zP = true;
        while (jsonReader.o()) {
            switch (jsonReader.z(f22220b)) {
                case 0:
                    strT = jsonReader.t();
                    break;
                case 1:
                    strT2 = jsonReader.t();
                    break;
                case 2:
                    fQ = (float) jsonReader.q();
                    break;
                case 3:
                    int iR2 = jsonReader.r();
                    justification2 = DocumentData.Justification.CENTER;
                    if (iR2 <= justification2.ordinal() && iR2 >= 0) {
                        justification2 = DocumentData.Justification.values()[iR2];
                    }
                    break;
                case 4:
                    iR = jsonReader.r();
                    break;
                case 5:
                    fQ2 = (float) jsonReader.q();
                    break;
                case 6:
                    fQ3 = (float) jsonReader.q();
                    break;
                case 7:
                    iA = JsonUtils.a(jsonReader);
                    break;
                case 8:
                    iA2 = JsonUtils.a(jsonReader);
                    break;
                case 9:
                    fQ4 = (float) jsonReader.q();
                    break;
                case 10:
                    zP = jsonReader.p();
                    break;
                case 11:
                    jsonReader.h();
                    PointF pointF3 = new PointF(((float) jsonReader.q()) * f2, ((float) jsonReader.q()) * f2);
                    jsonReader.k();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.h();
                    PointF pointF4 = new PointF(((float) jsonReader.q()) * f2, ((float) jsonReader.q()) * f2);
                    jsonReader.k();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.B();
                    jsonReader.C();
                    break;
            }
        }
        jsonReader.m();
        return new DocumentData(strT, strT2, fQ, justification2, iR, fQ2, fQ3, iA, iA2, fQ4, zP, pointF, pointF2);
    }
}
