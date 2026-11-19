package org.spongycastle.math.ec.endo;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ScaleXPointMap;

/* JADX INFO: loaded from: classes5.dex */
public class GLVTypeBEndomorphism implements GLVEndomorphism {
    public GLVTypeBEndomorphism(ECCurve eCCurve, GLVTypeBParameters gLVTypeBParameters) {
        new ScaleXPointMap(eCCurve.g(gLVTypeBParameters.f78045a));
    }
}
