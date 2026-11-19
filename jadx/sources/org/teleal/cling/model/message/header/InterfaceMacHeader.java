package org.teleal.cling.model.message.header;

import defpackage.v40;
import org.teleal.common.util.HexBin;

/* JADX INFO: loaded from: classes5.dex */
public class InterfaceMacHeader extends UpnpHeader<byte[]> {
    public InterfaceMacHeader(String str) {
        b(str);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        byte[] bArr = (byte[]) this.f78433a;
        if (bArr == null) {
            byte[] bArr2 = HexBin.f78644a;
            return null;
        }
        String str = new String(HexBin.b(bArr));
        StringBuilder sb = new StringBuilder();
        int i2 = 1;
        for (char c2 : str.toCharArray()) {
            sb.append(c2);
            if (i2 == 2) {
                sb.append(":");
                i2 = 1;
            } else {
                i2++;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        byte[] bArr = HexBin.f78644a;
        byte[] bArrA = HexBin.a(str.replaceAll(":", "").getBytes());
        this.f78433a = bArrA;
        if (bArrA.length == 6) {
            return;
        }
        v40.m("Invalid MAC address: ".concat(str));
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String toString() {
        return "(" + getClass().getSimpleName() + ") '" + a() + "'";
    }

    public InterfaceMacHeader(byte[] bArr) {
        this.f78433a = bArr;
    }

    public InterfaceMacHeader() {
    }
}
