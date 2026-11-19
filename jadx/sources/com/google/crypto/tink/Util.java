package com.google.crypto.tink;

import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.KeysetInfo;
import com.google.crypto.tink.proto.OutputPrefixType;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
abstract class Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f33877a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static KeysetInfo a(Keyset keyset) {
        KeysetInfo.Builder builderK = KeysetInfo.K();
        int iM = keyset.M();
        builderK.u();
        KeysetInfo.H((KeysetInfo) builderK.f34188c, iM);
        for (Keyset.Key key : keyset.L()) {
            KeysetInfo.KeyInfo.Builder builderM = KeysetInfo.KeyInfo.M();
            String strM = key.L().M();
            builderM.u();
            KeysetInfo.KeyInfo.H((KeysetInfo.KeyInfo) builderM.f34188c, strM);
            KeyStatusType keyStatusTypeO = key.O();
            builderM.u();
            KeysetInfo.KeyInfo.J((KeysetInfo.KeyInfo) builderM.f34188c, keyStatusTypeO);
            OutputPrefixType outputPrefixTypeN = key.N();
            builderM.u();
            KeysetInfo.KeyInfo.I((KeysetInfo.KeyInfo) builderM.f34188c, outputPrefixTypeN);
            int iM2 = key.M();
            builderM.u();
            KeysetInfo.KeyInfo.K((KeysetInfo.KeyInfo) builderM.f34188c, iM2);
            KeysetInfo.KeyInfo keyInfo = (KeysetInfo.KeyInfo) builderM.build();
            builderK.u();
            KeysetInfo.I((KeysetInfo) builderK.f34188c, keyInfo);
        }
        return (KeysetInfo) builderK.build();
    }
}
